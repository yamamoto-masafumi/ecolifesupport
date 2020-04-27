<?php
/*
Author: Eddie Machado
URL: http://themble.com/bones/

This is where you can drop your custom functions or
just edit things like thumbnail sizes, header images,
sidebars, comments, etc.
*/

// LOAD BONES CORE (if you remove this, the theme will break)
require_once( 'library/bones.php' );

// CUSTOMIZE THE WORDPRESS ADMIN (off by default)
// require_once( 'library/admin.php' );

/*********************
LAUNCH BONES
Let's get everything up and running.
*********************/

function bones_ahoy() {

  //Allow editor style.
  add_editor_style( get_stylesheet_directory_uri() . '/library/css/editor-style.css' );

  // let's get language support going, if you need it
  load_theme_textdomain( 'bonestheme', get_template_directory() . '/library/translation' );

  // USE THIS TEMPLATE TO CREATE CUSTOM POST TYPES EASILY
  require_once( 'library/custom-post-type.php' );

  // launching operation cleanup
  add_action( 'init', 'bones_head_cleanup' );
  // A better title
  add_filter( 'wp_title', 'rw_title', 10, 3 );
  // remove WP version from RSS
  add_filter( 'the_generator', 'bones_rss_version' );
  // remove pesky injected css for recent comments widget
  add_filter( 'wp_head', 'bones_remove_wp_widget_recent_comments_style', 1 );
  // clean up comment styles in the head
  add_action( 'wp_head', 'bones_remove_recent_comments_style', 1 );
  // clean up gallery output in wp
  add_filter( 'gallery_style', 'bones_gallery_style' );

  // enqueue base scripts and styles
  add_action( 'wp_enqueue_scripts', 'bones_scripts_and_styles', 999 );
  // ie conditional wrapper

  // launching this stuff after theme setup
  bones_theme_support();

  // adding sidebars to Wordpress (these are created in functions.php)
  add_action( 'widgets_init', 'bones_register_sidebars' );

  // cleaning up random code around images
  add_filter( 'the_content', 'bones_filter_ptags_on_images' );
  // cleaning up excerpt
  add_filter( 'excerpt_more', 'bones_excerpt_more' );

} /* end bones ahoy */

// let's get this party started
add_action( 'after_setup_theme', 'bones_ahoy' );


/************* OEMBED SIZE OPTIONS *************/

if ( ! isset( $content_width ) ) {
	$content_width = 680;
}

/************* THUMBNAIL SIZE OPTIONS *************/

// Thumbnail sizes
add_image_size( 'bones-thumb-600', 600, 150, true );
add_image_size( 'bones-thumb-300', 300, 100, true );

/*
to add more sizes, simply copy a line from above
and change the dimensions & name. As long as you
upload a "featured image" as large as the biggest
set width or height, all the other sizes will be
auto-cropped.

To call a different size, simply change the text
inside the thumbnail function.

For example, to call the 300 x 100 sized image,
we would use the function:
<?php the_post_thumbnail( 'bones-thumb-300' ); ?>
for the 600 x 150 image:
<?php the_post_thumbnail( 'bones-thumb-600' ); ?>

You can change the names and dimensions to whatever
you like. Enjoy!
*/

add_filter( 'image_size_names_choose', 'bones_custom_image_sizes' );

function bones_custom_image_sizes( $sizes ) {
    return array_merge( $sizes, array(
        'bones-thumb-600' => __('600px by 150px'),
        'bones-thumb-300' => __('300px by 100px'),
    ) );
}

/*
The function above adds the ability to use the dropdown menu to select
the new images sizes you have just created from within the media manager
when you add media to your content blocks. If you add more image sizes,
duplicate one of the lines in the array and name it according to your
new image size.
*/

/************* THEME CUSTOMIZE *********************/

/* 
  A good tutorial for creating your own Sections, Controls and Settings:
  http://code.tutsplus.com/series/a-guide-to-the-wordpress-theme-customizer--wp-33722
  
  Good articles on modifying the default options:
  http://natko.com/changing-default-wordpress-theme-customization-api-sections/
  http://code.tutsplus.com/tutorials/digging-into-the-theme-customizer-components--wp-27162
  
  To do:
  - Create a js for the postmessage transport method
  - Create some sanitize functions to sanitize inputs
  - Create some boilerplate Sections, Controls and Settings
*/

