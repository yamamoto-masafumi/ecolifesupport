jQuery(function($){
  $('#hamburger-btn').on('click', function(){
    var nav = $('#hamburger-nav');
    var classname = nav.attr('class');
    if(classname.indexOf('hamburger-active') != -1){
      var is_active = true;
    }else{
      var is_active = false;
    }
    if(is_active){
      nav.removeClass('hamburger-active');
      // nav.css({'display': 'none'});
      nav.slideUp();
    }else{
      nav.addClass('hamburger-active');
      // nav.css({'display': 'block'});
      nav.slideDown();
    }
  });
});