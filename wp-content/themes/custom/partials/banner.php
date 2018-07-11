<div id="banner" class="col-xs-12 clear-pads white">

	<ul id="scene" style="height: 100%;">
		<li class="layer disable" id="l3" data-depth="0.20">
			<img style="width: 100%; position: relative; display: inline-block" src="<?php bloginfo('template_url');?>/resources/images/parallax/layer_1.png"/>
		</li>
		<li class="layer disable" id="l1" data-depth="0.15">
			<img style="width: 100%; position: relative; display: inline-block" src="<?php bloginfo('template_url');?>/resources/images/parallax/layer_2.png"/>
		</li>
		<li class="layer disable" id="l2" data-depth="0.10">
			<img style="width: 100%; position: relative; display: inline-block" src="<?php bloginfo('template_url');?>/resources/images/parallax/layer_3.png"/>
		</li>
		<li class="layer disable " id="l4" data-depth="0.05">
			<img style="width: 100%; position: relative; display: inline-block" src="<?php bloginfo('template_url');?>/resources/images/parallax/layer_4.png"/>
		</li>
	</ul>

	<div class="container">
		<div class="col-md-6 col-sm-6 left-side">
			<h1 class="title"><?php echo __( 'Tax Free Coin', 'taxfree' ) ?></h1>
			<p class="wall-left"><?php echo __( 'Децентрализованная tах free платформа на blockchain', 'taxfree' ) ?></p>

			<div class="inline soft-cap"><?php echo __( 'SoftCap', 'taxfree' ) ?> 250,000$</div>
			<div class="inline soft-cap pull-right"><?php echo __( 'HardCap', 'taxfree' ) ?> 1,000,000$</div>

			<div class="col-xs-12 clear-pads progress-bar-wrap">
				<div class="progress">
					<div class="progress-bar green-bg" role="progressbar"></div>
					<div class="progress-bar darker-blue-bg"></div>
					<div class="progress-bar darkest-blue-bg"></div>
				</div>
				<div class="inline">1 <?php echo __( 'TFC', 'taxfree' ) ?> = 0.01$ </div>
				<div class="inline pull-right"><?php echo __( 'Current discount', 'taxfree' ) ?>: 75% <?php echo __( 'from PRE ICO base price', 'taxfree' ) ?></div>
			</div>


			<div class="col-xs-12 clear-pads">
				<div class="payemnt_method"><?php echo __( 'Payemnt method', 'taxfree' ) ?></div>
				<div class="inline eth"><img src="<?php bloginfo('template_directory');?>/resources/images/svg/eth.svg" alt="eth"> </div>
				<div class="blue-line"></div>

			</div>

			<a href="" ><button class="full-width green-bg"><?php echo __( 'Get Tokens', 'taxfree' ) ?></button></a>
		</div>
		<div class="col-md-6 col-sm-6 right-side">
			<div class="col-md-12 text-center timer clear-padscd ">
				<p class="uppercase"><?php echo __( 'PRE-ICO Bonus', 'taxfree' ) ?> ( 75% <?php echo __( 'discount', 'taxfree' ) ?> )
					<?php echo __( 'ends in', 'taxfree' ) ?></p>


				<div class="counter-wrap col-xs-12 clear-pads">
					<div class="days inline col-xs-3 clear-pads">
						<div class="counter-number bold"></div>
						<div class="counter-text"><?php echo __( 'Days', 'taxfree' ) ?></div>
					</div>
					<div class="hours inline col-xs-3 clear-pads">
						<div class="counter-number bold"></div>
						<div class="counter-text"><?php echo __( 'Hours', 'taxfree' ) ?></div>
					</div>
					<div class="minutes inline col-xs-3 clear-pads">
						<div class="counter-number bold"></div>
						<div class="counter-text"><?php echo __( 'Minutes', 'taxfree' ) ?></div>
					</div>
					<div class="seconds inline col-xs-3 clear-pads">
						<div class="counter-number bold"></div>
						<div class="counter-text"><?php echo __( 'Seconds', 'taxfree' ) ?></div>
					</div>
				</div>

                	<?php
				$video = get_option( 'video_input' );
				if( strpos( $video, "=") != 0 ){
					$video  = substr( $video, strpos( $video, "=") + 1);
				}else{
					$parts = explode("/", $video );
					$video = $parts[ count( $parts ) - 1 ];
				}

				$preview = '';
				if(@file_get_contents("https://img.youtube.com/vi/".$video."/maxresdefault.jpg"))
				{
					$preview = "https://img.youtube.com/vi/".$video."/maxresdefault.jpg";
				}
				elseif( @file_get_contents("https://img.youtube.com/vi/".$video."/maxresdefault.jpg") )
				{
					$preview = "https://img.youtube.com/vi/".$video."/sddefault.jpg";
				}else{
					$preview = "https://img.youtube.com/vi/".$video."/0.jpg";
				} ?>

                <a href="" data-toggle="modal" data-target="#video">
                    <div class="col-md-12 clear-pads video-preview" style="height: 270px; px;
                    background: url(<?php echo $preview; ?>)no-repeat center center;
                        -webkit-background-size: cover;
                        -moz-background-size: cover;
                        -o-background-size: cover;
                        background-size: cover;">

                    </div>
                </a>

                <div class="modal fade" id="video" role="dialog">
                    <div class="modal-dialog">

                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <iframe src="https://www.youtube.com/embed/s7zY0A1DxMA"
                                frameborder="0"
                                allow="autoplay;encrypted-media"
                                allowfullscreen>
                        </iframe>

                    </div>
                </div>
			</div>
		</div>
	</div>




	
</div>