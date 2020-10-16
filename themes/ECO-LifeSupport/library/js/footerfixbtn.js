jQuery(function($) {
  if(window.innerWidth >= 768){
    var win = $(window),
      cloneFooter = $('#footer_main').clone().addClass('clone').appendTo('body'),
      showClass = 'is-show';

    win.on('load scroll', function() {
      var value = $(this).scrollTop();
      if ( value > 400 ) {
        cloneFooter.addClass(showClass);
      } else {
        cloneFooter.removeClass(showClass);
      }
    });
  }else{
    $(window).on('load scroll', function(){
      if($(window).scrollTop() > 400){
        $('footer').slideDown();
      }else{
        $('footer').slideUp();
      }
    });
  }
});