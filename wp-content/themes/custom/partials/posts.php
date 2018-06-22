<div id="posts" class="col-xs-12 clear-pads">
    <div class="container">
        <h1 class="title text-center"><div class="dark inline"><?php echo __( 'КАК ПОЛУЧИТЬ ', 'taxfree' ) ?></div>
            <div class="inline green"><?php echo __( '100% ВОЗВРАТ НДС', 'taxfree' ) ?></div></h1>

        <?php
        $args = array(
            'post_type'      => 'post',
            'post_status'    => 'publish',
            'posts_per_page' => '-1',
            'orderby'        => 'post_date',
            'order'          => 'ASC'
        );

        $posts = new WP_Query( $args );

        if ( $posts->have_posts() ) : ?>

            <?php $n = 1;?>

            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 clear-pads posts-wrap">
                <?php while ( $posts->have_posts() ) : $posts->the_post(); ?>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 post-wrap white-bg">

                        <div class="col-xs-12 shadow">
                            <div class="post-number gray-bg text-center"><?php echo $n; ?></div>
                            <div class="col-lg-4 col-md-4 col-sm-4 hidden-xs clear-pads">
                                <?php $image = wp_get_attachment_url( get_post_thumbnail_id( get_the_ID() )); ?>
                                <div class="description-post-img" style="background: url(<?php echo $image; ?>)no-repeat center center;
                                    -webkit-background-size: contain;
                                    -moz-background-size: contain;
                                    -o-background-size: contain;
                                    background-size: contain;">
                                </div>
                            </div>
    
    
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 text-block">
                                <h4 class="bold"><?php the_title(); ?></h4>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 text-block">
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