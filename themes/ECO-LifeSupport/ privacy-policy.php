<?php
/*
 * Template Name: プライバシーポリシー
 */
?>

<?php get_header(); ?>

<div class="absolute">
<div id="content">
  <div id="inner-content">
      <main id="main" class="main" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

        <div class="top-band">
          <h3>プライバシーポリシー</h3>
        </div>

        <div class="policy-contents">
          <h3 class="policy-contents-title">非個人情報の収集および利用について</h3>
          <div class="title-bottom"></div>
          <p class="policy-contents-text">当サイトは、個人情報ではない情報、つまり特定の個人と直接関連付けることのできない情報を収集することがあります。例えば、使用言語、所在地、タイムスタンプ、インターネット閲覧デバイスに関する情報がそれに該当します。なお、これら情報は個人情報と照合して用いる場合には、当サイトは本プライバシーポリシーに基づいた個人情報として適切な管理を行います。</p>
        </div>

        <div class="policy-contents">
          <h3 class="policy-contents-title">Cookie（クッキー）など技術利用について</h3>
          <div class="title-bottom"></div>
          <p class="policy-contents-text">当サイトのウェブサイトおよび広告では、Cookieやピクセルタグ、Google Analyticsなどを利用することがあります。これらの技術は、お客様を誤認しないための一時的な特定のためや、お客様による情報入力の負担や閲覧時の表示時間を削減し、広告およびインターネット検索の効果の測定などを通じてウェブサイトや表現内容の改善に役立てられます。
            <br>
            <br>
          当サイトのウェブサイト利用にあたりCookieの無効化をされたい場合はお客様のインターネット閲覧ブラウザの設定またはインターネットオプションのセキュリティ設定からCookieを無効化してください。ただし、Cookieを無効化すると、当ウェブサイトの一部の機能をご利用いただけなくなります。</p>
        </div>

        <div class="policy-contents">
          <h3 class="policy-contents-title">お問い合わせ</h3>
          <div class="title-bottom"></div>
          <p class="policy-contents-text">プライバシーポリシーに関するお問い合わせは運営にご連絡ください。</p>
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
