<?php
/*
 * Template Name: 採用情報
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

        <div class="top-band">
          <h3>採用事項</h3>
        </div>

        <div class="recruitment-contents">
          <div class="inner-recruitment">
            <h3 class="title">募集概要</h3>
            <div class="border"></div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
                  応募資格
                </li>
                <li class="itemtext">
                  20歳〜30歳<br>
                  普通免許<br>
                  営業経験ある方<br>
                  研修期間（３ヶ月）<br>
                  研修終了後、正社員
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
                  勤務時間
                </li>
                <li class="itemtext">
                  10:00〜19:00（休憩１時間）
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
                  給与&emsp;&emsp;
                </li>
                <li class="itemtext">
                  研修期間&emsp;&emsp;&emsp;&emsp;250,000円<br>
                  研修期間終了時&emsp;<span>280,000円</span>
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
                  昇給・給与
                </li>
                <li class="itemtext2">
                  インセンティブあり<br>
                  業績に応じてボーナスあり
                </li>
              </ul>
            </div>

            <div class="bordergreen"></div>
            <h3 class="title">応募フォーム</h3>
            <div class="border"></div>
            <div class="contact-form">
            <?php if(wp_is_mobile()) : ?>
              <?php echo do_shortcode( '[contact-form-7 id="87" title="recruitment"]' ); ?>
            <?php else : ?>
              <?php echo do_shortcode( '[contact-form-7 id="91" title="recruitment"]' ); ?>
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
