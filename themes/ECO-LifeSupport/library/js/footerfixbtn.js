
jQuery(function($) {
    console.log('あたまあたま');
    var win = $(window),
        cloneFooter = $('footer').clone().addClass('clone').appendTo('body'),
        showClass = 'is-show';

    win.on('load scroll', function() {
      var value = $(this).scrollTop();
      if ( value > 700 ) {
        cloneFooter.addClass(showClass);
      } else {
        cloneFooter.removeClass(showClass);
      }
    });
  });