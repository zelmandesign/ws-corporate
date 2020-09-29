<?php

namespace WP_Shopify\Factories\Processing;

use WP_Shopify\Processing;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class Posts_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new Processing\Posts(
				Factories\DB\Settings_Syncing_Factory::build(),
				Factories\CPT_Query_Factory::build()
			);

		}

		return self::$instantiated;


	}

}
