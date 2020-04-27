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
        <div class="notice-menu-left">
          <div class="notice-title">
            <h3>お知らせ一覧</h3>
            <div class="border"></div>
          </div>
          <div class="inner-notice">
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

      <div class="contact">
        <div class="content-head voice-head">
          <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/inquiry.svg">
          <h3>お問い合わせ</h3>
          <p class="h3-sub">CONTACT</p>
        </div>
        <div class="watch contact-watch"></div>
        <p class="contact-text">まずはお気軽に<br>お問い合わせください。</p>
        <div id="phone" class="phone">
          <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/phone.svg">
          <span class="phone-number">0120-994-834</span>
          <span class="phone-time">8:00-21:00（年中無休）</span>
        </div>
        <div class="contact-btn">無料お見積りはこちら</div>
      </div>

      <div class="area">
        <div class="content-head voice-head">
          <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/corresponding-area.svg">
          <h3>対応エリア</h3>
          <p class="h3-sub">AREA</p>
        </div>
        <p class="area-text">出張お見積りは完全無料！！<br>最短３０分以内に駆けつけます！</p>
        <?php
          $area = [
            'Tokyo' => [
              'district' => ['足立区', '荒川区', '板橋区', '江戸川区', '大田区', '葛飾区', '北区', '江東区', '品川区', '渋谷区', '新宿区', '杉並区', '墨田区', '世田谷区', '台東区', '中央区', '千代田区', '豊島区', '中野区', '練馬区', '文京区', '港区', '目黒区'],
              'city' => ['昭島市', 'あきる野市', '稲城市', '青梅市', '清瀬市', '国立市', '小金井市', '国分寺市', '小平市', '狛江市', '立川市', '多摩市', '調布市', '西東京市', '八王子市', '羽村市', '東久留米市', '東村山市', '東大和市', '日野市', '府中市', '福生市', '町田市', '三鷹市', '武蔵野市', '武蔵村山市'],
              'town' => ['西多摩郡奥多摩町', '西多摩郡日の出町', '西多摩郡瑞穂町', '大島町', '八丈町'],
              'village' => ['西多摩郡檜原村', '利島村', '新島村', '神津島村', '三宅村', '御蔵島村', '青ヶ島村', '小笠原村']
            ],
            'Kanagawa' => [
              'district' => [
                'Yokohama' => ['青葉区', '旭区', '泉区', '磯子区', '神奈川区', '金沢区', '港南区', '港北区', '栄区', '瀬谷区', '都筑区', '鶴見区', '戸塚区', '中区', '西区', '保土ヶ谷区', '緑区', '南区'],
                'Kawasaki' => ['麻生区', '川崎区', '幸区', '高津区', '多摩区', '中原区', '宮前区'],
                'Sagamihara' => ['中央区', '緑区', '南区']
              ],
              'city' => ['厚木市', '伊勢原市', '海老名市', '小田原市', '鎌倉市', '座間市', '逗子市', '茅ヶ崎市', '秦野市', '平塚市', '藤沢市', '三浦市', '南足柄市', '大和市', '横須賀市'],
              'town' => ['愛川町', '大井町', '大磯町', '開成町', '寒川町', '中井町', '二宮町', '箱根町', '葉山町', '松田町', '真鶴町', '山北町', '湯河原町'],
              'village' => ['清川村']
            ],
            'Saitama' => [
              'city' => ['さいたま市','上尾市','朝霞市','伊奈町','入間市','桶川市','春日部市','加須市','川口市','川越市','北本市','行田市','久喜市','熊谷市','鴻巣市','越谷市','坂戸市','幸手市','狭山市','志木市','白岡市','杉戸町','草加市','秩父市','鶴ヶ島市','所沢市','戸田市','新座市','蓮田市','羽生市','飯能市','東松山市','日高市','深谷市','富士見市','ふじみ野市','本庄市','三郷市','八潮市','吉川市','和光市','蕨市'],
              'town' => ['小鹿野町','越生町','神川町','上里町','川島町','ときがわ町','長瀞町','滑川町','鳩山町','松伏町','美里町','皆野町','宮代町','三芳町','毛呂山町','横瀬町','吉見町','寄居町','嵐山町'],
              'village' => ['東秩父村']
            ],
            'Chiba' => [
              'district' => [
                'Chiba' => ['稲毛区','中央区','花見川区','緑区','美浜区','若葉区'],
              ],
              'city' => ['旭市','我孫子市','いすみ市','市川市','市原市','印西市','浦安市','大網白里市','柏市','勝浦市','香取市','鎌ケ谷市','鴨川市','木更津市','君津市','佐倉市','山武市','白井市','匝瑳市','袖ケ浦市','館山市','銚子市','東金市','富里市','流山市','習志野市','成田市','野田市','富津市','船橋市','松戸市','南房総市','茂原市','八街市','八千代市','四街道市'],
              'town' => ['一宮町','大多喜町','御宿町','鋸南町','九十九里町','神崎町','栄町','酒々井町','芝山町','白子町','多古町','長南町','東庄町','長柄町','睦沢町','横芝光町'],
              'village' => ['長生村']
            ]
          ];
        ?>
        <div class="lists">
          <div class="list">
            <div class="list-type">
              <p>不用品回収</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                    case 'Saitama':
                      $pref = '埼玉県';
                      break;
                    case 'Chiba':
                      $pref = '千葉県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                          case 'Chiba':
                            $district = '千葉市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
          <div class="list">
            <div class="list-type">
              <p>ゴミ屋敷の片付け</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
          <div class="list">
            <div class="list-type">
              <p>粗大ゴミ回収</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
          <div class="list">
            <div class="list-type">
              <p>遺品整理</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
          <div class="list">
            <div class="list-type">
              <p>生前処分</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
          <div class="list">
            <div class="list-type">
              <p>不用品の買取</p>
            </div>
            <div class="list-area hidden">
              <?php
                foreach($area as $pref => $arr_municipality){
                  switch($pref){
                    case 'Tokyo':
                      $pref = '東京都';
                      break;
                    case 'Kanagawa':
                      $pref = '神奈川県';
                      break;
                  }
                  echo '<p class="pref">' . '<img src="' . get_bloginfo('template_directory') . '/library/images/icon/pin.svg"><span>' . $pref . '</span></p>';
                  echo '<div class="sp-hidden">';
                  foreach($arr_municipality as $municipality => $arr){
                    echo '<div class="' . $municipality . '">';
                    foreach($arr as $k => $v){
                      if(is_array($v)){
                        switch($k){
                          case 'Yokohama':
                            $district = '横浜市';
                            break;
                          case 'Kawasaki':
                            $district = '川崎市';
                            break;
                          case 'Sagamihara':
                            $district = '相模原市';
                            break;
                        }
                        echo '<p class="ku">' . $district . '</p>';
                        foreach($v as $ku){
                          if($ku !== end($v)){
                            echo '<span>' . $ku . '</span> / ';
                          }else{
                            echo '<span>' . $ku . '</span>';
                          }
                        }
                      }else{
                        if($v !== end($arr)){
                          echo '<span>' . $v . '</span> / ';
                        }else{
                          echo '<span>' . $v . '</span>';
                        }
                      }
                    }
                    echo '</div>';
                  }
                  echo '</div>';
                }
              ?>
            </div>
          </div>
        </div>
      </div>
    </main>
  </div>
</div>
<footer class="footer" role="contentinfo" itemscope itemtype="http://schema.org/WPFooter">
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
</footer>
		</div>
		<?php // all js scripts are loaded in library/bones.php ?>
	</body>


<?php //get_footer(); ?>
</div>
