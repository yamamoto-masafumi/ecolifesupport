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
            <div class="border"></div>
              <div class="text">
                <ul>
                  <li class="item">商号</li>
                  <li class="itemtext">エコライフサポート</li>
                </ul>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <ul>
                  <li class="item">
                  所在地
                  </li>
                  <li class="itemtext">
                  〒144-0052　東京都大田区蒲田5-21-13 ペガサスステーションプラザ蒲田B2
                  </li>
                </ul>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <p class="map-title">地図</p>
                <div class="ggmap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3245.6651308539867!2d139.71691381507773!3d35.561971644111004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60186054e604807f%3A0x47e07f8d5967034f!2z44Ko44Kz44Op44Kk44OV44K144Od44O844OI!5e0!3m2!1sja!2sjp!4v1587992934989!5m2!1sja!2sjp" width="100%" height="400px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <ul>
                  <li class="item">
                  電話番号
                  </li>
                  <li class="itemtext2">
                  0120-994-838
                  </li>
                </ul>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <ul>
                  <li class="item">
                  URL
                  </li>
                  <li class="itemtext2">
                  https://ecolifesupport.com/
                  </li>
                </ul>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <ul>
                  <li class="item">
                  E-mail
                  </li>
                  <li class="itemtext2">
                  info@ecolifesupport.com
                  </li>
                </ul>
              </div>
              <div class="bordergreen"></div>
              <div class="text">
                <ul>
                  <li class="item">
                  事業内容	
                  </li>
                  <li class="itemtext2">
                  粗大ゴミ処分・不要品回収・遺品整理・ゴミ屋敷・引越し・出張買取・リサイクル販売
                  </li>
                </ul>
              </div>
              <div class="bordergreen"></div>
            </div>
          </div>
        </div >
      </main>
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

</div>
<?php get_footer(); ?>
</div>
