<div class="col-md-12 col-sm-12 col-xs-12 clear-pads blue-border-top" id="team">

    <div class="container">
        <h1 class="title white text-center"><?php echo __( 'Наша команда', 'taxfree' ) ?></h1>
        <?php
        $args = array(
            'post_type'      => 'team',
            'post_status'    => 'publish',
            'orderby'        => 'post_date',
            'order'          => 'ASC',
            'posts_per_page' => '4',
        );
        $team = new WP_Query( $args );

        if ( $team->have_posts() ) : ?>

            <?php $num = 0; ?>
            <?php while ( $team->have_posts() ) : $team->the_post(); ?>

                <div class="col-md-3 col-sm-6 col-xs-6 team-member" style="display: block;">
                    <?php $image = wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() )); ?>
                    <?php if($image) { ?>
                        <div class="team-photo" style="background: url(<?php echo $image; ?>)no-repeat center center;
                                -webkit-background-size: cover;
                                -moz-background-size: cover;
                                -o-background-size: cover;
                                background-size: cover;">
                        </div>
                    <?php } else{ ?>
                        <div class="team-photo" style="background: url(<?php bloginfo('template_directory');?>/resources/images/avatar.png)no-repeat center center;
                            -webkit-background-size: cover;
                            -moz-background-size: cover;
                            -o-background-size: cover;
                            background-size: cover;">
                        </div>

                    <?php } ?>
                    <h4 class="white"><?php the_title(); ?></h4>
                    <div class="white"><?php the_excerpt(); ?></div>
                    <div class="green"><?php the_content(); ?></div>
                </div>

                <?php $num++;?>
            <?php endwhile; ?>
            <?php wp_reset_query(); ?>
        <?php endif; ?>

        <?php
        $args = array(
            'post_type'      => 'team',
            'post_status'    => 'publish',
            'orderby'        => 'post_date',
            'order'          => 'ASC',
            'offset' => '4',
        );
        $posts = new WP_Query( $args );
        $show_button = false;
        if ( $posts->have_posts() ) : ?>
            <?php $show_button = true; $num = 0; ?>
            <?php while ( $posts->have_posts() ) : $posts->the_post(); ?>

                <div class="col-md-3 col-sm-6 col-xs-6 team-member" style="display: none;">
                    <?php $image = wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() )); ?>
                    <?php if($image) { ?>
                        <div class="team-photo" style="background: url(<?php echo $image; ?>)no-repeat center center;
                                -webkit-background-size: cover;
                                -moz-background-size: cover;
                                -o-background-size: cover;
                                background-size: cover;">
                        </div>
                    <?php } else{ ?>
                        <div class="team-photo" style="background: url(<?php bloginfo('template_directory');?>/resources/images/avatar.png)no-repeat center center;
                            -webkit-background-size: cover;
                            -moz-background-size: cover;
                            -o-background-size: cover;
                            background-size: cover;">
                        </div>

                    <?php } ?>
                    <h4 class="white"><?php the_title(); ?></h4>
                    <div class="white"><?php the_excerpt(); ?></div>
                    <div class="green"><?php the_content(); ?></div>
                </div>

                <?php $num++;?>
            <?php endwhile; ?>
            <?php wp_reset_query(); ?>
        <?php endif; ?>
    </div>
    <?php if( $show_button ){?>
        <div class="col-md-12 col-sm-12 col-xs-12 clear-pads text-center collapse-btn-container">
            <a class="more-btn" data-toggle="collapse" href="#more-team" aria-expanded="false" aria-controls="more-team">
                <button class="green-bg">
                    <span class="more white"><?php echo __( 'Show all team members', 'preico' ) ?></span>
                    <span class="less white"><?php echo __( 'Show less team members', 'preico' ) ?></span>
                </button>
            </a>
        </div>
    <?php }?>
    
</div>