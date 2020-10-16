<article id="post-<?php the_ID(); ?>" <?php post_class('cf'); ?> role="article" itemscope itemprop="blogPost" itemtype="http://schema.org/BlogPosting">
  <header class="sub-header-notice">
    <div class="header-title">
      <h3>お知らせ</h3>
    </div>
  </header>
  <p class="header-bottom">HOME > お知らせ > <span><?php the_time('Y.m.d'); echo the_title(); ?></span></p>
  <div class="single-format">
    <div class="post-menu">
      <div class="notice-title">
        <h3 class="entry-title single-title" itemprop="headline" rel="bookmark"><?php the_title(); ?></h3>
        <div class="border"></div>
        <div class="thetime">
          <p class="byline entry-meta vcard">
            <?php the_time('Y.m.d'); ?>
          </p>
        </div>
      </div>
      <div class="post-contents">
        <section class="entry-content cf" itemprop="articleBody">
          <div class="entry-content-left">
            <?php
              // the content (pretty self explanatory huh)
              the_content();
              wp_link_pages( array(
                'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'bonestheme' ) . '</span>',
                'after'       => '</div>',
                'link_before' => '<span>',
                'link_after'  => '</span>',
              ) );
            ?>
          </div>
          <div class="entry-content-right">
          </div>
        </section>
        <a href="<?php echo home_url('/notice'); ?>"><div class="post-btn">一覧ページに戻る</div></a>
      </div>
    </div>
    <div class="noticelist">
      <div class="noticelist-inner">
        <?php if(wp_is_mobile()) : ?>
        <?php else : ?>
          <div class="tree"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice-tree.png"></div>
        <?php endif; ?>
        <p class="past-title">過去の知らせ</p>
        <!-- 過去のお知らせ一覧 -->
        <div class="past-notice">
          <ul>
            <?php
              print_r(wp_get_archives(array(
                'type' => 'monthly',
                'format' => 'html',
                'echo' => 1,
                'order' => 'DESC'
              )));
            ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
</article>
