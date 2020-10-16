<?php
/*
 * Template Name: お客様の声
 */
?>



<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">


      <header class="user-header">
        <div class="header-title">
          <h3>お客様の声</h3>
        </div>
      </header>
      <p class="header-bottom">HOME > <span>お客様の声</span></p>

        <?php if(wp_is_mobile()) : ?>
        <div class="sp-uservoice">
            <div class="sp-uservoice-bigtitle">
              <h3>不用品回収</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user1'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice1.jpg"></a>
                    </div>
                  <p class="title">東京都 Aさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user1'); ?>"><span class="detail">思った以上に安く利用できてとっても満足です！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user2'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice2.jpg"></a>
                    </div>
                    <p class="title">埼玉県 Rさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user2'); ?>"><span class="detail">大きな家具や荷物も気にせず安心して詰め込めます！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user3'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice3.jpg"></a>
                  </div>
                    <p class="title">東京都 Tさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user3'); ?>"><span class="detail">時間通りに来ていただけたのでとても助かりました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="sp-uservoice-bigtitle">
              <h3>ゴミ屋敷の片付け</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user4'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice4.jpg"></a>
                  </div>
                  <p class="title">東京都 Yさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user4'); ?>"><span class="detail">たったの２９,８００円で！片付けもしてくれて満足です。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user5'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice5.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user5'); ?>"><span class="detail">ご近所にバレずにあっという間に綺麗になりました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user6'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice6.jpg"></a>
                  </div>
                  <p class="title">東京都 Yさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user6'); ?>"><span class="detail">散乱していたゴミが1時間で引越ししたてのように！</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="sp-uservoice-bigtitle">
              <h3>粗大ゴミ回収</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user7'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice7.jpg"></a>
                  </div>
                  <p class="title">埼玉県 Nさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user7'); ?>"><span class="detail">引越しに伴い家具を心機一転。格安で回収してもらえました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user8'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice8.jpg"></a>
                  </div>
                  <p class="title">千葉県 Kさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user8'); ?>"><span class="detail">引越しで2DK分の荷物が他社見積りの3分の1で出来ました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user9'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice9.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user9'); ?>"><span class="detail">実家に戻る事で家具が不要に。浮いたお金で新しい家電が買えて嬉しい</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="sp-uservoice-bigtitle">
              <h3>遺品整理</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user10'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice10.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Sさん 遺品整理 </p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user10'); ?>"><span class="detail">即日に安価で丁寧に整理をしてくれました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user11'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice11.jpg"></a>
                  </div>
                  <p class="title">東京都 Mさん 遺品整理 </p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user11'); ?>"><span class="detail">片付けから荷造り、全て行っていただけました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user12'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice12.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Kさん 遺品整理</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user12'); ?>"><span class="detail">遠方で行けない自分の代わりに迅速な対応をしていただけました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
            </div>
            <div class="sp-uservoice-bigtitle">
              <h3>生前処分</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user13'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice13.jpg"></a>
                  </div>
                  <p class="title">埼玉県 Hさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user13'); ?>"><span class="detail">明確な料金設定でどこよりも安く、安心して利用できました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user14'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice14.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user14'); ?>"><span class="detail">いらないものの相談などにも乗ってもらい丁寧な対応！大満足です。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user15'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice15.jpg"></a>
                  </div>
                  <p class="title">千葉県 Iさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user15'); ?>"><span class="detail">施設入所前の片付けで依頼。丁寧で気持ちよく利用できました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="sp-uservoice-bigtitle">
              <h3>不用品の買取</h3>
              <div class="border"></div>
            </div>
              <div class="sp-uservoice-lists">
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user16'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice16.jpg"></a>
                  </div>
                  <p class="title">東京都 Nさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user16'); ?>"><span class="detail">他社の提示金額より2倍の値段で買い取ってもらえました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user17'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice17.jpg"></a>
                  </div>
                  <p class="title">東京都 Tさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user17'); ?>"><span class="detail">需要がないと思っていた洗濯機がまさかこんな価格になるなんて....</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="sp-uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user18'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/sp-user-voice18.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Sさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user18'); ?>"><span class="detail">不用品回収で依頼していましたが、買取に切り替えてもらえてラッキー</span></a></p>
                  <div class="borderblue"></div>
                  <br>
                  <br>
                  <br>
                </div>
              </div>

          <?php else : ?>
            <div class="uservoice-bigtitle">
              <h3>不良品回収</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user1'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice1.jpg"></a>
                    </div>
                  <p class="title">東京都 Aさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user1'); ?>"><span class="detail">思った以上に安く利用できてとっても満足です！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user2'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice2.jpg"></a>
                    </div>
                    <p class="title">埼玉県 Rさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user2'); ?>"><span class="detail">大きな家具や荷物も気にせず安心して詰め込めます！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user3'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice3.jpg"></a>
                  </div>
                    <p class="title">東京都 Tさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user3'); ?>"><span class="detail">時間通りに来ていただけたのでとても助かりました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="uservoice-bigtitle">
              <h3>ゴミ屋敷の片付け</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user4'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice4.jpg"></a>
                  </div>
                  <p class="title">東京都 Yさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user4'); ?>"><span class="detail">たったの２９,８００円で！片付けもしてくれて満足です。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user5'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice5.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 一人暮らし</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user5'); ?>"><span class="detail">ご近所にバレずにあっという間に綺麗になりました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user6'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice6.jpg"></a>
                  </div>
                  <p class="title">東京都 Yさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user6'); ?>"><span class="detail">散乱していたゴミが1時間で引越ししたてのように！</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="uservoice-bigtitle">
              <h3>粗大ゴミの回収</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user7'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice7.jpg"></a>
                  </div>
                  <p class="title">埼玉県 Nさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user7'); ?>"><span class="detail">引越しに伴い家具を心機一転。格安で回収してもらえました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user8'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice8.jpg"></a>
                  </div>
                  <p class="title">千葉県 Kさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user8'); ?>"><span class="detail">引越しで2DK分の荷物が他社見積りの3分の1で出来ました！</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user9'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice9.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 引っ越し</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user9'); ?>"><span class="detail">実家に戻る事で家具が不要に。浮いたお金で新しい家電が買えて嬉しい</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="uservoice-bigtitle">
              <h3>遺品整理</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user10'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice10.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Sさん 遺品整理 </p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user10'); ?>"><span class="detail">即日に安価で丁寧に整理をしてくれました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user11'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice11.jpg"></a>
                  </div>
                  <p class="title">東京都 Mさん 遺品整理 </p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user11'); ?>"><span class="detail">片付けから荷造り、全て行っていただけました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user12'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice12.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Kさん 遺品整理</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user12'); ?>"><span class="detail">遠方で行けない自分の代わりに迅速な対応をしていただけました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="uservoice-bigtitle">
              <h3>生前処分</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user13'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice13.jpg"></a>
                  </div>
                  <p class="title">埼玉県 Hさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user13'); ?>"><span class="detail">明確な料金設定でどこよりも安く、安心して利用できました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user14'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice14.jpg"></a>
                  </div>
                  <p class="title">東京都 Sさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user14'); ?>"><span class="detail">いらないものの相談などにも乗ってもらい丁寧な対応！大満足です。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user15'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice15.jpg"></a>
                  </div>
                  <p class="title">千葉県 Iさん 生前処分</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user15'); ?>"><span class="detail">施設入所前の片付けで依頼。丁寧で気持ちよく利用できました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
              </div>
            <div class="uservoice-bigtitle">
              <h3>不用品の買取</h3>
              <div class="border"></div>
            </div>
              <div class="uservoice-lists">
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user16'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice16.jpg"></a>
                  </div>
                  <p class="title">東京都 Nさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user16'); ?>"><span class="detail">他社の提示金額より2倍の値段で買い取ってもらえました。</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user17'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice17.jpg"></a>
                  </div>
                  <p class="title">東京都 Tさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user17'); ?>"><span class="detail">需要がないと思っていた洗濯機がまさかこんな価格になるなんて....</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <div class="uservoice-list">
                  <div class="imgbox">
                  <a href="<?php echo home_url('/user-voice/user18'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/user-voice/user-voice18.jpg"></a>
                  </div>
                  <p class="title">神奈川県 Sさん 不用品の買取</p>
                  <p class="text"><a href="<?php echo home_url('/user-voice/user18'); ?>"><span class="detail">不用品回収で依頼していましたが、買取に切り替えてもらえてラッキー</span></a></p>
                  <div class="borderblue"></div>
                </div>
                <?php endif; ?>
              </div>
              <br>
              <br>
              <br>
              <br>
        </div>

        <div class="contact">
          <div class="content-head voice-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/inquiry.svg">
            <h3>お問い合わせ</h3>
            <p class="h3-sub">CONTACT</p>
          </div>
          <div class="watch contact-watch"></div>
          <?php if(wp_is_mobile()) : ?>
          <p class="contact-text">まずはお気軽に<br>お問い合わせください。</p>
          <?php else : ?>
          <p class="contact-text">まずはお気軽にお問い合わせください。</p>
          <?php endif; ?>
          <div id="phone" class="phone">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/phone.svg">
            <span class="phone-number">0120-829-053</span>
            <span class="phone-time">8:00-21:00（年中無休）</span>
          </div>
          <a href="<?php echo home_url('/contact'); ?>"><div class="contact-btn">無料お見積りはこちら</div></a>
        </div>

        <div id="area" class="area">
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
          </div>
        </div>
      </main>
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
</div>

<?php get_footer(); ?>