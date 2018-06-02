<div id="footer" class="col-xs-12 clear-pads black-bg white">
	<div class="container clear-pads">
		<div class="col-sm-6 col-xs-12 left-block">
			<div class="col-xs-12 clear-pads logo-wrap">
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
					<?php foreach ( $menu as $item ){?>
						<a href="<?php echo $item->url; ?>"><?php echo $item->title; ?></a>
					<?php } ?>
				
			</div>

		</div>

		<div class="col-sm-6 col-xs-12 right-block">
			<div class="col-xs-12 soc-icons">
				<a target="_blank" href="<?php echo get_option( 'twitter_input' ); ?>">
					<img class="sum" src="<?php bloginfo('template_directory');?>/resources/images/svg/twitter.svg" alt="sum">
				</a>
				<a target="_blank" href="<?php echo get_option( 'facebook_input' ); ?>">
					<img class="sum" src="<?php bloginfo('template_directory');?>/resources/images/svg/facebook.svg" alt="sum">
				</a>
				<a target="_blank" href="<?php echo get_option( 'telegraph_input' ); ?>">
					<img class="sum" src="<?php bloginfo('template_directory');?>/resources/images/svg/telegram.svg" alt="sum">
				</a>
			</div>
			
			<div class="col-xs-12 gray-darker">
				<div class="col-md-6 col-sm-12 col-xs-12 clear-pads">
					info@taxfree.market
				</div>
				<div class="col-md-6 col-sm-12 col-xs-12 clear-pads">
					© TaxFree Blockchain 2018
				</div>
				  
			</div>
		</div>
	</div>
</div>



<?php wp_footer(); ?>

<?php get_template_part('partials/footer-scripts');?>
</body>
</html>