<?php

add_filter('show_admin_bar', '__return_false');
require 'post_types/team-post_type.php';
require 'post_types/questions-post_type.php';


add_action( 'after_setup_theme', 'my_theme_setup' );
function my_theme_setup(){
	load_theme_textdomain( 'taxfree', get_template_directory() . '/languages' );
}


add_theme_support( 'post-thumbnails' );

register_nav_menus( array(
	'primary' => __( 'Primary Menu', 'preico' ),
    'footer' => __( 'Footer Menu', 'preico' ),
    'side-menu' => __( 'Side Menu', 'preico' )

) );

function debug($value)
{
	echo '<pre>';
	print_r($value);
	echo '</pre>';
}

function theme_widgets_init() {
	register_sidebar( array(
		'name'          => __( 'Widget Area', 'preico' ),
		'id'            => 'sidebar-1',
		'description'   => __( 'Add widgets here to appear in your sidebar.', 'preico' ),
		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
		'after_widget'  => '</aside>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'theme_widgets_init' );

if (function_exists('register_sidebar')) {

	register_sidebar(array(
		'name' => 'Footer',
		'id'   => 'footer',
		'description'   => 'This is the widgetized footer.',
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget'  => '</div>',
		'before_title'  => '<h4>',
		'after_title'   => '</h4>'
	));

}

add_action( 'admin_init', 'counter' );
function counter() {
	add_settings_section(
		'counter_section',
		'Counter section',
		'counter_callback',
		'general'
	);

	add_settings_field(
		'show_counter',
		'Show counter',
		'show_hide_counter',
		'general',
		'counter_section',
		array(
			'show_counter'
		)
	);
	add_settings_field(
		'date_setup',
		'Counter end date',
		'input_callback',
		'general',
		'counter_section',
		array(
			'date_setup'
		)
	);

	register_setting( 'general', 'show_counter', 'esc_attr' );
	register_setting( 'general', 'date_setup', 'esc_attr' );
}

function counter_callback() {
	echo '<span> </span>';
}

function show_hide_counter( $args ) {
	echo '<input name="' . $args[0] . '" type="checkbox" value="1"' . checked( '1', get_option( $args[0] ), false ) . '/>';
}

function check_countdown() {
	echo get_option( 'date_setup' );
	die();
}
add_action( 'wp_ajax_check_countdown', 'check_countdown' );
add_action( 'wp_ajax_nopriv_check_countdown', 'check_countdown' );

function input_callback( $args ) {
	$option = get_option( $args[0] );
	echo '<input style="width: 600px;" type="text" id="' . $args[0] . '" name="' . $args[0] . '" value="' . $option . '" />';
}

function wpdocs_excerpt_more( $more ) {
	return '';
}
add_filter( 'excerpt_more', 'wpdocs_excerpt_more' );



function custom_excerpt_length( $length ) {
    return 15;
}
add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );

function randomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}