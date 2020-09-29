<?php

namespace WP_Shopify\Factories\API\Syncing;

defined('ABSPATH') ?: die;

use WP_Shopify\API;
use WP_Shopify\Factories;

class Indicator_Factory {

	protected static $instantiated = null;

	public static function build() {

		if ( is_null(self::$instantiated) ) {

			self::$instantiated = new API\Syncing\Indicator(
				Factories\DB\Settings_Syncing_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
