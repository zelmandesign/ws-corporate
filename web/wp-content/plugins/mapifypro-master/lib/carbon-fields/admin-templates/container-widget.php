<div class="mpfy-carbon-container <?php echo $container_tag_class_name ?>" data-type="<?php echo $container_type ?>" data-classname="<?php echo $container_classname ?>" data-options='<?php echo json_encode($container_options) ?>'>
	<?php
	if ( empty($this->custom_fields) ) {
		_e('No options are available for this widget.', 'crb');
	}

	$this->store_data = $instance;

	foreach ($this->custom_fields as $field): 
		$tmp_field = clone $field;
		$tmp_field->load();

		$field_id = $this->get_field_id($tmp_field->get_name());
		$field_name = $this->get_field_name($tmp_field->get_name());
		$tmp_field->set_name($field_name);
		?>
		<div class="mpfy-carbon-widget-field-wrapper">
			<?php
			# Label
			$label = $tmp_field->get_label();
			if ( !empty($label) ) {
				?>
				<label for="<?php echo $tmp_field->get_id(); ?>">
					<?php
					echo $label;
					if ( $tmp_field->get_type() != 'separator' ) {
						echo ':';
					}

					if ( $tmp_field->is_required() ) {
						echo ' <span class="mpfy-carbon-required">*</span>';
					}
					?>
				</label>
				<?php
			}
			?>

			<div class="mpfy-carbon-field mpfy-carbon-<?php echo implode(' mpfy-carbon-', $field->get_html_class()); ?>" data-type="<?php echo $tmp_field->type ?>" data-name="<?php echo $field->get_name() ?>">
				<?php $tmp_field->render(); ?>
			</div>
			<?php
			# Help Text
			$help_text = $tmp_field->get_help_text();
			if ( !empty($help_text) ) {
				echo '<em class="mpfy-help-text">' . $help_text . '</em>';
			}
			?>
		</div>
	<?php endforeach; ?>
</div>
