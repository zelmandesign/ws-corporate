<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wordpress' );

/** MySQL hostname */
define( 'DB_HOST', 'database' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'X|$J![4e|r@^aKbq[6t7noPnh9L+V&S&JceGoC/0Is63XEN~Z553B@n:(K nR]Ip' );
define( 'SECURE_AUTH_KEY',  'vtI2M %IitDWb>8B>F!$xTdzWuj/RYNBQ2}5+GO5RQ&S)pgT1@t39M<GYH@4}WmK' );
define( 'LOGGED_IN_KEY',    ')`#1~t_}Rp/>M#tIyxVd64@@mJ*yX[HoRB/y4>%[<6a;{$L0LM,7P?qVTBopMyS~' );
define( 'NONCE_KEY',        'u?&MS2g9lyrv(a3jDImVr~,M85 K?Udm^owO2LY:#L{6:TiwutF]Z9n,])p+K*I?' );
define( 'AUTH_SALT',        '}a&3w}gXDD~%569C{NAWmCX)Cq#a@C,=3[+qVB kZDg/_64hBPjrf;+fbu}:FDq3' );
define( 'SECURE_AUTH_SALT', 'Xps^8/Mpz,I(~B==%|@`eNW$/){y4X{U]IC19!l^yfRvB1)KmxbM$~6S%2~OnUN]' );
define( 'LOGGED_IN_SALT',   '1}->ymM=>*p=z#Wpca VME=z^H((>ryX_-cp/!Q.QJn>Pe=f?#34Y[x2W6R:JQZB' );
define( 'NONCE_SALT',       'm[JwI!U 4`$siY_->arRx=F)|FhP=o/TfgH9jC05;F[LJEYpHiM[&X|DmuDA&F;n' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
