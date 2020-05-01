<?php
/*
 * Template Name: 会社概要
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">
        <div class="top-band">
          <h3>会社概要</h3>
        </div>
        <div class="company-contents">
          <div class="company-inner">
              <ul>
                <li>
                  <h4>商号</h4>
                  <p>エコライフサポート</p>
                </li>
                <li>
                  <h4>所在地</h4>
                  <p>〒144-0052 <br class="pc-hidden"> 東京都大田区蒲田5-21-13 ペガサスステーションプラザ蒲田B2</p>
                </li>
                <li>
                  <h4>地図</h4>
                  <div class="ggmap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3245.6651308539867!2d139.71691381507773!3d35.561971644111004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60186054e604807f%3A0x47e07f8d5967034f!2z44Ko44Kz44Op44Kk44OV44K144Od44O844OI!5e0!3m2!1sja!2sjp!4v1587992934989!5m2!1sja!2sjp" width="215px" height="215px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
                </li>
                <li>
                  <h4>電話番号</h4>
                  <p>0120-994-838</p>
                </li>
                <li>
                  <h4>URL</h4>
                  <p>https://ecolifesupport.com/</p>
                </li>
                <li>
                  <h4>E-mail</h4>
                  <p>info@ecolifesupport.com</p>
                </li>
                <li>
                  <h4>事業内容</h4>
                  <p>粗大ゴミ処分・不要品回収・遺品整理・ゴミ屋敷・引越し・出張買取・リサイクル販売</p>
                </li>
              </ul>
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
  <p class="source-org copyright">Copyright &copy; <?php bloginfo( 'name' ); ?> All Rights Reserved.</p>
</div>


</div>

</div>
<?php get_footer(); ?>
</div>
