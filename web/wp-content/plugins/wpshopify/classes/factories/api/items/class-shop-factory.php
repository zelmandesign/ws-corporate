<?php

namespace WP_Shopify\Factories\API\Items;

defined('ABSPATH') ?: die;

use WP_Shopify\API;
use WP_Shopify\Factories;


class Shop_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Items\Shop(
				Factories\DB\Settings_General_Factory::build(),
				Factories\Shopify_API_Factory::build(),
				Factories\Processing\Shop_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
