<?php
function mpfy_tileset_get_url($map_id) {
	$uploads_dir = wp_upload_dir();
	$url = $uploads_dir['baseurl'] . '/mpfy/' . $map_id . '/';
	return $url;
}

function mpfy_tileset_request($action, $params = array()) {
	$params['action'] = $action;

	$url = 'http://72.14.186.12/service.php?';
	$url .= http_build_query($params);
	$curl = curl_init($url);
	curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
	curl_setopt($curl, CURLOPT_HEADER, 0);
	curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
	$response = curl_exec($curl);
	return json_decode($response);
}

function mpfy_tileset_trigger_slicing($post_id, $before, $after) {
	if ($after->post_type != 'map') {
		return false;
	}

	if (empty($_POST['_map_image_big'])) {
		return false;
	}
	$image_url = get_post_meta($post_id, '_map_image_big', true);
	if ($_POST['_map_image_big'] == $image_url && get_post_meta($post_id, '_map_tileset_status', true) != 'error') {
		return false; // image not changed OR an error has not occurred.
	}

	$response = mpfy_tileset_request('create', array('image_url'=>$_POST['_map_image_big']));
	if ($response && is_object($response) && $response->success === true) {
		update_post_meta($post_id, '_map_tileset_status', 'processing');
		update_post_meta($post_id, '_map_tileset_progress', '0');
		$result = wp_schedule_single_event(1, 'mpfy_tileset_status', array(rand(0, 99999999999))); // rand arg to skip the 10 minute duplicate limit
		update_post_meta($post_id, '_map_tileset_message', $response->message);
		update_post_meta($post_id, '_map_tileset_job_id', $response->job_id);
	} else {
		update_post_meta($post_id, '_map_tileset_status', 'error');
		if (is_object($response)) {
			update_post_meta($post_id, '_map_tileset_message', $response->message);
			update_post_meta($post_id, '_map_tileset_job_id', $response->job_id);
		} else {
			update_post_meta($post_id, '_map_tileset_message', 'An unknown error ocurred.');
			update_post_meta($post_id, '_map_tileset_job_id', 0);
		}
	}
}
add_action('post_updated', 'mpfy_tileset_trigger_slicing', 10, 3);

function mpfy_tileset_status() {
	$processed = 0;

	$maps = get_posts('post_type=map&posts_per_page=-1&post_status=any');
	foreach ($maps as $p) {
		$status = get_post_meta($p->ID, '_map_tileset_status', true);
		if ($status == 'processing') {
			$job_id = get_post_meta($p->ID, '_map_tileset_job_id', true);
			$response = mpfy_tileset_request('status', array('job_id'=>$job_id));
			if ($response->success) {
				mpfy_tileset_process($p->ID, $response);
			} else {
				update_post_meta($post_id, '_map_tileset_status', 'error');
				update_post_meta($post_id, '_map_tileset_message', $response->message);
			}
		} else {
			$processed ++;
		}
	}

	if ($processed < count($maps)) {
		wp_schedule_single_event(1, 'mpfy_tileset_status', array(rand(0, 99999999999))); // rand arg to skip the 10 minute duplicate limit
	}
}
add_action('mpfy_tileset_status', 'mpfy_tileset_status');

function mpfy_tileset_process($post_id, $response) {
	$uploads_dir = wp_upload_dir();
	$dir = $uploads_dir['basedir'] . '/mpfy';
	if (!is_dir($dir)) {
		mkdir($dir);
	}
	$dir = $dir . DIRECTORY_SEPARATOR . $post_id;
	if (!is_dir($dir)) {
		mkdir($dir);
	}

	$index = get_post_meta($post_id, '_map_tileset_progress', true);
	$index = ($index) ? $index : 0;
	$per_batch = 5;

	if ($index == 0) {
		$files = scandir($dir);
		foreach ($files as $f) {
			$filepath = $dir . DIRECTORY_SEPARATOR . $f;
			if ( is_file( $filepath ) ) {
				unlink($filepath);
			}
		}
	}

	update_post_meta($post_id, '_map_tileset_total', count($response->tiles));

	for ($i=0; $i < $per_batch; $i++) {
		if (!isset($response->tiles[$index + $i])) {
			update_post_meta($post_id, '_map_tileset_progress', '0');
			update_post_meta($post_id, '_map_tileset_status', 'ready');
			update_post_meta($post_id, '_map_tileset_message', 'Image processed and ready for use.');

			$job_id = get_post_meta($post_id, '_map_tileset_job_id', true);
			mpfy_tileset_request('cleanup', array('job_id'=>$job_id));
			return true;
		}

		$url = $response->tiles[$index + $i];
		$curl = curl_init($url);
		curl_setopt($curl, CURLOPT_FOLLOWLOCATION, 1);
		curl_setopt($curl, CURLOPT_HEADER, 0);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
		$data = curl_exec($curl);
		curl_close($curl);

		$handle = fopen($dir . DIRECTORY_SEPARATOR . basename($url), 'w');
		fwrite($handle, $data);
		fclose($handle);
	}
	update_post_meta($post_id, '_map_tileset_progress', $index + $per_batch);
}

function mpfy_ajax_tileset_status() {
	$post_id = intval($_GET['id']);

	$image = get_post_meta($post_id, '_map_image_big', true);
	$status = get_post_meta($post_id, '_map_tileset_status', true);
	$message = get_post_meta($post_id, '_map_tileset_message', true);
	$progress = get_post_meta($post_id, '_map_tileset_progress', true);
	$total = get_post_meta($post_id, '_map_tileset_total', true);

	$text = '';
	if ($status == 'error') {
		$text = $message;
	} elseif ($status == 'processing') {
		if ($total > 0) {
			$text = 'Image is being processed: ' . round( ($progress / $total) * 100 ) . '%';
		} else {
			$text = 'Image is being prepared ...';
		}
	} elseif ($status == 'ready') {
		$text = 'Image is processed and ready for use.';
	}
	if (!$image) {
		$text = 'No image specified.';
	}

	$response = array(
		'status'=>$status,
		'message'=>$text,
	);

	echo json_encode($response);
	exit;
}
add_action('wp_ajax_mpfy_ajax_tileset_status', 'mpfy_ajax_tileset_status');
