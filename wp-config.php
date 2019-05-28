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
define( 'DB_NAME', 'explorer' );

/** MySQL database username */
define( 'DB_USER', 'explorman' );

/** MySQL database password */
define( 'DB_PASSWORD', 'zlvio2ABOhEKLbev' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         'tZ AyO P?&h_0@VW})tS;!l3FbV2]XN7>jC0-!^?0>BX=>u^G1{4@g3{V(|Jq<N8');
define('SECURE_AUTH_KEY',  ')Uu7)b+]LA|~wR;$XG@H4+;9}<0h#aG,_Ckw~`zFE7SAgdOi4D+dqT)uyJ<QsIB&');
define('LOGGED_IN_KEY',    'n}|m26PEa#)whQ TZ~T{gg#QMP7||V4ttsixs`0<q8=JCo3%+ytOqF!;YVPu`.&$');
define('NONCE_KEY',        'Ij}}3-o[22m;mzi7jPAEUs1W?V`<FgYF>4`-tUGy+!(q)Ee&6P3s~t:}I#RV#P/3');
define('AUTH_SALT',        '5X#<WzpvkGL<C]Y1;p]c-0pao8J<-2anoU1b+#LFGv.:x&F@ATdLnB3t|G?M+E,:');
define('SECURE_AUTH_SALT', 'Yz0Gw+C|0uabD5:|<mG}.WL])}:XT8sV`PZ+xR&bbTI[Z!`;N@ANiABI!9`KjNVX');
define('LOGGED_IN_SALT',   '.1zU]Sg!|&X)zLZ/j2yNb1B7++?FbSVCh)FxVH6p75`1snbG<thg@n:%t9@d$uYQ');
define('NONCE_SALT',       's@$zH2L/fvUh_7%Pob+rouX5e4V}C#Tc9}$iWsT{&Z<kawAWpPJ2H?hR32EJ4{< ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'dbbs_';

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

/**Disable code editing for themes and plugins */
define( 'DISALLOW_FILE_EDIT', true );