<?php

namespace WP_Shopify\Factories\API\Settings;

defined('ABSPATH') ?: die;

use WP_Shopify\API;
use WP_Shopify\Factories;

class Connection_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Settings\Connection(
				Factories\DB\Settings_Connection_Factory::build(),
				Factories\DB\Settings_General_Factory::build(),
				Factories\DB\Settings_Syncing_Factory::build(),
				Factories\Shopify_API_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
