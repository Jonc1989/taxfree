<div id="posts col-xs-12 clear-pads">
    <div class="container">
        <h1 class="title"><?php echo __( 'КАК ПОЛУЧИТЬ 100% ВОЗВРАТ НДС', 'taxfree' ) ?></h1>

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
                    <div class="col-lg-6 col-md-6 col-sm-6 post-wrap">

                        <div><?php echo $n; ?></div>
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
                <?php $n++; endwhile; ?>
                <?php wp_reset_query(); ?>
            </div>
        <?php endif; ?>




        <div class="col-xs-12 clear-pads text-center">
            <div><img src="<?php bloginfo('template_directory');?>/resources/images/circle_icon.png"></div>
            <p>Получите 100% возврат</p>
            <p>ваш возврат будет автоматически зачислен на ваш счет
                после подтверждения штрих кодa</p>
        </div>
    </div>
</div>