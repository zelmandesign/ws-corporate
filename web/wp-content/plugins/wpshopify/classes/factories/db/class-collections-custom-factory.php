<?php

namespace WP_Shopify\Factories\DB;

use WP_Shopify\DB;

if (!defined('ABSPATH')) {
	exit;
}

class Collections_Custom_Factory {

	protected static $instantiated = null;

  public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new DB\Collections_Custom();

		}

		return self::$instantiated;

	}

}
