<?php
/**
 * The template for displaying the footer.
 */
?>
</div><!-- #main -->


<!-- [ #footerSection ] -->
<div id="footerSection">

	<div id="pagetop">
	<div id="pagetopInner" class="innerBox">
	<a href="#wrap">PAGETOP</a>
	</div>
	</div>

	<div id="footMenu">
	<div id="footMenuInner" class="innerBox">
	<?php wp_nav_menu( array(
		'theme_location' => 'FooterNavi',
		'fallback_cb' => ''
	) ); ?>
	</div>
	</div>

	<!-- [ #footer ] -->
	<div id="footer">
	<!-- [ #footerInner ] -->
	<div id="footerInner" class="innerBox">
		<dl id="footerOutline">
		<dt><?php biz_vektor_footerSiteName(); ?></dt>
		<dd>
		<?php biz_vektor_print_footContact(); ?>
		</dd>
		</dl>
		<?php
		$footerSiteMap = '<!-- [ #footerSiteMap ] -->
		<div id="footerSiteMap">'."\n";
		$footerSiteMap .= wp_nav_menu(
		array(
			'theme_location' => 'FooterSiteMap',
			'fallback_cb' => '',
			'echo' => false,
		) );
		$footerSiteMap .= '</div>
		<!-- [ /#footerSiteMap ] -->'."\n";
		$footerSiteMap = apply_filters( 'bizvektor_footerSiteMap', $footerSiteMap );
		echo $footerSiteMap;
		?>
	</div>
	<!-- [ /#footerInner ] -->
	</div>
	<!-- [ /#footer ] -->

	<!-- [ #siteBottom ] -->
	<div id="siteBottom">
	<div id="siteBottomInner" class="innerBox">
	<?php biz_vektor_footerCopyRight(); ?>
	</div>
	</div>
	<!-- [ /#siteBottom ] -->
	
	
	<div id="siteBottom_space"></div>
</div>
<!-- [ /#footerSection ] -->
</div>
<div id="footerFloatingMenu">
<a href="https://ecolifesupport.com/%E3%81%8A%E5%95%8F%E3%81%84%E5%90%88%E3%82%8F%E3%81%9B"><img src="https://ecolifesupport.com/wp-content/uploads/2018/04/botan_blue-1.png" width="" height=""></a>
<a href="tel:0120994838"><img src="https://ecolifesupport.com/wp-content/uploads/2018/09/エコライフサポート_ボタン_2.png" width="" height=""></a>
</div>
<script>
jQuery(function() {
    var topBtn = jQuery('#footerFloatingMenu');
    topBtn.hide();
    jQuery(window).scroll(function () {
        if (jQuery(this).scrollTop() > 200) { // 200pxで表示
            topBtn.fadeIn();
        } else {
            topBtn.fadeOut();
        }
    });
});
</script>
<!-- [ /#wrap ] -->
<?php wp_footer();?>
</body>
</html>