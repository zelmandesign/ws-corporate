<?php

namespace WP_Shopify\Factories\DB;

use WP_Shopify\DB;

if (!defined('ABSPATH')) {
	exit;
}

class Images_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new DB\Images();

		}

		return self::$instantiated;

	}

}
