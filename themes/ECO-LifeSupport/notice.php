<?php
/*
 * Template Name: お知らせ一覧
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
    <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">
      <header class="sub-header-notice">
        <div class="header-title">
          <h3>お知らせ</h3>
        </div>
      </header>
      <p class="header-bottom">HOME > <span>お知らせ</span></p>


        <div class="notice-menu">
          <div class="notice-title">
            <h3>お知らせ一覧</h3>
            <div class="border"></div>
          </div>
          

              <div class="inner-notice">
                <div class="noticelist">
                  <?php 
                    $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                    $args = array(
                      'post_type' => 'post',
                      'post_status' => array('publish'),
                      'order'=>'desc',
                      'orderby'=>'post_date',
                      'paged' => $paged,
                      'posts_per_page' => 10
                    );
                    $query = new WP_Query($args);
                    if ( $query->have_posts() ) :
                      while ( $query->have_posts() ) : $query->the_post();?>
                      <div class="inner-notice-menu month-<?php echo get_the_date('m'); ?>">
                        <span class="date"><?php echo get_the_date('Y.m.d'); ?></span>
                        <span class="title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></span>
                        <div class="border"></div>
                      </div>
                    <?php endwhile; ?>
                  <?php endif; wp_reset_postdata();?>
                </div>
                <?php
                  $big = 999999999;
                  echo paginate_links(array(
                    'base' => str_replace($big, '%#%', esc_url(get_pagenum_link($big))),
                    'show_all' => true,
                    'type' => 'list',
                    'format' => '?paged=%#%',
                    'current' => max(1, get_query_var('paged')),
                    'total' => $query->max_num_pages,
                    'prev_text' => 'Prev',
                    'next_text' => 'Next',
                  ));
                ?>
              </div>
              <div class="notice-menu-right">
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

		<?php // all js scripts are loaded in library/bones.php ?>
	</body>


<?php //get_footer(); ?>
</div>
