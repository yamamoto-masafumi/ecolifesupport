jQuery(function($){
  var is_cursorOnElm;
  $('.list-question').click(function(){
    $('.isOpen').removeClass();
    var classname = $(this).attr('class');
    if(classname == 'list-question down'){
      $(this).removeClass('down').next().slideUp();
    }else{
      $('.down').removeClass('.down').next().slideUp();
      var downElm = $(this).addClass('down').next();
      downElm.slideDown();
      $(this).children().toggleClass('isOpen');
    }
  });

  $('.list').hover(function(){
    is_cursorOnElm = true;
  }, function(){
    is_cursorOnElm = false;
  });

  $('body').click(function(){
    if(!is_cursorOnElm){
      $('.isOpen').removeClass();
      $('.down').removeClass('down').next().slideUp();
    }
  });


  if(window.innerWidth <= 768){
    $('.list-type').click(function(){
      $('.isOpen').removeClass();
      var classname = $(this).attr('class');
      if(classname == 'list-type down'){
        $(this).removeClass('down').next().slideUp();
      }else{
        $('.down').removeClass('.down').next().slideUp();
        var downElm = $(this).addClass('down').next();
        $(this).parent().css({'height': 'auto'});
        downElm.slideDown();
        $(this).children().toggleClass('isOpen');
      }
    });
    $('.pref').click(function(){
      var classname = $(this).attr('class');
      if(classname == 'pref pref_down'){
        $(this).removeClass('pref_down').next().slideUp();
      }else{
        $('.pref_down').removeClass('.pref_down').next().slideUp();
        var downElm = $(this).addClass('pref_down').next();
        $(this).parent().css({'height': 'auto'});
        downElm.slideDown();
      }
    });
  }else{
    $('.area .lists .list:first').children('.list-area').removeClass('hidden');
    $('.area .lists .list:first').children('.list-type').addClass('active');
    var height = $('.list-area').outerHeight(true);
    $('.area .lists').css({'marginBottom': height});
  }

  $('.list-type').click(function(){
    if(window.innerWidth >= 768){
      if($(this).attr('class') == 'list-type active'){

      }else{
        $('.active').next().addClass('hidden');
        $('.active').removeClass('active');
        $(this).addClass('active').next().removeClass('hidden');
      }
    }
  });
});