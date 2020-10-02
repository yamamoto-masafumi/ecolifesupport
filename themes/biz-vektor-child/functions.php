<?php 

/* フォントの読み込み */
add_action('wp_enqueue_scripts','my_wp_enqueue_scripts');
function my_wp_enqueue_scripts(){
    wp_enqueue_style('web-font', "https://fonts.googleapis.com/earlyaccess/nicomoji");
}

/* 「連絡先ウィジェット」の作成 */
add_action('init', 'my_register_sidebar');
function my_register_sidebar() {
    register_sidebar(array(
        'name' => '連絡先ウィジェット',
        'id' => 'contact-widget-area',
        'description' => '画面右上に表示されるウィジェットです。',
        'before_widget' => '<div class="sideWidget widget %2$s" id="%1$s">',
        'after_widget' => '</div>',
    ));
}


/* 連絡先にウィジェットを表示 */
add_filter('headContactCustom','my_headContactCustom');
function my_headContactCustom(){
    ob_start();
    echo '<div id="headContact"><div id="headContactInner">';
 
    if (is_active_sidebar('contact-widget-area')) {
        dynamic_sidebar('contact-widget-area');
    }
 
    echo '</div></div>';
 
    return ob_get_clean();
}

//PCでのみ表示するコンテンツ
function if_is_pc($atts, $content = null )
{
$content = do_shortcode( $content);
    if(!wp_is_mobile())
        {
        return $content;
        }
}
add_shortcode('pc', 'if_is_pc');
//スマートフォン・タブレットでのみ表示するコンテンツ
function if_is_nopc($atts, $content = null )
{
$content = do_shortcode( $content);
    if(wp_is_mobile())
        {
        return $content;
        }
}
add_shortcode('nopc', 'if_is_nopc');
