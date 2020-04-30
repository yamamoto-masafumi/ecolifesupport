<?php
/*
 * Template Name: サービス料金
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
    <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">
      <header class="sub-header">
        <div class="header-title">
          <h3>サービス料金</h3>
        </div>
      </header>
      <p class="header-bottom">HOME > <span>サービス料金</span></p>
      <div class="about service-about">
        <?php if(wp_is_mobile()) : ?>
          <h2 class="about-head">
            <img class="service-about-img" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/service-price-sub.png">
            <p class="about-head-paragraph">圧倒的な価格設定</p>
          </h2>
          <p class="about-paragraph">
            エコライフサポートのサービス料金、<span class="red">不要な物の物量に応じて料金が決定する仕組みです。</span>
            <span class="under">他社では別料金になる搬出作業費・お掃除作業費・スタッフ追加料金・車両費・出張費・エアコン取り外し費用が全て込みの料金となっております。</span>
            <span class="red">お見積り後の追加料金も一切ございません。</span>
            お電話やメールにてお客様のお荷物を伺い、どのプランに該当するかご案内いたします。その他、
            <span class="under">安く処分する方法のご相談も承っております。</span>
          </p>
        <?php else : ?>
          <h2 class="about-head">
            <img class="service-about-img" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/service-price-sub.png">
          </h2>
          <div class="about-pc">
            <p class="about-pc-head">圧倒的な価格設定</p>
            <p class="about-paragraph">
              エコライフサポートのサービス料金、<span class="red">不要な物の物量に応じて料金が決定する仕組みです。</span>
              <span class="under">他社では別料金になる搬出作業費・お掃除作業費・スタッフ追加料金・車両費・出張費・エアコン取り外し費用が全て込みの料金となっております。</span>
              <span class="red">お見積り後の追加料金も一切ございません。</span>
              お電話やメールにてお客様のお荷物を伺い、どのプランに該当するかご案内いたします。その他、
              <span class="under">安く処分する方法のご相談も承っております。</span>
            </p>
          </div>
        <?php endif; ?>
      </div>

        <div class="compare">
          <div class="compare-top">
            <p>他社と比べてみてください</p>
          </div>
          <table class="compare-table">
            <tbody>
              <tr>
                <th></th><th class="ecolife-row data-top"> <img class="compare-ribbon" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/ribbon-gold.png"> エコライフ <br> サポート</th><th class="other-row data-top">A社</th><th class="other-row data-top">B社</th>
              </tr>
              <tr>
                <th class="table-list">基本料金</th><td class="ecolife-row">無料</td><td  class="other-row">¥3,000〜</td><td  class="other-row">¥2,000〜</td>
              </tr>
              <tr>
                <th class="table-list">総費用</th><td class="ecolife-row">¥9,980〜</td><td  class="other-row">¥15,000〜</td><td  class="other-row">¥20,000〜</td>
              </tr>
              <tr>
                <th class="table-list">対応時間</th><td class="ecolife-row">最短30分</td><td class="other-row">当日可能</td><td class="other-row">最短60分</td>
              </tr>
              <tr>
                <th class="table-list">日時指定</th><td class="ecolife-row">無料</td><td class="other-row">+10%</td><td class="other-row">+5%</td>
              </tr>
              <tr>
                <th class="table-list">作業実績</th><td class="ecolife-row">◎</td><td class="other-row">◯</td><td class="other-row">△</td>
              </tr>
              <tr>
                <th class="table-list">スタッフ対応</th><td class="ecolife-row">◎</td><td class="other-row">△</td><td class="other-row">◯</td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="service">
          <div class="content-head service-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/service.svg">
            <h3>サービス内容</h3>
            <p class="h3-sub">ABOUT SERVICE</p>
          </div>
          <div class="service-lists">
            <div class="service-list">
              <div class="imgbox">
                <img class="ribbon" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/ribbon-gold.png">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-fuyouhin.jpg">
              </div>
              <p class="title">不用品回収</p>
              <p class="text">
                <span class="detail">不用品はもちろん思い出の詰まった物です。<br>
                アクセサリーのような小さなものから自動車等の大物まで何でも回収致します！</span>
              </p>
            </div>
            <div class="service-list">
              <div class="imgbox">
                <img class="ribbon" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/ribbon-silver.png">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-gomiyashiki.jpg">
              </div>
              <p class="title">ゴミ屋敷の片付け</p>
              <p class="text">
                <span class="detail">不用品の片付けや大量のゴミの回収、荒れたお庭の手入れから倉庫などの片付け、お掃除まで即時対応します。</span>
              </p>
            </div>
            <div class="service-list">
              <div class="imgbox">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-sodaigomi.jpg">
              </div>
              <p class="title">粗大ゴミ回収</p>
              <p class="text">
                <span class="detail">ご家庭やオフィスなどで不用になった小物から大型家電、机や冷蔵庫など大型で処分が難しいものを低価格で即日回収いたします。</span>
              </p>
            </div>
            <div class="service-list">
              <div class="imgbox">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-ihinseiri.png">
              </div>
              <p class="title">遺品整理</p>
              <p class="text">
                <span class="detail">お客様のご要望に寄り添って最善の方法をご提供しています。まとまったお時間が取れないなど、お片づけを行います。</span>
              </p>
            </div>
            <div class="service-list">
              <div class="imgbox">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-seizenshori.jpg">
              </div>
              <p class="title">生前処分</p>
              <p class="text">
                <span class="detail">遠方で処分が難しい、すぐに整理が必要！<br>
                  など、さまざまなお客様のご要望に応え、精一杯心をこめて生前処分を行います。</span>
              </p>
            </div>
            <div class="service-list">
              <div class="imgbox">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-service-huyouhin-kaitori.png">
              </div>
              <p class="title">不用品の買取</p>
              <p class="text">
                <span class="detail">まだ使える不用品、骨董、古美術品、珍品、おもちゃなどを買取致します。<br>
                  まずはお気軽にお問い合わせください。</span>
              </p>
            </div>
          </div>
        </div>

        <div class="plan">
          <div class="content-head plan-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/rate-plan-blue.svg">
            <h3>料金プラン</h3>
            <p class="h3-sub">ABOUT PRICE</p>
          </div>
          <div class="plan-lists">

              <div class="plan-list">
                <div class="balloon">
                  <p>少量の粗大ゴミ回収ならこちらの定額プラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-light-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-light-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">ライトパック</span>
                  <span class="detail">
                    少量の粗大ゴミやコンパクトな家具ならこちらの定額プラン。
                    迅速にご対応しますのでお問い合わせください。
                  </span>
                </p>
              </div>
              <div class="plan-list">
                <div class="balloon">
                  <p>1K程度のお片付けにおすすめの定額プラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-keitora-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-keitora-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">軽トラ乗せ放題パック</span>
                  <span class="detail">
                    1K程度のお片づけやお引っ越し、お片づけ、大量な家具の処分などにオススメな軽トラ定額プランです。
                  </span>
                </p>
              </div>
              <div class="plan-list">
                <div class="balloon">
                  <p>大型家具の処分などにお得な定額プラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-1t-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-1t-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">1tトラック<br class="no-pc-br">乗せ放題パック</span>
                  <span class="detail">
                    大型家具の処分や１DKのお引っ越し、お片づけや大量のゴミ処分にお得な定額プランです。
                  </span>
                </p>
              </div>
              <div class="plan-list">
                <div class="balloon">
                  <p>引っ越しなどにお得な定額プラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-1-5t-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-1-5t-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">1.5tトラック<br class="no-pc-br">乗せ放題パック</span>
                  <span class="detail">
                    大型家具の処分や2Kのお引っ越し、オフィス用家具処分、大量のゴミ処分にお得な定額プラン。
                  </span>
                </p>
              </div>
              <div class="plan-list">
                <div class="balloon">
                  <p>大量の粗大ゴミ回収などの大量詰め込みプラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-2t-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-2t-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">2tトラック<br class="no-pc-br">乗せ放題パック</span>
                  <span class="detail">
                    2DKのお引っ越し、オフィス用家具処分、ゴミ屋敷のお片づけ、倉庫の不用品処分にお得な定額プラン。
                  </span>
                </p>
              </div>
              <div class="plan-list">
                <div class="balloon">
                  <p>産業廃棄物処分の格安プランと<br>
                    不用品の買取プラン</p>
                </div>
                <div class="imgbox">
                  <?php if(wp_is_mobile()) : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-sangyouhaikibutu-pack-sp.png">
                  <?php else : ?>
                    <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/plan/about-praice-sangyouhaikibutu-pack.png">
                  <?php endif; ?>
                </div>
                <p class="text">
                  <span class="title">産業廃棄物回収パック・<br class="no-pc-br">不用品の買取</span>
                  <span class="detail">
                    産業廃棄物処理・不用品回収の問題にも迅速スピード対応かつ、格安プランでご案内致します。
                  </span>
                </p>
              </div>
          </div>
        </div>

        <div class="price">
          <div class="content-head plan-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/rate-plan.svg">
            <h3>料金一覧</h3>
            <p class="h3-sub">ABOUT PRICE</p>
          </div>
            <ul class="price-list">
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price1-aircon.png" alt="">
                <p class="price-item-top">エアコン</p>
                <p class="price-item-bottom">￥3,150円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price2-tv.png" alt="">
                <p class="price-item-top">テレビ</p>
                <p class="price-item-bottom">￥2,100円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price3-refrigerator.png" alt="">
                <p class="price-item-top">冷蔵庫</p>
                <p class="price-item-bottom">￥3,610円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price4-washingmachine.png" alt="">
                <p class="price-item-top">洗濯機</p>
                <p class="price-item-bottom">￥2,625円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price5-dryer.png" alt="">
                <p class="price-item-top">衣類乾燥機</p>
                <p class="price-item-bottom">￥2,625円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price6-desktop.png" alt="">
                <p class="price-item-top">デスクトップ</p>
                <p class="price-item-bottom">￥3,150円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price7-notepc.png" alt="">
                <p class="price-item-top">ノートパソコン</p>
                <p class="price-item-bottom">￥2,100円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price8-monitor.png" alt="">
                <p class="price-item-top">液晶ディスプレイ</p>
                <p class="price-item-bottom">￥3,625円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price9-display.png" alt="">
                <p class="price-item-top">CRTディスプレイ</p>
                <p class="price-item-bottom">￥2,625円~</p>
              </li>
              <li class="price-item">
                <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/about-price10-other.png" alt="">
                <p class="price-item-top">その他</p>
                <p class="price-item-bottom">￥315円~</p>
              </li>
            </ul>
        </div>

        <div class="purchase">
          <div class="content-head plan-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/rate-plan.svg">
            <h3>不用品買取一覧</h3>
            <p class="h3-sub">PURCHASE LIST</p>
          </div>
          <ul class="purchase-list">
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list1-largeelectric.png">
              <p class="purchase-list-item-text">大型家電</p>
              <p class="item-explain">
                冷蔵後・冷凍庫・ワインセラー・洗濯機・エアコン・空気清浄機・掃除機・テレビ・他
              </p>
            </li>
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list2-digital.png">
              <p class="purchase-list-item-text">デジタル・オーディオ機器</p>
              <p class="item-explain">
                デスクトップ・ノートパソコン・デジタルカメラ・一眼レフカメラ・スピーカー・ターンテーブル・アンプ・他
              </p>
            </li>
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list3-furniture.png">
              <p class="purchase-list-item-text">生活家具</p>
              <p class="item-explain">
                食器棚・ダイニングセット・テーブル・他
              </p>
            </li>
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list4-antique.png">
              <p class="purchase-list-item-text">骨董品</p>
              <p class="item-explain">
                絵画（日本画、洋画、現代アート）・掛軸・茶道具・陶器・工芸品・刀剣・甲冑・中国骨董・象牙・珊瑚・他
              </p>
            </li>
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list5-toy.png">
              <p class="purchase-list-item-text">おもちゃ</p>
              <p class="item-explain">
                プラレール・人形・フィギュア・ラジコン・プラモデル・レトロ玩具・他
              </p>
            </li>
            <li class="purchase-list-item">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/purchase-list6-other.png">
              <p class="purchase-list-item-text">その他</p>
              <p class="item-explain">
                ソファ・自転車・衣類・鞄・靴・布団・毛布・他
              </p>
            </li>
          </ul>

        </div>

        <div class="penalty">
          <div class="penalty-title">
            <h3>違約金の発生について</h3>
          </div>
          <div class="penalty-img">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/service/penalty.png">
          </div>
          <div class="penalty-bottom">
            <p>エコライフサポートでは当日のキャンセルがあった場合のみ全額の違約金をいただいております。<br> ご了承お願いいたします。</p>
          </div>
        </div>

        <div class="flow">
          <div class="content-head voice-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/usage-flow.svg">
            <h3>ご利用の流れ</h3>
            <p class="h3-sub">FLOW</p>
          </div>
          <div class="steps">
            <div class="step">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/flow/flow-step1.png">
              <div class="step-detail">
                <span class="step-detail-title">お問い合わせ</span>
                <span class="step-detail-text">
                  メール、またはお電話で受け付けております。
                  他社より1円でも高い場合もご相談ください。
                </span>
              </div>
            </div>
            <img class="steps-arrow" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/arrow-right-gray.png">
            <div class="step">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/flow/flow-step2.png">
              <div class="step-detail">
                <span class="step-detail-title">無料お見積り</span>
                <span class="step-detail-text">
                  お見積りは無料です。
                  他社では実現できない格安プランをご案内いたします。
                </span>
              </div>
            </div>
            <img class="steps-arrow" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/arrow-right-gray.png">
            <div class="step">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/flow/flow-step3.png">
              <div class="step-detail">
                <span class="step-detail-title">作業開始</span>
                <span class="step-detail-text">
                  即日対応可能です。
                  お客様のニーズや用途に沿って迅速に作業をさせていただきます。
                </span>
              </div>
            </div>
            <img class="steps-arrow" src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/arrow-right-gray.png">
            <div class="step">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/flow/flow-step4.png">
              <div class="step-detail">
                <span class="step-detail-title">お支払い</span>
                <span class="step-detail-text">
                  現金・クレジットカード・銀行振込が対応しています。
                  後払いのご相談も可能です。
                </span>
              </div>
            </div>
          </div>
        </div>

        <div class="question">
          <div class="content-head voice-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/qa.svg">
            <h3>よくある質問</h3>
            <p class="h3-sub">Q & A</p>
          </div>
          <div class="list">
            <div class="list-question">
              <p>どのように回収を申し込んだら良いですか？</p>
            </div>
            <div class="list-answer hidden">
              <p>
                フリーダイヤル0120-994-838からお申込み下さい。<br>
                また、メールフォームにてお申込みが可能です。<br>
                お電話でのお見積りも、もちろん無料ですが現地で確認をしないと、正確なお見積りが出せないような作業もございます。<br>
                その場合、現地への出張費用無料、お見積り無料です。<br>
                また、お客様がお見積りにご納得されていない場合、無断で作業は絶対に行いませんので、ご安心ください。<br>
                お客様がご安心して依頼して頂けるよう、私たちはお客様がご納得された後に作業を行います。
              </p>
            </div>
          </div>
          <div class="list">
            <div class="list-question">
              <p>申し込み当日でも作業を行ってもらえますか？</p>
            </div>
            <div class="list-answer hidden">
              <p>
                フリーダイヤル0120-994-838からお申込み下さい。
                また、メールフォームにてお申込みが可能です。
                お電話でのお見積りも、もちろん無料ですが現地で確認をしないと、正確なお見積りが出せないような作業もございます。
                その場合、現地への出張費用無料、お見積り無料です。
                また、お客様がお見積りにご納得されていない場合、無断で作業は絶対に行いませんので、ご安心ください。
                お客様がご安心して依頼して頂けるよう、私たちはお客様がご納得された後に作業を行います。
              </p>
            </div>
          </div>
          <div class="list">
            <div class="list-question">
              <p>依頼後に値段は変わりませんか？</p>
            </div>
            <div class="list-answer hidden">
              <p>
                フリーダイヤル0120-994-838からお申込み下さい。
                また、メールフォームにてお申込みが可能です。
                お電話でのお見積りも、もちろん無料ですが現地で確認をしないと、正確なお見積りが出せないような作業もございます。
                その場合、現地への出張費用無料、お見積り無料です。
                また、お客様がお見積りにご納得されていない場合、無断で作業は絶対に行いませんので、ご安心ください。
                お客様がご安心して依頼して頂けるよう、私たちはお客様がご納得された後に作業を行います。
              </p>
            </div>
          </div>
          <div class="list">
            <div class="list-question">
              <p>近所の人にバレずにゴミ屋敷を回収して頂きたいです。</p>
            </div>
            <div class="list-answer hidden">
              <p>
                フリーダイヤル0120-994-838からお申込み下さい。
                また、メールフォームにてお申込みが可能です。
                お電話でのお見積りも、もちろん無料ですが現地で確認をしないと、正確なお見積りが出せないような作業もございます。
                その場合、現地への出張費用無料、お見積り無料です。
                また、お客様がお見積りにご納得されていない場合、無断で作業は絶対に行いませんので、ご安心ください。
                お客様がご安心して依頼して頂けるよう、私たちはお客様がご納得された後に作業を行います。
              </p>
            </div>
          </div>
          <div class="question-btn">よくある質問一覧</div>
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
</div>

<?php get_footer(); ?>
</div>
