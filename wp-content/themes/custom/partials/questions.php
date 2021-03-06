<div class="col-md-12 col-sm-12 col-xs-12 clear-pads blue-border-top" id="questions">
    <div class="col-md-12 col-sm-12 col-xs-12 clear-pads wrap">
        <div class="container">
            <h1 class="title white text-center"><?php echo __( 'Самые частые вопросы', 'taxfree' ) ?></h1>
            <div class="question-wrap col-xs-12">
                <?php
                $args = array(
                    'post_type'      => 'questions',
                    'post_status'    => 'publish',
                    'orderby'        => 'post_date',
                    'order'          => 'DESC'
                );
                $posts = new WP_Query( $args );

                if ( $posts->have_posts() ) : ?>

                    <?php while ( $posts->have_posts() ) : $posts->the_post(); ?>

                        <a class="collapsed" data-toggle="collapse" href="#id<?php echo get_the_ID();?>" role="button" aria-expanded="false" aria-controls="id<?php echo get_the_ID();?>">
                            <div class="question-toggle dark">
                                <div class="col-md-12 col-sm-12 col-xs-12 question-title"> <?php the_title(); ?></div>

                                <div>
                                    <img class="bullet" src="<?php bloginfo('template_directory');?>/resources/images/svg/cross.svg">
                                </div>
                            </div>
                        </a>

                        <div class="collapse" id="id<?php echo get_the_ID();?>">
                            <div class="questions">
                                <?php the_content(); ?>
                            </div>
                        </div>

                    <?php endwhile; ?>
                    <?php wp_reset_query(); ?>
                <?php endif; ?>
            </div>

        </div>
        <div class="col-md-12 col-sm-12 col-xs-12 clear-pads green-bg text-center">
            <p class="bold first-title white"><?php echo __( 'Принять участие в революционном проекте', 'taxfree' ) ?></p>
            <p class="second-title white"><?php echo __( 'Current discount', 'taxfree' ) ?>: 75% <?php echo __( 'from PRE ICO base price', 'taxfree' ) ?></p>
            <a href="">
                <button class="white-bg bold"><?php echo __( 'Get my TFC', 'taxfree' ) ?></button>
            </a>

        </div>
    </div>
</div>