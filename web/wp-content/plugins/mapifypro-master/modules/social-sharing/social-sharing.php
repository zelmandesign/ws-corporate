<?php

use \Mpfy\Carbon\Carbon_Field;

// Add relevant admin fields
function mpfy_ss_mpfy_plugin_settings($custom_fields) {

	$custom_fields['mpfy_load_sharethis'] = Carbon_Field::factory( 'select', 'mpfy_load_sharethis', __( 'Load ShareThis', 'mpfy' ) )
		->add_options(array(
			'y'=>'Yes',
			'n'=>'No',
		))
		->help_text(MAPIFY_PLUGIN_NAME . ' uses ShareThis for map location sharing. If you are already using ShareThis you may wish to disable this in order to avoid loading it twice.');

	return $custom_fields;
}
add_filter('mpfy_plugin_settings', 'mpfy_ss_mpfy_plugin_settings');

function mpfy_ss_map_location_custom_fields($custom_fields) {

	$custom_fields['mpfy_load_sharethis'] = Carbon_Field::factory( 'set', 'map_location_share', __( 'Share Services', 'mpfy' ) )
		->add_options(array(
			'facebook'=>'Facebook',
			'pinterest'=>'Pinterest',
			'twitter'=>'Twitter',
			'googleplus'=>'Google+',
			'email'=>'Email',
		));

	return $custom_fields;
}
add_filter('mpfy_map_location_custom_fields', 'mpfy_ss_map_location_custom_fields');


// Enqueue front-end assets
function mpfy_ss_enqueue_assets() {
	if (!defined('MPFY_LOAD_ASSETS')) {
		return;
	}
	
	// Load popup styles
	wp_enqueue_style('mpfy-social-sharing', plugins_url('modules/social-sharing/style.css', MAPIFY_PLUGIN_FILE), array(), '1.0.0');

	// Load popup behaviors
	wp_enqueue_script('mpfy-social-sharing', plugins_url('modules/social-sharing/functions.js', MAPIFY_PLUGIN_FILE), array('jquery'), '1.0.0', true);

	// load sharethis
	$load = mpfy_carbon_get_theme_option('mpfy_load_sharethis');
	$load = $load ? $load : 'y';
	if ($load === 'y') {
		?>
		<?php if (is_ssl()) : ?>
			<script type="text/javascript" src="//ws.sharethis.com/button/buttons.js"></script>
		<?php else : ?>
			<script type="text/javascript" src="//w.sharethis.com/button/buttons.js"></script>
		<?php endif; ?>
		<?php
	}
}
add_action('wp_footer', 'mpfy_ss_enqueue_assets');


// Add sharing services to Mapify popup
function mpfy_ss_popup_buttons($post_id) {
	include_once('blocks/social-buttons.php');
}
add_action('mpfy_popup_before_content_layout', 'mpfy_ss_popup_buttons');
