<?php

namespace WP_Shopify\Factories\API\Admin\Customers;

defined('ABSPATH') ?: die;

use WP_Shopify\API;

class Queries_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Admin\Customers\Queries();

		}

		return self::$instantiated;

	}

}