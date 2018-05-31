<div id="posts" class="col-xs-12 clear-pads">
    <div class="container">
        <h1 class="title text-center"><span class="dark"><?php echo __( 'КАК ПОЛУЧИТЬ ', 'taxfree' ) ?></span>
            <span class="green"><?php echo __( '100% ВОЗВРАТ НДС', 'taxfree' ) ?></span></h1>

        <?php
        $args = array(
            'post_type'      => 'post',
            'post_status'    => 'publish',
            'posts_per_page' => '-1',
            'orderby'        => 'post_date',
            'order'          => 'DESC'
        );

        $posts = new WP_Query( $args );

        if ( $posts->have_posts() ) : ?>

            <?php $n = 1;?>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 clear-pads posts-wrap">
                <?php while ( $posts->have_posts() ) : $posts->the_post(); ?>
                    <div class="col-lg-6 col-md-6 col-sm-6 post-wrap white-bg">

                        <div class="col-xs-12 shadow center-horizontaly">
                            <div class="post-number gray-bg text-center"><?php echo $n; ?></div>
                            <div class="col-lg-4 col-md-4 clear-pads">
                                <div class="col-lg-12 col-md-12 clear-pads">
                                    <?php $image = wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() )); ?>
                                    <?php if($image) { ?>
                                        <div class="description-post-img" style="height: 150px; background: url(<?php echo $image; ?>)no-repeat center center;
                                            -webkit-background-size: contain;
                                            -moz-background-size: contain;
                                            -o-background-size: contain;
                                            background-size: contain;">
                                        </div>
                                    <?php } ?>
                                </div>
                            </div>
    
    
                            <div class="col-lg-8 col-md-8 clear-pads">
                                <h3><?php the_title(); ?></h3>
                                <p><?php the_content(); ?></p>
                            </div>
                        
                        
                        
                        </div>
                    </div>
                <?php $n++; endwhile; ?>
                <?php wp_reset_query(); ?>
            </div>
        <?php endif; ?>

    </div>
</div>