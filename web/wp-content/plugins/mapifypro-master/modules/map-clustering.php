<?php

use \Mpfy\Carbon\Carbon_Field;

function mpfy_mc_enqueue_assets() {
	if (!defined('MPFY_LOAD_ASSETS')) {
		return;
	}

	wp_enqueue_script('markerclusterer', plugins_url('assets/js/markerclusterer.js', MAPIFY_PLUGIN_FILE), array('gmaps'), '2.1.2', true);
}
add_action('wp_footer', 'mpfy_mc_enqueue_assets');

add_filter('mpfy_map_custom_fields_basic', 'mpfy_mc_map_custom_fields');
function mpfy_mc_map_custom_fields($custom_fields) {

	$custom_fields = mpfy_array_push_key($custom_fields, 'map_enable_zoom_manual', array(
		'map_enable_clustering'=>Carbon_Field::factory( 'select', 'map_enable_clustering', __( 'Enable Clustering', 'mpfy' ) )
			->add_options(array( 'no' => 'No', 'yes' => 'Yes' )),
	));

	return $custom_fields;
}

function mpfy_mc_clustering_enabled($value, $map_id) {
	$map = new Mpfy_Map($map_id);
	$value = $map->get_clustering_enabled();
	return $value;
}
add_filter('mpfy_clustering_enabled', 'mpfy_mc_clustering_enabled', 10, 2);
