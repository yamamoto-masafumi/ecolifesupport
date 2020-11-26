<article id="post-<?php the_ID(); ?>" <?php post_class('cf'); ?> role="article" itemscope itemprop="blogPost" itemtype="http://schema.org/BlogPosting">
  <header class="sub-header-useful">
    <div class="header-title">
      <h3>お役立ちコンテンツ</h3>
    </div>
  </header>
  <p class="header-bottom">HOME > お役立ちコンテンツ > <span><?php the_time('Y.m.d'); echo the_title(); ?></span></p>
  <div class="usefularticle-format">
    <!-- 1ｶﾗﾑ -->
    <div class="post-menu">
      <div class="usefularticle-title">
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
          <div class="">
            <h3>リサイクル品の回収にお困りの際は</h3>
            <p>ぜひエコライフサポートまで<span><a href="https://ecolifesupport.com/contact/">お問い合わせ</a></span>下さい。<br>
            経験豊富なスタッフがお見積りと、作業に伺います。<br>
            お見積りは無料ですので、お値段の折り合いがつかない場合は、お断り頂いてもかまいません。<br>
            <br>
            まずは1度<span><a href="tel:0120-829-053">フリーダイヤル</a></span>にご連絡ください。</p>
          </div>
          <div class="boder_bottum"></div>
          <div class="usefularticle-cv">
            <div class="usefularticle-cv_img">
            
            <?php if(wp_is_mobile()) : ?>
                <a href="<?php echo home_url('/contact'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/useful-contents/corner-sp.png"></a>
              <?php else : ?>
                <a href="<?php echo home_url('/contact'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/useful-contents/corner.jpg"></a>
              <?php endif; ?>

            </div>
          </div>  
          <div class="entry-content-right"></div>
        </section>
        <a href="<?php echo home_url('/contact'); ?>"><div class="usefularticle-btn">お問い合わせはこちら></div></a>


        <div class="useful-border"></div>
        <!-- ボタン -->
        <div class="pagebtn">
          <div class="prevbtn">
              <?php if (get_previous_post()):?>
                <?php if(wp_is_mobile()) : ?>
                  <?php previous_post_link('%link', '<img src="'. get_template_directory_uri().'/library/images/icon/arrow-left-green.png" alt="前の記事" width="7"/>'); ?>
                <?php else : ?>
                  <?php previous_post_link('%link', '前の記事'); ?>
                <?php endif; ?>
              <?php endif; ?>
          </div>
          <div class="centerbtn">
            <a href="<?php echo home_url('/usefull'); ?>">一覧ページに戻る</a>
          </div>
          <div class="nextbtn">
              <?php if (get_next_post()):?>
                <?php if(wp_is_mobile()) : ?>
                  <?php next_post_link('%link', '<img src="'. get_template_directory_uri().'/library/images/icon/arrow-right-green.png" alt="次の記事" width="7"/>'); ?>
                <?php else : ?>
                  <?php next_post_link('%link', '次の記事'); ?>
                <?php endif; ?>
              <?php endif; ?>
          </div>
        </div>
        <!-- ボタン -->
       
        <!-- 関連記事 -->
        <div class="usefulart-catalog">
          <div class="relation">関連記事一覧</div>
          <?php
            $categ = get_the_category($post->ID);
            $catID = array();
            foreach($categ as $cat){
              array_push($catID, $cat -> cat_ID);
            }
            $args = array(
              'post__not_in' => array($post->ID),
              'category__in' => $catID,
              'posts_per_page' => 6,
              'orderby' => 'rand',
              'post_type' => array('useful')
            );
            $the_query = new WP_Query($args);
            if($the_query -> have_posts()) :?>
            <div class="relatedposts">
              <?php while($the_query -> have_posts()) : $the_query -> the_post();
              ?>
              <div class="cell">
                <div class="thumbnail">
                  <a href="<?php the_permalink(); ?>">
                  <!-- 20201117_変更箇所_thumnailからfull -->
                    <?php if(has_post_thumbnail()): the_post_thumbnail('full');
                      else: ?>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/noimage.jpg" alt="<?php the_title(); ?>">
                    <?php endif; ?>
                  </a>
                </div>
                <div class="post-title">
                  <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                </div>
              </div>
              <?php endwhile; ?>
              <?php endif; wp_reset_postdata(); ?>
            </div>
        </div>
      </div>
    </div><!-- post-menuの閉じ -->

       <!-- ここからサイドバー -->
    <div id="usefularticlelist" class="usefularticlelist">
      <div class="usefularticlelist-inner">
        <?php if(wp_is_mobile()) : ?>
        <?php else : ?>
            <div class="tree"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice-tree.png"></div>
        <?php endif; ?>
          <?php get_sidebar(); ?>
          <!-- <p class="past-title">人気記事コーナー</p> -->
          <!-- 過去のお知らせ一覧 -->
        </div>
    </div>
     
  </div><!-- usefularticle-formatの閉じ -->

</article>
