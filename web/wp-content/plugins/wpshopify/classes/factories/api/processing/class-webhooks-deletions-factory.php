<?php

namespace WP_Shopify\Factories\API\Processing;

defined('ABSPATH') ?: die;

use WP_Shopify\Factories;
use WP_Shopify\API;

class Webhooks_Deletions_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			self::$instantiated = new API\Processing\Webhooks_Deletions(
				Factories\Processing\Webhooks_Deletions_Factory::build()
			);

		}

		return self::$instantiated;

	}

}
