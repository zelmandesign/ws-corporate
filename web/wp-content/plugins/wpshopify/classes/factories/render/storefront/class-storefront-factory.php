<?php

namespace WP_Shopify\Factories\Render\Storefront;

if (!defined('ABSPATH')) {
   exit();
}

use WP_Shopify\Render\Storefront;
use WP_Shopify\Factories;

class Storefront_Factory
{
   protected static $instantiated = null;

   public static function build()
   {
      if (is_null(self::$instantiated)) {
         self::$instantiated = new Storefront(
            Factories\Render\Templates_Factory::build(),
            Factories\Render\Data_Factory::build(),
            Factories\Render\Storefront\Defaults_Factory::build()
         );
      }

      return self::$instantiated;
   }
}
