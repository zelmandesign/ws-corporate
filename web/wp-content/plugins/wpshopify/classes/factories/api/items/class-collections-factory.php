<?php

namespace WP_Shopify\Factories\API\Items;

defined('ABSPATH') ?: die;

use WP_Shopify\API;
use WP_Shopify\Factories;


class Collections_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Items\Collections(
				Factories\DB\Settings_General_Factory::build(),
				Factories\DB\Settings_Syncing_Factory::build(),
				Factories\DB\Settings_Connection_Factory::build(),
				Factories\Shopify_API_Factory::build(),
				Factories\Processing\Collections_Custom_Factory::build(),
				Factories\Processing\Collections_Smart_Factory::build(),
				Factories\Processing\Posts_Collections_Smart_Factory::build(),
				Factories\Processing\Posts_Collections_Custom_Factory::build()
			);
		}

		return self::$instantiated;

	}

}
