<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">
        <div id="swiper-top" class="slide swiper-container">
          <div class="swiper-wrapper">
          <?php if(wp_is_mobile()) : ?>
          　<div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-sp.png"></div>
            <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-sp-2.png"></div>
            <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-sp-3.png"></div>
            <?php else : ?>
            <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-img1.png"></div>
            <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-img2.png"></div>
            <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/slide/slider-img3.png"></div>
            <?php endif; ?>
          </div>
          <div class="swiper-pagination pagination-top"></div>
          <div class="swiper-button-prev prev-top"></div>
          <div class="swiper-button-next next-top"></div>
        </div>

        <div class="about">
          <div class="about-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/truck.png">
            <p class="about-head-paragraph">不用品は<br>エコライフサポートへ</p>
          </div>
          <p class="about-paragraph">
            <span class="red">ゴミ屋敷・引っ越し・遺品整理等</span>で発生する処分品、押し入れや収納にたまった<span class="red">不用品</span>などを片付けや<span class="red">買取</span>をさせて頂きます。
            エコライフサポートのサービス料金は、<span class="under">不要な物の物量に応じて料金が決定する仕組みです。</span>
            お見積り後の追加料金も一切ございませんので、<span class="red">安心してご利用いただけます。</span>
          </p>
        </div>

        <div class="notice">
          <?php if(wp_is_mobile()) : ?>
            <h2 class="notice-head">お知らせ</h2>
            <p class="notice-paragraph">
              <span class="date"><?php echo get_the_date('Y.m.d'); ?></span>
              <span class="detail"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></span>
            </p>
            <p class="notice-link"><a href="<?php echo home_url('/notice'); ?>">お知らせ一覧</a></p>
          <?php else : ?>
            <div class="notice-pc">
              <h2 class="notice-head"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/speech-ballon-border.svg"><span>お知らせ</span></h2>
              <p class="notice-paragraph">
                <span class="date"><?php echo get_the_date('Y.m.d'); ?></span>
                <span class="detail"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></span>
              </p>
              <p class="notice-link"><a href="<?php echo home_url('/notice'); ?>">お知らせ一覧</a></p>
            </div>
          <?php endif; ?>
        </div>

        <div class="feature">
          <div class="content-head feature-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/truck.png">
            <h3>エコライフサポートの特徴</h3>
            <p class="h3-sub">FEATURE OF SERVICE</p>
          </div>
          <div class="feature-details">
            <div class="feature-details-detail">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/feature/feature-of-service1.png">
              <div class="feature-details-detail-paragraph">
                <p class="feature-details-detail-paragraph-title">お電話でのお見積りが可能！</p>
                <p class="feature-details-detail-paragraph-text">弊社では、年中無休8:00-21:00のお時間帯でお電話での簡単お見積りを行なっております。<br>
                  丁寧に料金体系を明瞭化しご提示致します。<br>
                  簡単にお見積りができるとご好評をいただいております。お気軽にお問い合わせください。</p>
              </div>
            </div>
            <div class="feature-details-detail">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/feature/feature-of-service2.png">
              <div class="feature-details-detail-paragraph">
                <p class="feature-details-detail-paragraph-title">納得の業界最安価を実現！</p>
                <p class="feature-details-detail-paragraph-text">弊社のサービス料金や買取料金は、不要な物の物量に応じて料金が決定いたします。<br>
                  他社では別料金になる搬出作業費・お掃除作業費・スタッフ追加料金・車両費・出張費・エアコン取り外し費用が全て込みの料金です。
                  </p>
              </div>
            </div>
            <div class="feature-details-detail">
              <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/feature/feature-of-service3.png">
              <div class="feature-details-detail-paragraph">
                <p class="feature-details-detail-paragraph-title">清潔感のスタッフで安心！</p>
                <p class="feature-details-detail-paragraph-text">お客様にご安心して頂くために、ご自宅や店舗にお伺いの際には、清潔な身だしなみができているかチェックをしています。<br>
                  ご利用者からも、爽やかなスタッフの方で安心したなどと嬉しいお声をいただいております。</p>
              </div>
            </div>
          </div>
        </div>

        <div class="servicebackground">
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
            <a href="<?php echo home_url('/service'); ?>"><div class="service-btn">サービス料金へ</div></a>
          </div>
        </div>

        <div class="planbackground">
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
          <a href="<?php echo home_url('/service'); ?>"><div class="plan-btn">詳しくはこちら</div></a>
        </div>
      </div>

      <div class="voice">
        <div class="inner">
          <div class="content-head voice-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/speech-ballon.svg">
            <h3>お客様の声</h3>
            <p class="h3-sub">USER'S VOICE</p>
          </div>
          <div class="sp-slide swiper-container">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="imgbox">
					        <a href="<?php echo home_url('/user-voice/user1'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/voice/users-voice-fuyouhin1.jpg"></a>
                  <span class="label">不用品回収</span>
                </div>
                <p class="text">
                  <span class="interviewee">東京都 Aさん 一人暮らし</span>
						      <a href="<?php echo home_url('/user-voice/user1'); ?>"><span class="title">思った以上に安く利用でき<br>とっても満足です！</span></a>
                  <span class="detail">
                    家具を一新しようと色々見積もり依頼を出しましたが、ここが一番安くて即日だったのでとても助かりました！
                  </span>
                </p>
              </div>
              <div class="swiper-slide">
                <div class="imgbox">
					      	<a href="<?php echo home_url('/user-voice/user2'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/voice/users-voice-fuyouhin2.jpg"></a>
                  <span class="label">不用品回収</span>
                </div>
                <p class="text">
                  <span class="interviewee">埼玉県 Rさん 引っ越し</span>
					        <a href="<?php echo home_url('/user-voice/user2'); ?>"><span class="title">大きな家具や荷物も気にせず<br>安心して詰め込めます！</span></a>
                  <span class="detail">
                    定額なのが嬉しいですよね。他社が30万で見積もりを出したところその4分の1以下で引っ越しをすることができました。
                  </span>
                </p>
              </div>
              <div class="swiper-slide">
                <div class="imgbox">
					        <a href="<?php echo home_url('/user-voice/user10'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/voice/users-voice-ihinseir1.jpg"></a>
                  <span class="label">遺品整理</span>
                </div>
                <p class="text">
                  <span class="interviewee">神奈川県 Sさん 遺品整理</span>
					        <a href="<?php echo home_url('/user-voice/user10'); ?>"><span class="title">即日に安価で丁寧に整理を<br>してくれました。</span></a>
                  <span class="detail">
                    遺品整理の決心まで時間がかかりましたが、早めにしなくてはという気持ちに。すぐに対応してくださり感謝です。
                  </span>
                </p>
              </div>
              <div class="swiper-slide">
                <div class="imgbox">
					        <a href="<?php echo home_url('/user-voice/user4'); ?>"><img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/voice/users-voice-gomiyashiki1.jpg"></a>
                  <span class="label">ゴミ屋敷の片付け</span>
                </div>
                <p class="text">
                  <span class="interviewee">東京都 Yさん 一人暮らし</span>
					        <a href="<?php echo home_url('/user-voice/user4'); ?>"><span class="title">たったの２９,８００円で！<br>片付けもしてくれて満足です。</span></a>
                  <span class="detail">
                    男の一人暮らしで気付けばゴミ屋敷化。家中のゴミを回収で3万円台！おかげで綺麗な家で気持ちのいい暮らしです。
                  </span>
                </p>
              </div>
            </div>
            <div class="swiper-button-prev sp-prev"></div>
            <div class="swiper-button-next sp-next"></div>
          </div>
          <a href="<?php echo home_url('/user-voice'); ?>"><div class="inner-btn">お客様の声一覧</div></a>
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
                フリーダイヤル0120-829-053からお申込み下さい。<br>
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
                当日申し込み、即日対応で作業が可能です。
                東京・埼玉・神奈川のお客様でしたら、最短30分で現地へ到着が可能です。
                また、対応地域外でも回収可能な場合がございますので、まずはお気軽に無料お問い合わせください。
              </p>
            </div>
          </div>
          <div class="list">
            <div class="list-question">
              <p>依頼後に値段は変わりませんか？</p>
            </div>
            <div class="list-answer hidden">
              <p>
                エコライフサポートではお見積り確定後に、無断で金額が変わることはありません。
                お客様に確認して頂いたお見積り金額で作業を行わさせて頂きますのでご安心ください。
                追加で作業をご依頼頂いた際は、改めてお見積り金額をお伝えした上で作業を行わせて頂きます。
                ※作業料、送料がかかる場合がございます。
              </p>
            </div>
          </div>
          <div class="list">
            <div class="list-question">
              <p>近所の人にバレずにゴミ屋敷を回収して頂きたいです。</p>
            </div>
            <div class="list-answer hidden">
              <p>
                お任せください。ご近所の方に知られないようにゴミ屋敷の掃除を行います。
                お客様のプライバシーを第一に、提案をさせて頂きますので、ご安心ください。
                また、ゴミのまとめ作業なども承れますのでご相談ください。
              </p>
            </div>
          </div>
          <a href="<?php echo home_url('/faq'); ?>"><div class="question-btn">よくある質問一覧</div></a>
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

        <div class="voice yellow-bg">
        <div class="inner">
          <div class="content-head voice-head">
            <img src="<?php echo get_bloginfo('template_directory'); ?>/library/images/icon/speech-ballon.svg">
            <h3>お役立ちコンテンツ</h3>
            <p class="h3-sub">USEFUL</p>
          </div>
          
          <div class="sp-slide swiper-container">
            <div class="swiper-wrapper">
            <?php
                  $paged = get_query_var('paged') ? get_query_var('paged') : 1;
                  $args = array(
                    'post__not_in' => array($post->ID),
                    'category__in' => 'usefull',
                    'posts_per_page' => 4,
                    'orderby' => 'rand',
                    'post_type' => 'custom_type'
                  );
                  $query = new WP_Query($args);
                  if ( $query->have_posts() ) :
                    while ( $query->have_posts() ) : $query->the_post();
                ?>
              <div class="swiper-slide">
                <div class="imgbox2">
                  <div class="thumbnail">
                    <a href="<?php the_permalink(); ?>">
                      <?php if(has_post_thumbnail()): the_post_thumbnail('thumbnail');
                        else: ?>
                          <img src="<?php echo get_template_directory_uri(); ?>/images/noimage.jpg" alt="<?php the_title(); ?>">
                      <?php endif; ?>
                    </a>
                  </div>
                </div>
                <div class="text2">
                  <div class="title">
                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                  </div>
                </div>
              </div>
              <?php endwhile; ?>
              <?php endif; wp_reset_postdata(); ?>
            </div>
            <div class="swiper-button-prev sp-prev"></div>
            <div class="swiper-button-next sp-next"></div>
          </div>
          <a href="<?php echo home_url('/usefull'); ?>"><div class="inner-btn-witdh">お役立ちコンテンツ一覧</div></a>
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
		<?php // all js scripts are loaded in library/bones.php ?>
	</body>
</html> <!-- end of site. what a ride! -->

<?php get_footer(); ?>
</div>
