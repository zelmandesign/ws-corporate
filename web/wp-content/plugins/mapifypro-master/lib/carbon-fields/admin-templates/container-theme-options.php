<div class="wrap mpfy-carbon-container <?php echo $container_tag_class_name ?>"  data-type="<?php echo $container_type ?>">
	<div id="icon-options-general" class="icon32"><br /></div>
	<h2><?php echo $this->title ?></h2>
	
	<?php
	if ( !empty($this->errors) ) {
		echo '<div class="error settings-error">';
		
		foreach ($this->errors as $error) {
			echo '<p><strong>' . $error . '</strong></p>';
		}
	} else if ( !empty($this->notifications) ) {
		foreach ($this->notifications as $notification) {
			?>
			<div class="settings-error updated">
				<p><strong><?php echo $notification ?></strong></p>
			</div>
			<?php
		}
	}
	?>

	<form method="post" class="" enctype="multipart/form-data" action="<?php echo remove_query_arg(array('settings-updated')) ?>">
		<table border="0" cellspacing="0" cellpadding="0" class="form-table">
			<?php
			foreach ($this->fields as $field) {
				$field->load();
				$help_text = $field->get_help_text();
				
				if ( $field->type == 'Separator' ) {
					?>
					<tr class="mpfy-carbon-separator">
						<th colspan="2">
							<?php 
							echo $field->get_label(); 
							?>
							<?php if( !empty( $help_text ) ) :  ?><em class="mpfy-help-text"><?php echo $help_text; ?></em><?php endif; ?>
						</th>
					</tr>
					<?php
				} else {
					?>
					<tr>
						<th scope="row">
							<label for="<?php echo $field->get_id(); ?>"><?php 
							echo $field->get_label();
							
							if ( $field->is_required() ) {
								echo ' <span class="mpfy-carbon-required">*</span>';
							}
							?></label>
						</th>
						<td>
							<div class="mpfy-carbon-field mpfy-carbon-<?php echo implode(' mpfy-carbon-', $field->get_html_class()); ?>" data-type="<?php echo $field->type ?>" data-name="<?php echo $field->get_name() ?>">
								<?php echo $field->render(); ?>
							</div>
							<?php
							if ( !empty( $help_text ) ) {
								echo '<em class="mpfy-help-text">' . $help_text . '</em>';
							}
							?>
						</td>
					</tr>
					<?php
				}
			}
			?>
		</table>
		<p class="submit"><input type="submit" name="submit" id="submit" class="button-primary" value="<?php esc_attr_e('Save Changes', 'crb'); ?>"></p>
		<?php wp_nonce_field('carbon_panel_' . $this->id . '_nonce', $this->get_nonce_name(), /*referer?*/ false, /*echo?*/ true); ?>
	</form>
</div>