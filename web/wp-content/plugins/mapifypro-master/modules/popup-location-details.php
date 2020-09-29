<?php

use \Mpfy\Carbon\Carbon_Field;

add_filter( 'mpfy_map_custom_fields_basic', 'mpfy_pld_map_custom_fields', 9 );
function mpfy_pld_map_custom_fields( $custom_fields ) {

	$custom_fields = mpfy_array_push_key( $custom_fields, 'map_enable_zoom_manual', array(
		'map_label_location_details'=>Carbon_Field::factory( 'text', 'map_label_location_details', __( 'Location Details', 'mpfy' ) )
			->set_default_value( 'Location Details' )
			->help_text( '<span data-mpfy-label-group="basic"></span>' ),
	));

	return $custom_fields;
}

add_filter( 'mpfy_map_location_custom_fields', 'mpfy_pld_map_location_custom_fields' );
function mpfy_pld_map_location_custom_fields( $custom_fields ) {

	$custom_fields = mpfy_array_push_key( $custom_fields, 'map_location_tooltip_close', array(
		'map_location_popup_location_information'=>Carbon_Field::factory( 'select', 'map_location_popup_location_information', __( 'Include Location Information', 'mpfy' ) )
			->add_options( array( 'yes' => 'Yes', 'no' => 'No' ) )
			->help_text( 'Shows or hides the location information in the location popup.' ),
	) );

	$custom_fields = mpfy_array_push_key( $custom_fields, 'map_location_separator_4', array(
		'map_location_phone'=>Carbon_Field::factory( 'text', 'map_location_phone', __( 'Phone', 'mpfy' ) ),
	) );

	$custom_fields = mpfy_array_push_key( $custom_fields, 'position_after_address', array(
		'map_location_links'=>Carbon_Field::factory( 'complex', 'map_location_links', __( 'Links', 'mpfy' ) )
			->add_fields( array(
				Carbon_Field::factory( 'text', 'url', __( 'URL', 'mpfy' ) ),
				Carbon_Field::factory( 'text', 'text', __( 'Text', 'mpfy' ) ),
				Carbon_Field::factory( 'select', 'target', __( 'Open in New Window', 'mpfy' ) )
					->add_options( array(
						'_top'=>'No',
						'_blank'=>'Yes',
					) ),
			) ),
	) );

	return $custom_fields;
}

add_action( 'mpfy_popup_location_information', 'mpfy_pld_display_info_block', 10, 2 );
function mpfy_pld_display_info_block( $location_id, $map_id ) {
	$map = new Mpfy_Map( $map_id );
	$map_location = new Mpfy_Map_Location( $location_id );

	$map_mode = $map->get_mode();

	$popup_location_information = mpfy_meta_to_bool( get_the_ID(), '_map_location_popup_location_information', true );
	if ( !$popup_location_information ) {
		return;
	}

	// location information
	$address_lines = array(
		array(
			$map_location->get_address(),
		),
		array(
			$map_location->get_address_line_2(),
		),
		array(
			$map_location->get_city(),
			$map_location->get_state(),
			$map_location->get_zip(),
		),
		array(
			$map_location->get_country(),
		),
		array(
			get_post_meta( $map_location->get_id(), '_map_location_phone', true ),
		),
	);

	$address_lines_formatted = '';
	foreach ( $address_lines as $line ) {
		$contents = implode( ' ', array_filter( array_values( $line ) ) );
		if ( !$contents ) {
			continue;
		}
		$address_lines_formatted .= $contents . '<br />';
	}

	$links = mpfy_carbon_get_post_meta( get_the_ID(), 'map_location_links', 'complex' );

	$tags = $map_location->get_tags();
	$location_details_label = mpfy_meta_label( $map_id, '_map_label_location_details', 'Location Details' );
	?>
	<aside class="mpfy-p-widget mpfy-p-widget-location">
		<div class="mpfy-p-holder">
			<h5 class="mpfy-p-widget-title"><?php echo $location_details_label; ?></h5>

			<div class="mpfy-location-details">
				<?php if ( $address_lines_formatted || $tags ) : ?>
					<div class="mpfy-p-entry">
						<p>
							<?php echo $address_lines_formatted; ?>
						</p>


					</div>
				<?php endif; ?>
				<?php if ( $links ) : ?>
					<div class="mpfy-p-links">
						<ul>
							<?php foreach ( $links as $o ) : ?>
								<li>
									<a href="<?php echo esc_attr( $o['url'] ); ?>" target="<?php echo $o['target']; ?>" class=" mpfy-p-color-accent-color"><?php echo esc_attr( $o['text'] ); ?></a>
								</li>
							<?php endforeach; ?>
						</ul>
					</div>
				<?php endif; ?>

				<?php if ( $tags ) : ?>
					<div class="mpfy-p-tags">
						<?php foreach ( $tags as $t ) : ?>
							<a href="#" data-mapify-map-id="<?php echo esc_attr( $map->get_id() ); ?>" data-mapify-action="setMapTag" data-mapify-value="<?php echo $t->term_id; ?>"><?php echo esc_attr( $t->name ); ?></a>
						<?php endforeach; ?>
					</div>
				<?php endif; ?>
			</div><!-- /.mpfy-location-details -->

		</div>
		<div class="cl">&nbsp;</div>
	</aside>
	<?php
}