function bones_theme_customizer($wp_customize) {
  // $wp_customize calls go here.
  //
  // Uncomment the below lines to remove the default customize sections 

  // $wp_customize->remove_section('title_tagline');
  // $wp_customize->remove_section('colors');
  // $wp_customize->remove_section('background_image');
  // $wp_customize->remove_section('static_front_page');
  // $wp_customize->remove_section('nav');

  // Uncomment the below lines to remove the default controls
  // $wp_customize->remove_control('blogdescription');
  
  // Uncomment the following to change the default section titles
  // $wp_customize->get_section('colors')->title = __( 'Theme Colors' );
  // $wp_customize->get_section('background_image')->title = __( 'Images' );
}

add_action( 'customize_register', 'bones_theme_customizer' );

/************* ACTIVE SIDEBARS ********************/

// Sidebars & Widgetizes Areas
function bones_register_sidebars() {
	register_sidebar(array(
		'id' => 'sidebar1',
		'name' => __( 'Sidebar 1', 'bonestheme' ),
		'description' => __( 'The first (primary) sidebar.', 'bonestheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	/*
	to add more sidebars or widgetized areas, just copy
	and edit the above sidebar code. In order to call
	your new sidebar just use the following code:

	Just change the name to whatever your new
	sidebar's id is, for example:

	register_sidebar(array(
		'id' => 'sidebar2',
		'name' => __( 'Sidebar 2', 'bonestheme' ),
		'description' => __( 'The second (secondary) sidebar.', 'bonestheme' ),
		'before_widget' => '<div id="%1$s" class="widget %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h4 class="widgettitle">',
		'after_title' => '</h4>',
	));

	To call the sidebar in your template, you can just copy
	the sidebar.php file and rename it to your sidebar's name.
	So using the above example, it would be:
	sidebar-sidebar2.php

	*/
} // don't remove this bracket!


/************* COMMENT LAYOUT *********************/

// Comment Layout
function bones_comments( $comment, $args, $depth ) {
   $GLOBALS['comment'] = $comment; ?>
  <div id="comment-<?php comment_ID(); ?>" <?php comment_class('cf'); ?>>
    <article  class="cf">
      <header class="comment-author vcard">
        <?php
        /*
          this is the new responsive optimized comment image. It used the new HTML5 data-attribute to display comment gravatars on larger screens only. What this means is that on larger posts, mobile sites don't have a ton of requests for comment images. This makes load time incredibly fast! If you'd like to change it back, just replace it with the regular wordpress gravatar call:
          echo get_avatar($comment,$size='32',$default='<path_to_url>' );
        */
        ?>
        <?php // custom gravatar call ?>
        <?php
          // create variable
          $bgauthemail = get_comment_author_email();
        ?>
        <img data-gravatar="http://www.gravatar.com/avatar/<?php echo md5( $bgauthemail ); ?>?s=40" class="load-gravatar avatar avatar-48 photo" height="40" width="40" src="<?php echo get_template_directory_uri(); ?>/library/images/nothing.gif" />
        <?php // end custom gravatar call ?>
        <?php printf(__( '<cite class="fn">%1$s</cite> %2$s', 'bonestheme' ), get_comment_author_link(), edit_comment_link(__( '(Edit)', 'bonestheme' ),'  ','') ) ?>
        <time datetime="<?php echo comment_time('Y-m-j'); ?>"><a href="<?php echo htmlspecialchars( get_comment_link( $comment->comment_ID ) ) ?>"><?php comment_time(__( 'F jS, Y', 'bonestheme' )); ?> </a></time>

      </header>
      <?php if ($comment->comment_approved == '0') : ?>
        <div class="alert alert-info">
          <p><?php _e( 'Your comment is awaiting moderation.', 'bonestheme' ) ?></p>
        </div>
      <?php endif; ?>
      <section class="comment_content cf">
        <?php comment_text() ?>
      </section>
      <?php comment_reply_link(array_merge( $args, array('depth' => $depth, 'max_depth' => $args['max_depth']))) ?>
    </article>
  <?php // </li> is added by WordPress automatically ?>
<?php
} // don't remove this bracket!


/*
This is a modification of a function found in the
twentythirteen theme where we can declare some
external fonts. If you're using Google Fonts, you
can replace these fonts, change it in your scss files
and be up and running in seconds.
*/
function bones_fonts() {
  wp_enqueue_style('googleFonts', '//fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic');
}

add_action('wp_enqueue_scripts', 'bones_fonts');


//Add My Scripts
//jQuery
function jquery_script(){
  wp_enqueue_script(
    'jquery',
    'https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js',
    '3.4.1'
  );
}
add_action('wp_enqueue_scripts', 'jquery_script');

//Hamburger
function hamburger_script() {
  wp_enqueue_script(
    'hamburger-js',
    get_template_directory_uri() . '/library/js/hamburger.js'
  );
}
add_action('wp_enqueue_scripts', 'hamburger_script');

//Swiper
function swiper_script(){
  wp_enqueue_script(
    'swiper-js',
    'https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/js/swiper.min.js'
  );
  wp_enqueue_script(
    'swiper-top-js',
    get_template_directory_uri() . '/library/js/swiper/config.js'
  );
}
add_action('wp_enqueue_scripts', 'swiper_script');

function swiper_styles(){
  wp_enqueue_style(
    'swiper-style',
    'https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.4.1/css/swiper.min.css'
  );
}
add_action('wp_enqueue_scripts', 'swiper_styles');

//DropDown
function dropdown_script(){
  wp_enqueue_script(
    'dropdown-js',
    get_template_directory_uri() . '/library/js/dropdown.js'
  );
}
add_action('wp_enqueue_scripts', 'dropdown_script');

//Watch
function watch_script(){
  wp_enqueue_script(
    'watch-js',
    get_template_directory_uri() . '/library/js/watch.js'
  );
}
add_action('wp_enqueue_scripts', 'watch_script');

//headermenu
function headermenu_script(){
  wp_enqueue_script(
    'headermenu-js',
    get_template_directory_uri() . '/library/js/headermenu.js'
  );
}
add_action('wp_enqueue_scripts', 'headermenu_script');

//footerfixbtn
function footerfixbtn_script(){
  wp_enqueue_script(
    'footerfixbtn-js',
    get_template_directory_uri() . '/library/js/footerfixbtn.js'
  );
}
add_action('wp_enqueue_scripts', 'footerfixbtn_script');

//Archive Format
add_filter('gettext', 'my_gettext', 20, 3);
function my_gettext($translated_text, $original_text, $domain) {
  if ($original_text == '%1$s %2$d') {
    $translated_text = '%2$s年　%1$02d月';
  }
  return $translated_text;
}

//Make Archive Func
function get_archives_link2($url, $text, $format = 'html', $before = '', $after = '') {
  $text = wptexturize($text);
  $url = esc_url($url);

  if ('link' == $format)
      $link_html = "\t<link rel='archives' title='" . esc_attr( $text ) . "' href='$url' />\n";
  elseif ('option' == $format)
      $link_html = "\t<option value='$url'>$before $text $after</option>\n";
  elseif ('html' == $format)
      $link_html = "\t<li>$text</li>\n";
  else // custom
      $link_html = "\t$before<a href='$url'>$text</a>$after\n";

  /**
   * Filter the archive link content.
   *
   * @since 2.6.0
   *
   * @param string $link_html The archive HTML link content.
   */
  $link_html = apply_filters( 'get_archives_link', $link_html );

  return $link_html;
}

function wp_get_archives2( $args = '' ) {
  global $wpdb, $wp_locale;

  $defaults = array(
      'type' => 'monthly', 'limit' => '',
      'format' => 'html', 'before' => '',
      'after' => '', 'show_post_count' => false,
      'echo' => 1, 'order' => 'DESC',
  );

  $r = wp_parse_args( $args, $defaults );

  if ( '' == $r['type'] ) {
      $r['type'] = 'monthly';
  }

  if ( ! empty( $r['limit'] ) ) {
      $r['limit'] = absint( $r['limit'] );
      $r['limit'] = ' LIMIT ' . $r['limit'];
  }

  $order = strtoupper( $r['order'] );
  if ( $order !== 'ASC' ) {
      $order = 'DESC';
  }

  // this is what will separate dates on weekly archive links
  $archive_week_separator = '&#8211;';

  // over-ride general date format ? 0 = no: use the date format set in Options, 1 = yes: over-ride
  $archive_date_format_over_ride = 0;

  // options for daily archive (only if you over-ride the general date format)
  $archive_day_date_format = 'Y/m/d';

  // options for weekly archive (only if you over-ride the general date format)
  $archive_week_start_date_format = 'Y/m/d';
  $archive_week_end_date_format   = 'Y/m/d';

  if ( ! $archive_date_format_over_ride ) {
      $archive_day_date_format = get_option( 'date_format' );
      $archive_week_start_date_format = get_option( 'date_format' );
      $archive_week_end_date_format = get_option( 'date_format' );
  }

  /**
   * Filter the SQL WHERE clause for retrieving archives.
   *
   * @since 2.2.0
   *
   * @param string $sql_where Portion of SQL query containing the WHERE clause.
   * @param array  $r         An array of default arguments.
   */
  $where = apply_filters( 'getarchives_where', "WHERE post_type = 'post' AND post_status = 'publish'", $r );

  /**
   * Filter the SQL JOIN clause for retrieving archives.
   *
   * @since 2.2.0
   *
   * @param string $sql_join Portion of SQL query containing JOIN clause.
   * @param array  $r        An array of default arguments.
   */
  $join = apply_filters( 'getarchives_join', '', $r );

  $output = '';

  $last_changed = wp_cache_get( 'last_changed', 'posts' );
  if ( ! $last_changed ) {
      $last_changed = microtime();
      wp_cache_set( 'last_changed', $last_changed, 'posts' );
  }

  $limit = $r['limit'];

  if ( 'monthly' == $r['type'] ) {
      $query = "SELECT YEAR(post_date) AS `year`, MONTH(post_date) AS `month`, count(ID) as posts FROM $wpdb->posts $join $where GROUP BY YEAR(post_date), MONTH(post_date) ORDER BY post_date $order $limit";
      $key = md5( $query );
      $key = "wp_get_archives:$key:$last_changed";
      if ( ! $results = wp_cache_get( $key, 'posts' ) ) {
          $results = $wpdb->get_results( $query );
          wp_cache_set( $key, $results, 'posts' );
      }
      if ( $results ) {
          $after = $r['after'];
          foreach ( (array) $results as $result ) {
              $url = get_month_link( $result->year, $result->month );
              /* translators: 1: month name, 2: 4-digit year */
              $text = sprintf( __( '%1$s %2$d' ), $wp_locale->get_month( $result->month ), $result->year );
              if ( $r['show_post_count'] ) {
                  $r['after'] = '&nbsp;(' . $result->posts . ')' . $after;
              }
              $output .= get_archives_link2( $url, $text, $r['format'], $r['before'], $r['after'] );
          }
      }
  } elseif ( 'yearly' == $r['type'] ) {
      $query = "SELECT YEAR(post_date) AS `year`, count(ID) as posts FROM $wpdb->posts $join $where GROUP BY YEAR(post_date) ORDER BY post_date $order $limit";
      $key = md5( $query );
      $key = "wp_get_archives:$key:$last_changed";
      if ( ! $results = wp_cache_get( $key, 'posts' ) ) {
          $results = $wpdb->get_results( $query );
          wp_cache_set( $key, $results, 'posts' );
      }
      if ( $results ) {
          $after = $r['after'];
          foreach ( (array) $results as $result) {
              $url = get_year_link( $result->year );
              $text = sprintf( '%d', $result->year );
              if ( $r['show_post_count'] ) {
                  $r['after'] = '&nbsp;(' . $result->posts . ')' . $after;
              }
              $output .= get_archives_link2( $url, $text, $r['format'], $r['before'], $r['after'] );
          }
      }
  } elseif ( 'daily' == $r['type'] ) {
      $query = "SELECT YEAR(post_date) AS `year`, MONTH(post_date) AS `month`, DAYOFMONTH(post_date) AS `dayofmonth`, count(ID) as posts FROM $wpdb->posts $join $where GROUP BY YEAR(post_date), MONTH(post_date), DAYOFMONTH(post_date) ORDER BY post_date $order $limit";
      $key = md5( $query );
      $key = "wp_get_archives:$key:$last_changed";
      if ( ! $results = wp_cache_get( $key, 'posts' ) ) {
          $results = $wpdb->get_results( $query );
          $cache[ $key ] = $results;
          wp_cache_set( $key, $results, 'posts' );
      }
      if ( $results ) {
          $after = $r['after'];
          foreach ( (array) $results as $result ) {
              $url  = get_day_link( $result->year, $result->month, $result->dayofmonth );
              $date = sprintf( '%1$d-%2$02d-%3$02d 00:00:00', $result->year, $result->month, $result->dayofmonth );
              $text = mysql2date( $archive_day_date_format, $date );
              if ( $r['show_post_count'] ) {
                  $r['after'] = '&nbsp;(' . $result->posts . ')' . $after;
              }
              $output .= get_archives_link2( $url, $text, $r['format'], $r['before'], $r['after'] );
          }
      }
  } elseif ( 'weekly' == $r['type'] ) {
      $week = _wp_mysql_week( '`post_date`' );
      $query = "SELECT DISTINCT $week AS `week`, YEAR( `post_date` ) AS `yr`, DATE_FORMAT( `post_date`, '%Y-%m-%d' ) AS `yyyymmdd`, count( `ID` ) AS `posts` FROM `$wpdb->posts` $join $where GROUP BY $week, YEAR( `post_date` ) ORDER BY `post_date` $order $limit";
      $key = md5( $query );
      $key = "wp_get_archives:$key:$last_changed";
      if ( ! $results = wp_cache_get( $key, 'posts' ) ) {
          $results = $wpdb->get_results( $query );
          wp_cache_set( $key, $results, 'posts' );
      }
      $arc_w_last = '';
      if ( $results ) {
          $after = $r['after'];
          foreach ( (array) $results as $result ) {
              if ( $result->week != $arc_w_last ) {
                  $arc_year       = $result->yr;
                  $arc_w_last     = $result->week;
                  $arc_week       = get_weekstartend( $result->yyyymmdd, get_option( 'start_of_week' ) );
                  $arc_week_start = date_i18n( $archive_week_start_date_format, $arc_week['start'] );
                  $arc_week_end   = date_i18n( $archive_week_end_date_format, $arc_week['end'] );
                  $url            = sprintf( '%1$s/%2$s%3$sm%4$s%5$s%6$sw%7$s%8$d', home_url(), '', '?', '=', $arc_year, '&amp;', '=', $result->week );
                  $text           = $arc_week_start . $archive_week_separator . $arc_week_end;
                  if ( $r['show_post_count'] ) {
                      $r['after'] = '&nbsp;(' . $result->posts . ')' . $after;
                  }
                  $output .= get_archives_link2( $url, $text, $r['format'], $r['before'], $r['after'] );
              }
          }
      }
  } elseif ( ( 'postbypost' == $r['type'] ) || ('alpha' == $r['type'] ) ) {
      $orderby = ( 'alpha' == $r['type'] ) ? 'post_title ASC ' : 'post_date DESC ';
      $query = "SELECT * FROM $wpdb->posts $join $where ORDER BY $orderby $limit";
      $key = md5( $query );
      $key = "wp_get_archives:$key:$last_changed";
      if ( ! $results = wp_cache_get( $key, 'posts' ) ) {
          $results = $wpdb->get_results( $query );
          wp_cache_set( $key, $results, 'posts' );
      }
      if ( $results ) {
          foreach ( (array) $results as $result ) {
              if ( $result->post_date != '0000-00-00 00:00:00' ) {
                  $url = get_permalink( $result );
                  if ( $result->post_title ) {
                      /** This filter is documented in wp-includes/post-template.php */
                      $text = strip_tags( apply_filters( 'the_title', $result->post_title, $result->ID ) );
                  } else {
                      $text = $result->ID;
                  }
                  $output .= get_archives_link2( $url, $text, $r['format'], $r['before'], $r['after'] );
              }
          }
      }
  }
  if ( $r['echo'] ) {
      echo $output;
  } else {
      return $output;
  }
}
//END - Make Archive Func

/* DON'T DELETE THIS CLOSING TAG */ ?>
