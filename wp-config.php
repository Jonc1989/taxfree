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
define('DB_NAME', 'taxfree');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4n-IUg|g<GhgD:KYd./%pf-2MY`MC!L YrwXf>|8o3k:u9i;iq8pfQC=H#mkq3O>');
define('SECURE_AUTH_KEY',  'E@rYAttbNEb=BDRm`&%zdF}.d/nN+ilpgOjBV(ZA3G^@{8`Xq2V^<0?yX{69g+ir');
define('LOGGED_IN_KEY',    ')[{:>tqK!,?H,)aZ-!EdC>N>IYwHZFA?&LIU>v$:Cu4fyo_X[{e6G@Qd6@SrFa;Y');
define('NONCE_KEY',        'ak97~o!5&{F2]RG=%W7KZPb#kD.5AaSpH|!*~;B*K[0/L>93#x.RhQ_,]?Det`d3');
define('AUTH_SALT',        'M`G]Pv:E Jimnz!JKc.ES7L]3-)*XY?/F5o!XFwbD^d6K>lR7/[UMLhAtQ@,Y{3z');
define('SECURE_AUTH_SALT', 'ip_7^s.uSiQ3?#&{|cEy_wwafH^QY 0uif?+>Ok~7k_Ff5C.{_F}c84@G:D*t#<r');
define('LOGGED_IN_SALT',   ';#;-hc@3D;B0P3}!Q[zT2x/XGVAg~6.C1Y`:dl0<jna@ zE>49(QyAmxw.+Y~{Of');
define('NONCE_SALT',       ':TS}1^nts=]F**xtuc;%|5WH7_R*Y[a 0*AD8J^1n^=X1]-h;gF<t!:=%Z;g?@C-');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
