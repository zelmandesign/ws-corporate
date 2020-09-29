<?php

namespace WP_Shopify\Factories\Processing;

use WP_Shopify\Processing;
use WP_Shopify\Factories;

if (!defined('ABSPATH')) {
	exit;
}

class Webhooks_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new Processing\Webhooks(
				Factories\DB\Settings_Syncing_Factory::build(),
				Factories\Webhooks_Factory::build(),
				Factories\Shopify_API_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
