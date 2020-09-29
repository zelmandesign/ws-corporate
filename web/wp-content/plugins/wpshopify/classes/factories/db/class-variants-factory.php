<?php

namespace WP_Shopify\Factories\DB;

use WP_Shopify\DB;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class Variants_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new DB\Variants(
				Factories\DB\Settings_Connection_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
