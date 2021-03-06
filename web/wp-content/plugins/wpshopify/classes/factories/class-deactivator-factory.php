<?php

namespace WP_Shopify\Factories;

use WP_Shopify\Deactivator;

if (!defined('ABSPATH')) {
	exit;
}

class Deactivator_Factory {

	protected static $instantiated = null;

	public static function build() {

		if (is_null(self::$instantiated)) {

			$Deactivator = new Deactivator();

			self::$instantiated = $Deactivator;

		}

		return self::$instantiated;

	}

}
