<?php

namespace WP_Shopify\Factories\Render\Search;

if (!defined('ABSPATH')) {
    exit();
}

use WP_Shopify\Render\Search\Defaults;
use WP_Shopify\Factories;

class Defaults_Factory
{
    protected static $instantiated = null;

    public static function build()
    {
        if (is_null(self::$instantiated)) {
            self::$instantiated = new Defaults(
                Factories\DB\Settings_General_Factory::build(),
                Factories\Render\Attributes_Factory::build(),
                Factories\Render\Products\Defaults_Factory::build()
         );
        }

        return self::$instantiated;
    }
}