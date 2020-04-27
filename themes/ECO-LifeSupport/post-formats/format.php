<article id="post-<?php the_ID(); ?>" <?php post_class('cf'); ?> role="article" itemscope itemprop="blogPost" itemtype="http://schema.org/BlogPosting">
  <header class="article-header entry-header">
    <header class="sub-header-notice">
      <div class="header-title">
        <h3>お知らせ</h3>
      </div>
    </header>
    <p class="header-bottom">HOME > お知らせ > <span><?php the_time('Y.m.d'); echo the_title(); ?></span></p>
    <h1 class="entry-title single-title" itemprop="headline" rel="bookmark"><?php the_title(); ?></h1>
    <p class="byline entry-meta vcard">
      <?php the_time('Y.m.d'); ?>
    </p>
  </header> <?php // end article header ?>

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
  <a href="" class="">一覧ページに戻る</a>

  <?php //comments_template(); ?>
</article> <?php // end article ?>
