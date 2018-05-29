<div class="col-xs-12 clear-pads dark-bg white">
	<div class="container">
		<div class="col-xs-6">
			<div class="col-xs-12 clear-pads">
				<div class="logo">
					<img src="<?php bloginfo('template_directory');?>/resources/images/svg/logo.svg">
				</div>
			</div>

			<div class="col-xs-12 clear-pads">
				<?php
				$menu_locations = get_nav_menu_locations();
				$menu = $menu_locations[ 'footer' ];
				$menu = wp_get_nav_menu_items( $menu );
				?>
				<ul >
					<?php foreach ( $menu as $item ){?>
						<li><a href="<?php echo $item->url; ?>"><?php echo $item->title; ?></a></li>
					<?php } ?>

				</ul>
			</div>

		</div>

		<div class="col-xs-6">
			social links

			<div>
				info@taxfree.market  © TaxFree Blockchain 2018
			</div>
		</div>
	</div>
</div>



<?php wp_footer(); ?>

<?php get_template_part('partials/footer-scripts');?>
</body>
</html>