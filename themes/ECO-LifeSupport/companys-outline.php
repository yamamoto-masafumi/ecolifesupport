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
                  <p>〒230-0048 <br class="pc-hidden"> 神奈川県横浜市鶴見区本町通 4-170-20-1F</p>
                </li>
                <li>
                  <h4>地図</h4>
                  <div class="ggmap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3248.1570336258455!2d139.6843001257346!3d35.50039508630147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x60185dfbbd6bf5a5%3A0x1c37e26edcd9eb8!2z44CSMjMwLTAwNDgg56We5aWI5bed55yM5qiq5rWc5biC6ba06KaL5Yy65pys55S66YCa77yU5LiB55uu77yR77yX77yQ!5e0!3m2!1sja!2sjp!4v1592819085100!5m2!1sja!2sjp" width="215px" height="215px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
                </li>
                <li>
                  <h4>電話番号</h4>
                  <p>0120-829-053</p>
                </li>
                <li>
                  <h4>URL</h4>
                  <p>https://ecolifesupport.com/</p>
                </li>
                <li>
                  <h4>E-mail</h4>
                  <p>contact@ecolifesupport.com</p>
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
  <p class="source-org copyright">Copyright &copy; <?php bloginfo( 'name' ); ?> All Rights Reserved.</p>
</div>


</div>

</div>
<?php get_footer(); ?>
</div>
