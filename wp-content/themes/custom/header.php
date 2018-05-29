<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php echo get_bloginfo( 'name' ); ?></title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link href="<?php bloginfo('template_directory');?>/style.css" rel="stylesheet">
	<script type='text/javascript' src="<?php bloginfo('template_url'); ?>/resources/vendor/parallax.min.js"></script>
	<?php wp_head();?>
</head>
<body>

<script>
	var ajaxurl  = '<?php echo get_site_url(); ?>/wp-admin/admin-ajax.php';
	var domain  = '<?php echo get_site_url(); ?>';
    var ruLocale = '/ru/';
    var enLocale = '/en/';
</script>

<?php get_template_part('partials/menu');?>