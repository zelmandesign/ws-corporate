<?php

namespace WP_Shopify\API\Items;

use WP_Shopify\Messages;
use WP_Shopify\Utils;
use WP_Shopify\Utils\Data as Utils_Data;
use WP_Shopify\CPT;

if (!defined('ABSPATH')) {
   exit();
}

class Products extends \WP_Shopify\API
{
   public function __construct(
      $DB_Settings_General,
      $DB_Settings_Syncing,
      $DB_Tags,
      $DB_Products,
      $Shopify_API,
      $Processing_Products,
      $Processing_Variants,
      $Processing_Posts_Products,
      $Processing_Tags,
      $Processing_Options,
      $Processing_Images
   ) {
      $this->DB_Settings_General = $DB_Settings_General;
      $this->DB_Settings_Syncing = $DB_Settings_Syncing;
      $this->DB_Tags = $DB_Tags;
      $this->DB_Products = $DB_Products;

      $this->Shopify_API = $Shopify_API;

      $this->Processing_Products = $Processing_Products;
      $this->Processing_Variants = $Processing_Variants;
      $this->Processing_Posts_Products = $Processing_Posts_Products;
      $this->Processing_Tags = $Processing_Tags;
      $this->Processing_Options = $Processing_Options;
      $this->Processing_Images = $Processing_Images;
      $this->Processing_Images = $Processing_Images;
   }

   /*

	Responsible for getting the total product count per an array of collection ids

	*/
   public function get_product_listings_count_by_collection_ids()
   {
      $products_count = [];
      $collection_ids = $this->DB_Settings_General->get_sync_by_collections_ids();

      foreach ($collection_ids as $collection_id) {
         $response = $this->Shopify_API->get_product_listings_count_by_collection_id($collection_id);
         $response = $this->Shopify_API->sanitize_response($response);

         if (is_wp_error($response)) {
            return $response;
         }

         if (Utils::has($response, 'count')) {
            $products_count[] = $response->count;
         }
      }

      return Utils::convert_array_to_object([
         'count' => array_sum($products_count)
      ]);
   }

   /*

	Get Products Count

	*/
   public function get_products_count($request)
   {
      /*

		If user is syncing by collections, then instead of getting the total
		number of products we need to get the total number of products
		assigned to all selected collections.

		I don't think we need anymore since implementing the recursive fetch

		*/
      if ($this->DB_Settings_General->is_syncing_by_collection()) {
         return $this->handle_response([
            'response' => $this->get_product_listings_count_by_collection_ids(),
            'access_prop' => 'count',
            'return_key' => 'products',
            'warning_message' => 'products_count_not_found'
         ]);
      }

      $response = $this->Shopify_API->sanitize_response($this->Shopify_API->get_product_listings_count());


      return $this->handle_response([
         'response' => $response,
         'access_prop' => 'count',
         'return_key' => 'products',
         'warning_message' => 'products_count_not_found'
      ]);
   }

   /*

	Responsible for getting an array of product ids from a single collection id

	Using Recursion

	*/
   public function get_product_ids_by_collection_id($collection_id, $current_page = 1, $prev_count = WP_SHOPIFY_MAX_IDS_PER_REQUEST, $combined_product_ids = [])
   {
      // If everything was fetched, return the main list
      if ($this->Shopify_API->no_items_left($prev_count)) {
         return $combined_product_ids;
      }

      $result = $this->Shopify_API->get_products_listing_product_ids_by_collection_id_per_page($collection_id, $current_page);

      $result = $this->Shopify_API->sanitize_response($result);

      if (is_wp_error($result)) {
         return $result;
      }

      $new_product_ids = $result->product_ids;
      $new_product_ids_count = count($new_product_ids);
      $new_current_page = $current_page + 1;

      // Save the result in memory
      $combined_product_ids = array_merge($combined_product_ids, $new_product_ids);

      return $this->get_product_ids_by_collection_id($collection_id, $new_current_page, $new_product_ids_count, $combined_product_ids);
   }

   /*

	Responsible for getting an array of product ids from a list of collection ids

	*/
   public function get_product_ids_by_collection_ids()
   {
      $collection_ids = maybe_unserialize($this->DB_Settings_General->sync_by_collections());
      $all_product_ids = [];

      foreach ($collection_ids as $collection_id) {
         $collection_product_ids = $this->get_product_ids_by_collection_id($collection_id);

         if (is_wp_error($collection_product_ids)) {
            return $collection_product_ids;
         }

         $all_product_ids = array_merge($all_product_ids, $collection_product_ids);
      }

      return $all_product_ids;
   }

   /*

	Getting published product ids

	Using Recursion

	*/
   public function get_product_ids($current_page = 1, $prev_count = WP_SHOPIFY_MAX_IDS_PER_REQUEST, $combined_product_ids = [])
   {
      // If everything was fetched, return the main list
      if ($this->Shopify_API->no_items_left($prev_count)) {
         return $combined_product_ids;
      }

      $result = $this->Shopify_API->get_products_listing_product_ids_per_page($current_page);
      $result = $this->Shopify_API->sanitize_response($result);

      if (is_wp_error($result)) {
         return $result;
      }

      $new_product_ids = $result->product_ids;
      $new_product_ids_count = count($new_product_ids);
      $new_current_page = $current_page + 1;

      // Save the result in memory
      $combined_product_ids = array_merge($combined_product_ids, $new_product_ids);

      return $this->get_product_ids($new_current_page, $new_product_ids_count, $combined_product_ids);
   }

