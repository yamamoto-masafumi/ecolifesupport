<!doctype html>

<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

	<head>
		<meta charset="utf-8">

		<?php // force Internet Explorer to use the latest rendering engine available ?>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title><?php wp_title(''); ?></title>

		<?php // mobile meta (hooray!) ?>
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="viewport" content="width=device-width, initial-scale=1"/>

		<?php // icons & favicons (for more: http://www.jonathantneal.com/blog/understand-the-favicon/) ?>
		<link rel="apple-touch-icon" href="<?php echo get_template_directory_uri(); ?>/library/images/apple-touch-icon.png">
		<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png">
		<!--[if IE]>
			<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico">
		<![endif]-->
		<?php // or, set /favicon.ico for IE10 win ?>
		<meta name="msapplication-TileColor" content="#f01d4f">
		<meta name="msapplication-TileImage" content="<?php echo get_template_directory_uri(); ?>/library/images/win8-tile-icon.png">
            <meta name="theme-color" content="#121212">

		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">

		<?php // wordpress head functions ?>
		<?php wp_head(); ?>
		<?php // end of wordpress head ?>

		<?php // drop Google Analytics Here ?>
		<?php // end analytics ?>

	</head>

	<body <?php body_class(['drawer', 'drawer--top']); ?> itemscope itemtype="http://schema.org/WebPage">
    <header class="header" role="banner" itemscope itemtype="http://schema.org/WPHeader">
      <div id="header_main" class="header-top">
        <div class="header-top-left">
          <div id="description" class="description">
            <span class="description_str"><?php bloginfo( 'description' ); ?></span>
          </div>
          <div id="logo" class="logo" itemscope itemtype="http://schema.org/Organization">
            <a href="<?php echo home_url(); ?>" rel="nofollow">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/logo.svg">
            </a>
          </div>
        </div>
        <div class="header-top-right">
          <div class="watch"></div>
          <div id="phone" class="phone">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/phone.svg">
            <div class="phone-details">
              <span class="phone-number">0120-994-834</span>
              <span class="phone-time">8:00-21:00（年中無休）</span>
            </div>
          </div>
          <a href="<?php echo home_url('/contact'); ?>">
            <div id="quote" class="quote">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/estimate.svg">
              <span>無料お見積り</span>
            </div>
          </a>
        </div>
      </div>
      <div id="inner-header" class="wrap cf header-menu">
        <div id="hamburger-btn" class="hamburger-btn">
          <span class="top"></span>
          <span class="center"></span>
          <span class="bottom"></span>
        </div>
        <nav id="hamburger-nav" class="hamburger-nav" role="navigation" itemscope itemtype="http://schema.org/SiteNavigationElement">
          <ul class="menu-MainMenu">
          <?php
            $menu_items = wp_get_nav_menu_items('MainMenu');
            foreach($menu_items as $menu):
              $page_id = $menu->object_id;
              $thumbnail_id = get_post_thumbnail_id($page_id);
              $image_attributes = wp_get_attachment_image_src($thumbnail_id);
              $content = get_page($page_id);
              ?>
              <li>
                <?php if($content->post_title === 'HOME'): ?>
                  <a href="<?php echo home_url(); ?>">
                  <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/home.svg" alt="" />
                <?php elseif($content->post_title === '対応エリア'): ?>
                  <a href="#area">
                  <img src="<?php echo $image_attributes[0]; ?>" alt="" />
                <?php else: ?>
                  <a href="<?php echo get_permalink($page_id); ?>">
                  <img src="<?php echo $image_attributes[0]; ?>" alt="" />
                <?php endif ?>
                  <span><?php echo $content->post_title; ?></span>
                </a>
              </li>
            <?php endforeach; ?>
          </ul>
        </nav>
      </div>
    </header>