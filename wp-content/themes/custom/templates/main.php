<?php
/**
 * Template Name: Main
 */
get_header(); ?>

<div class="main-template col-xs-12 clear-pads">

	<?php get_template_part('partials/banner');?>
	<?php get_template_part('partials/about');?>
	<?php get_template_part('partials/posts');?>
	<?php get_template_part('partials/advantages');?>
	<div class="col-xs-12 clear-pads" style="background-color: #221eb0;">
		<div class="col-xs-12 clear-pads roadmap-bg">
			<?php get_template_part('partials/roadmap');?>
			<?php get_template_part('partials/team');?>
		</div>
	</div>

	<?php get_template_part('partials/questions');?>



</div>
<?php get_footer(); ?>
