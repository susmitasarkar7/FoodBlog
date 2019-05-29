<?php
/**
 * Food BLog functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Food_BLog
 */

if ( ! function_exists( 'foodblog_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function foodblog_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on Food BLog, use a find and replace
		 * to change 'foodblog' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'foodblog', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'foodblog' ),
			'menu-2' => esc_html__( 'Footer', 'foodblog' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'foodblog_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'foodblog_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function foodblog_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'foodblog_content_width', 640 );
}
add_action( 'after_setup_theme', 'foodblog_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function foodblog_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'foodblog' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'foodblog' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'New Sidebar', 'foodblog' ),
		'id'            => 'sidebar-2',
		'description'   => esc_html__( 'Add widgets here.', 'foodblog' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h4 class="widget-title">',
		'after_title'   => '</h4>',
	) );
}
add_action( 'widgets_init', 'foodblog_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function foodblog_scripts() {
	wp_enqueue_style( 'foodblog-style', get_stylesheet_uri() );

	wp_enqueue_script( 'foodblog-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'foodblog-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'foodblog_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

//Register Nav Walker class_alias
require_once('class-wp-bootstrap-navwalker.php');

if ( ! file_exists( get_template_directory() . '/class-wp-bootstrap-navwalker.php' ) ) {
	// file does not exist... return an error.
	return new WP_Error( 'class-wp-bootstrap-navwalker-missing', __( 'It appears the class-wp-bootstrap-navwalker.php file may be missing.', 'wp-bootstrap-navwalker' ) );
} else {
	// file exists... require it.
	require_once get_template_directory() . '/class-wp-bootstrap-navwalker.php';
}


/**
 * Replace the excerpt "more" text by a link
 */
function new_excerpt_more($more) {
	global $post;
	return '... <a class="moretag" href="'. get_permalink($post->ID) . '"> continue reading &raquo;</a>';
}
add_filter('excerpt_more', 'new_excerpt_more');


/**
 * Login Page
*/

function admin_styles() {
	wp_enqueue_style('vegasCSS', get_template_directory_uri() . '/login/css/vegas.min.css', false);
	wp_enqueue_style('loginCSS', get_template_directory_uri() . '/login/css/loginStyles.css', false);

	wp_enqueue_script('jquery');
	wp_enqueue_script('vegasjs', get_template_directory_uri() . '/login/js/vegas.min.js', array('jquery'), '2.4.4', true);
	wp_enqueue_script('loginjs', get_template_directory_uri() . '/login/js/login.js', array('jquery'), '3.2.1', true);

	wp_localize_script(
		'loginjs',
		'login_images',
		array(
			"theme_path" => get_template_directory_uri() . '/login/img/'
		)
	);
}

add_action('login_enqueue_scripts', 'admin_styles', 10);

// Dashboard
function myprefix_theme_enqueue_styles() {
	wp_enqueue_style( 'foodblog', get_template_directory_uri() . '/assets/css/style.css' );
}
add_action( 'wp_enqueue_scripts', 'myprefix_theme_enqueue_styles' );

// remove links/menus from the admin bar
function mytheme_admin_bar_render() {
	global $wp_admin_bar;
	$wp_admin_bar->remove_menu('wp-logo');
}
add_action( 'wp_before_admin_bar_render', 'mytheme_admin_bar_render' );


// Remove dashboard widgets
function remove_dashboard_meta() {
	if ( ! current_user_can( 'manage_options' ) ) {
		remove_meta_box( 'dashboard_incoming_links', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_plugins', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_primary', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_secondary', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_quick_press', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_recent_drafts', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_recent_comments', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_right_now', 'dashboard', 'normal' );
		remove_meta_box( 'dashboard_activity', 'dashboard', 'normal');
	}
}
add_action( 'admin_init', 'remove_dashboard_meta' ); 

// Create the function to use in the action hook
function wpexplorer_remove_dashboard_widget () {
    remove_meta_box ( 'dashboard_quick_press', 'dashboard', 'side' );
	remove_meta_box( 'dashboard_primary', 'dashboard', 'side');
	remove_meta_box( 'dashboard_recent_drafts', 'dashboard', 'side' );
}
add_action ('wp_dashboard_setup', 'wpexplorer_remove_dashboard_widget');

//add widgets to the dashboard
add_action('wp_dashboard_setup', 'custom_dashboard_widgets'); 
function custom_dashboard_widgets() {
global $wp_meta_boxes;
wp_add_dashboard_widget('custom_contact_widget', 'Theme Support', 'custom_dashboard_contact');
}
function custom_dashboard_contact() {
// Widget Content Here
echo '<p>Welcome to your site! Need help? Contact me <a href="mailto:youremail@yourdomain.com">here</a>. </p>';
}

//remove menus from dashboard
function remove_menus(){
	// remove_menu_page( 'themes.php' );          // Appearance
	// remove_menu_page( 'plugins.php' );         // Plugins
	remove_menu_page( 'users.php' );           // Users
	remove_menu_page( 'tools.php' );           // Tools
	// remove_menu_page( 'options-general.php' ); // Settings
}
add_action( 'admin_menu', 'remove_menus' );

// Custom Admin footer
function wpexplorer_remove_footer_admin () {
	echo '<span id="footer-thankyou">Built with love by <a href="http://www.wpexplorer.com/" target="_blank">Susmita Sarkar</a></span>';
}
add_filter( 'admin_footer_text', 'wpexplorer_remove_footer_admin' );

// Customizer File
require get_template_directory(). '/inc/custom-customizer.php';