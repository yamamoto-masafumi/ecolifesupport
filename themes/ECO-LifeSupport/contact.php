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

        <div class="contact-contents">
          <div class="inner-contact">
            <br><br>
            <div class="contact-form">
            <?php if(wp_is_mobile()) : ?>
              <?php echo do_shortcode( '[contact-form-7 id="93" title="contact"]' ); ?>
            <?php else : ?>
              <br>
              <?php echo do_shortcode( '[contact-form-7 id="92" title="contact_pc"]' ); ?>
              <?php endif; ?>
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
        <li>〒144-0052</li>
        <li>東京都大田区蒲田5-21-13</li>
        <li>ペガサスステーションプラザ蒲田B2</li>
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

</div>
<?php get_footer(); ?>
</div>
