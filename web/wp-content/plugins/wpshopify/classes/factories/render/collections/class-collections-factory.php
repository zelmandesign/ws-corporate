<?php

namespace WP_Shopify\Factories\Render\Collections;

if (!defined('ABSPATH')) {
    exit();
}

use WP_Shopify\Factories;
use WP_Shopify\Render\Collections;


class Collections_Factory
{
    protected static $instantiated = null;

    public static function build()
    {
        if (is_null(self::$instantiated)) {
            self::$instantiated = new Collections(
                Factories\Render\Templates_Factory::build(),
                Factories\Render\Data_Factory::build(),
                Factories\Render\Collections\Defaults_Factory::build()
            );
        }

        return self::$instantiated;
    }
}
