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

					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										     viewBox="0 0 45 45" style="enable-background:new 0 0 45 45;" xml:space="preserve">
					<style type="text/css">
						.st0{fill:#FFFFFF;}

					</style>
					<g>
						<g>
							<path class="st0" d="M43.7,10.6c-1.5,0.7-3.2,1.1-4.9,1.3c1.8-1,3.1-2.7,3.7-4.7c-1.6,1-3.5,1.7-5.4,2.1c-1.5-1.7-3.8-2.7-6.2-2.7
								c-4.7,0-8.5,3.8-8.5,8.5c0,0.7,0.1,1.3,0.2,1.9c-7.1-0.4-13.3-3.7-17.5-8.9C4.4,9.4,4,10.9,4,12.4c0,2.9,1.5,5.5,3.8,7.1
								c-1.4,0-2.7-0.4-3.8-1.1v0.1c0,4.1,2.9,7.5,6.8,8.3c-0.7,0.2-1.5,0.3-2.2,0.3c-0.5,0-1.1-0.1-1.6-0.2c1.1,3.4,4.2,5.8,7.9,5.9
								c-2.9,2.3-6.6,3.6-10.5,3.6c-0.7,0-1.4,0-2-0.1c3.8,2.4,8.2,3.8,13,3.8c15.6,0,24.1-12.9,24.1-24.1l0-1.1
								C41.1,13.8,42.5,12.3,43.7,10.6z"/>
						</g>
					</g>
					</svg>

<!--					<img class="sum" src="--><?php //bloginfo('template_directory');?><!--/resources/images/svg/twitter.svg" alt="sum">-->
				</a>
				<a target="_blank" href="<?php echo get_option( 'facebook_input' ); ?>">
<!--					<img class="sum" src="--><?php //bloginfo('template_directory');?><!--/resources/images/svg/facebook.svg" alt="sum">-->

					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					     viewBox="0 0 45 45" style="enable-background:new 0 0 45 45;" xml:space="preserve">
				<style type="text/css">
					.st0{fill:#FFFFFF;}
				</style>
					<g>
						<path class="st0" d="M30.2,7.8l-4.3,0c-4.9,0-8,3.2-8,8.2v3.8h-4.4c-0.4,0-0.7,0.3-0.7,0.7V26c0,0.4,0.3,0.7,0.7,0.7h4.4v13.9
						c0,0.4,0.3,0.7,0.7,0.7h5.7c0.4,0,0.7-0.3,0.7-0.7V26.7H30c0.4,0,0.7-0.3,0.7-0.7l0-5.5c0-0.2-0.1-0.4-0.2-0.5
						c-0.1-0.1-0.3-0.2-0.5-0.2h-5.1v-3.2c0-1.5,0.4-2.3,2.4-2.3l2.9,0c0.4,0,0.7-0.3,0.7-0.7V8.4C30.9,8.1,30.6,7.8,30.2,7.8z"/>
					</g>
				</svg>
				</a>
				<a target="_blank" href="<?php echo get_option( 'telegraph_input' ); ?>">
<!--					<img class="sum" src="--><?php //bloginfo('template_directory');?><!--/resources/images/svg/telegram.svg" alt="sum">-->

					<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					     viewBox="0 0 45 45" style="enable-background:new 0 0 45 45;" xml:space="preserve">
					<style type="text/css">
						.st0{fill:#FFFFFF;}
					</style>
					<g id="XMLID_496_">
						<path id="XMLID_497_" class="st0" d="M2.9,22.3l8.8,3.3l3.4,11c0.2,0.7,1.1,1,1.7,0.5l4.9-4c0.5-0.4,1.3-0.4,1.8,0l8.9,6.5
						c0.6,0.4,1.5,0.1,1.6-0.6l6.5-31.3c0.2-0.8-0.6-1.5-1.4-1.2l-36.3,14C2,20.7,2,21.9,2.9,22.3z M14.6,23.8l17.3-10.6
						c0.3-0.2,0.6,0.2,0.4,0.5L18,26.9c-0.5,0.5-0.8,1.1-0.9,1.8l-0.5,3.6c-0.1,0.5-0.7,0.5-0.9,0.1l-1.9-6.6C13.6,25,14,24.2,14.6,23.8
						z"/>
					</g>
					</svg>
				</a>
			</div>
			
			<div class="col-xs-12 gray-darker">
				<div class="col-md-6 col-sm-12 col-xs-12 clear-pads">
					<?php echo get_bloginfo("admin_email");?>
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