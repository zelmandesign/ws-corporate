<?php

namespace WP_Shopify\Factories\API\Settings;

defined('ABSPATH') ?: die;

use WP_Shopify\API;
use WP_Shopify\Factories;


class Related_Products_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Settings\Related_Products(
				Factories\DB\Settings_General_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
