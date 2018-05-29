<div class="clear-pads menu-container">

    <?php

    $menu_locations = get_nav_menu_locations();
    $menu = $menu_locations[ 'primary' ];
    $menu = wp_get_nav_menu_items( $menu );

    ?>
    <div class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="<?php echo home_url() ?>" style="padding: 0;">
                                <div class="logo">
                                    <img src="<?php bloginfo('template_directory');?>/resources/images/svg/logo.svg">
                                </div>
                            </a>
                        </li>

                        <?php foreach ( $menu as $item ){?>
                            <li><a href="<?php echo $item->url; ?>"><?php echo $item->title; ?></a></li>
                        <?php } ?>

                        <li><a href="<?php echo get_site_url(); ?>">Join PRE-ICO</a></li>

                        <li>
                            <?php
                            global $q_config, $wp; $image_path = null;
                            $current_url = home_url(add_query_arg(array(),$wp->request)); ?>

                            <div class="dropdown">
                                <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                                    <span class="locale"><?php echo qtranxf_getLanguage(); ?></span>
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <?php foreach(qtrans_getSortedLanguages() as $language) { ?>
                                        <li><a href="<?php echo qtrans_convertURL($current_url, $language, false, true)?>"><?php echo strtoupper( $language ); ?></a></li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </li>
                    </ul>


                </div>
            </div>
        </nav>
    </div>

</div>