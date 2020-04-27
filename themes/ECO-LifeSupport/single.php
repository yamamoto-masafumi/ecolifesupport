<?php get_header(); ?>

<div id="content">

  <div id="inner-content" class="wrap cf">
    <main id="main" class="" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">
      <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <?php get_template_part( 'post-formats/format', get_post_format() ); ?>
      <?php endwhile; ?>
      <?php else : ?>
        <article id="post-not-found" class="hentry cf">
            <header class="article-header">
              <h1><?php _e( 'Oops, Post Not Found!', 'bonestheme' ); ?></h1>
            </header>
            <section class="entry-content">
              <p><?php _e( 'Uh Oh. Something is missing. Try double checking things.', 'bonestheme' ); ?></p>
            </section>
            <footer class="article-footer">
                <p><?php _e( 'This is the error message in the single.php template.', 'bonestheme' ); ?></p>
            </footer>
        </article>
      <?php endif; ?>
    </main>
  </div>
</div>

<?php get_footer(); ?>
