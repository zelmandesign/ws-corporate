<?php

/*

@description   Title for each collection within loop

@version       2.0.0
@since         1.0.49
@path          templates/components/collections/loop/item-title.php

@docs          https://wpshop.io/docs/templates/collections/loop/item-title

*/

defined('ABSPATH') ?: die;

?>

<h2
  itemprop="category"
  class="wps-collections-title <?= apply_filters( 'wps_collections_title_class', '' ); ?>">
  <?php esc_html_e($data->collection->title, WP_SHOPIFY_PLUGIN_TEXT_DOMAIN); ?>
</h2>
