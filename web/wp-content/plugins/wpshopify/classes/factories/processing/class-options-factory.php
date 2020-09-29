<?php

namespace WP_Shopify\Factories\Processing;

use WP_Shopify\Processing;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class Options_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			$Async_Processing_Options = new Processing\Options(
				Factories\DB\Settings_Syncing_Factory::build(),
				Factories\DB\Options_Factory::build()
			);

			self::$instantiated = $Async_Processing_Options;

		}

		return self::$instantiated;

	}

}
