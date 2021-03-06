<?php

namespace WP_Shopify\Factories;

use WP_Shopify\CPT;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class CPT_Factory {

	protected static $instantiated = null;

	public static function build($plugin_settings = false) {

      if (!$plugin_settings) {
         $plugin_settings = Factories\DB\Settings_Plugin_Factory::build();
      }
      
		if (is_null(self::$instantiated)) {

			$CPT = new CPT(
				$plugin_settings,
				Factories\DB\Products_Factory::build(),
				Factories\DB\Collections_Custom_Factory::build(),
				Factories\DB\Collections_Smart_Factory::build(),
				Factories\DB\Collects_Factory::build(),
				Factories\DB\Tags_Factory::build()
			);

			self::$instantiated = $CPT;

		}

		return self::$instantiated;

	}

}
