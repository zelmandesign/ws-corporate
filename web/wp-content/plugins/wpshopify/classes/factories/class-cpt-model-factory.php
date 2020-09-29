<?php

namespace WP_Shopify\Factories;

use WP_Shopify\CPT_Model;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class CPT_Model_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new CPT_Model(
				Factories\DB\Settings_General_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
