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
					<p>応募資格</p>
                </li>
                <li class="itemtext">
                 <p> 20歳〜30歳<br>
                  普通免許<br>
                  営業経験ある方<br>
                  研修期間（３ヶ月）<br>
					 研修終了後、正社員</p>
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
					<p>勤務時間</p>
                </li>
                <li class="itemtext">
					<p>10:00〜19:00（休憩１時間）</p>
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
					<p>給与</p>
                </li>
                <li class="itemtext">
					<p>研修期間　250,000円<br>
						研修期間終了時　280,000円</p>
                </li>
              </ul>
            </div>
            <div class="bordergreen"></div>
            <div class="text">
              <ul>
                <li class="item">
					<p>昇給・賞与</p>
                </li>
                <li class="itemtext">
					<p>インセンティブあり<br>
						業績に応じてボーナスあり</p>
                </li>
              </ul>
            </div>
			  
            <div class="bordergreen"></div>
            <h3 class="title">応募フォーム</h3>
            <div class="border"></div>
			</div> 
			</div>
			<div class="contact-contents">
          <div class="inner-contact">
            <div class="contact-form recruitment">
              <?php echo do_shortcode( '[contact-form-7 id="91" title="recruitment"]' ); ?>
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

