<?php
/*
 * Template Name: お問い合わせ
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

        <div class="top-band">
          <h3>お問い合わせ</h3>
        </div>
		  
		  <div class="contact-text2">
          <h5>
          ※お客様の個人情報を、サービスご利用費用のお見積もりの目的以外に使用することはありません。
          </h5>
        </div>
		  
        <div class="contact-contents">
          <div class="inner-contact">
            <div class="contact-form">
              <?php echo do_shortcode( '[contact-form-7 id="92" title="contact"]' ); ?>
            </div>

        </div>
        </div>

    </main>
  </div>
</div>
<div id="inner-footer" class="cf footer-top">
  <div class="footer-top-inner">
    <div class="footer-top-inner-info">
      <div id="logo" class="logo" itemscope itemtype="http://schema.org/Organization">
        <a href="<?php echo home_url(); ?>" rel="nofollow">
          <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/logo.svg">
        </a>
      </div>
      <ul class="address">
        <li>〒230-0048</li>
          <li>神奈川県横浜市鶴見区本町通</li>
          <li>4-170-20-1F</li>
      </ul>
    </div>
    <nav role="navigation" itemscope itemtype="http://schema.org/SiteNavigationElement">
      <?php
        wp_nav_menu(array(
        'menu' => 'FooterMenu',
        'menu_class' => 'menu',
        'container' => 'div',
        ));
      ?>
    </nav>
  </div>
</div>
<p class="source-org copyright">Copyright &copy; <?php bloginfo( 'name' ); ?> All Rights Reserved.</p>
</div>


<?php get_footer(); ?>