   public function get_published_product_ids()
   {
      // If syncing by collections ...
      if ($this->DB_Settings_General->is_syncing_by_collection()) {
         $response = $this->get_product_ids_by_collection_ids();
      } else {
         $response = $this->get_product_ids();
      }

      $this->DB_Settings_Syncing->set_published_product_ids($response);

      return $this->handle_response([
         'response' => $response,
         'warning_message' => 'missing_product_ids'
      ]);
   }

   /*

	Gets published product ids as a URL param string

	*/
   public function get_published_product_ids_as_param($current_page)
   {
      return $this->Shopify_API->create_param_ids($this->DB_Settings_Syncing->get_published_product_ids(), $this->DB_Settings_General->get_items_per_request(), $current_page);
   }

   /*

	Gets products by page

	*/
   public function get_products_per_page($current_page)
   {
      return $this->Shopify_API->sanitize_response($this->Shopify_API->get_products_per_page($this->get_published_product_ids_as_param($current_page), $this->DB_Settings_General->get_items_per_request()));
   }

   public function get_all_products_tags()
   {
      return [
         'tags' => $this->DB_Tags->get_unique_tags()
      ];
   }

   public function get_all_products_vendors()
   {
      return [
         'vendors' => $this->DB_Products->get_unique_vendors()
      ];
   }

   public function get_all_products_types()
   {
      return [
         'types' => $this->DB_Products->get_unique_types()
      ];
   }

   public function meta_info()
   {
      return [
         'post_type' => WP_SHOPIFY_PRODUCTS_POST_TYPE_SLUG,
         'increment_name' => 'products'
      ];
   }

   public function get_process_fns()
   {
      if ($this->DB_Settings_General->is_lite_sync()) {
         return [$this->Processing_Products, $this->Processing_Posts_Products, $this->Processing_Tags];
      }

      return [$this->Processing_Products, $this->Processing_Variants, $this->Processing_Posts_Products, $this->Processing_Tags, $this->Processing_Options, $this->Processing_Images];
   }

   /*

	Get Bulk Products

	Runs for each "page" of the Shopify API

	Doesn't save error to DB -- returns to client instead

	*/
   public function get_products($request)
   {

      $page = $request->get_param('page');

      if (!is_integer($page)) {

         return $this->handle_response([
            'response' => Utils::wp_error([
               'message_lookup' 	=> 'Page is not of type integer',
               'call_method' 		=> __METHOD__,
               'call_line' 		=> __LINE__
            ])
         ]);
      }

      $page = sanitize_text_field($page);

      $param_limit = $this->DB_Settings_General->get_items_per_request();
      $response = $this->get_products_per_page($page);

      if (is_wp_error($response)) {
         
         return $this->handle_response([
            'response' => Utils::wp_error([
               'message_lookup' 	=> $response->get_error_message(),
               'call_method' 		=> __METHOD__,
               'call_line' 			=> __LINE__
            ])
         ]);
      }

      $response->products = CPT::add_props_to_items($response->products, $this->meta_info());

      return $this->handle_response([
         'response' => $response,
         'access_prop' => 'products',
         'return_key' => 'products',
         'warning_message' => 'missing_products_for_page',
         'meta' => $this->meta_info(),
         'process_fns' => $this->get_process_fns()
      ]);
   }

   /*

	Register route: cart_icon_color

	*/
   public function register_route_products_ids()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products/ids', [
         [
            'methods' => \WP_REST_Server::CREATABLE,
            'callback' => [$this, 'get_published_product_ids'],
            'permission_callback' => [$this, 'pre_process']
         ]
      ]);
   }

   /*

	Register route: cart_icon_color

	*/
   public function register_route_products_count()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products/count', [
         [
            'methods' => \WP_REST_Server::CREATABLE,
            'callback' => [$this, 'get_products_count'],
            'permission_callback' => [$this, 'pre_process']
         ]
      ]);
   }

   /*

	Register route: cart_icon_color

	*/
   public function register_route_products()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products', [
         [
            'methods' => \WP_REST_Server::CREATABLE,
            'callback' => [$this, 'get_products'],
            'permission_callback' => [$this, 'pre_process']
         ]
      ]);
   }

   /*

	Register route: cart_icon_color

	*/
   public function register_route_products_all_tags()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products/tags', [
         [
            'methods' => \WP_REST_Server::READABLE,
            'callback' => [$this, 'get_all_products_tags']
         ]
      ]);
   }

   /*

   Register route: cart_icon_color

   */
   public function register_route_products_all_vendors()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products/vendors', [
         [
            'methods' => \WP_REST_Server::READABLE,
            'callback' => [$this, 'get_all_products_vendors']
         ]
      ]);
   }

   /*

   Register route: cart_icon_color

   */
   public function register_route_products_all_types()
   {
      return register_rest_route(WP_SHOPIFY_SHOPIFY_API_NAMESPACE, '/products/types', [
         [
            'methods' => \WP_REST_Server::READABLE,
            'callback' => [$this, 'get_all_products_types']
         ]
      ]);
   }

   /*

	Hooks

	*/
   public function hooks()
   {
      add_action('rest_api_init', [$this, 'register_route_products']);
      add_action('rest_api_init', [$this, 'register_route_products_ids']);
      add_action('rest_api_init', [$this, 'register_route_products_count']);
      add_action('rest_api_init', [$this, 'register_route_products_all_tags']);
      add_action('rest_api_init', [$this, 'register_route_products_all_vendors']);
      add_action('rest_api_init', [$this, 'register_route_products_all_types']);
   }

   /*

  Init

  */
   public function init()
   {
      $this->hooks();
   }
}
