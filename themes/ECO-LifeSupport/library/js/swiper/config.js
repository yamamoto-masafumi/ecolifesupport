var mobileSwiper;
window.addEventListener('DOMContentLoaded', function(){
  var width = window.innerWidth;
  var topSwiper = new Swiper('#swiper-top',{
    loop: true,
    slidesPerView: 1.45,
    spaceBetween: 44,
    centeredSlides : true,
    pagination: '.pagination-top',
    nextButton: '.next-top',
    prevButton: '.prev-top',
    breakpoints: {
      767: {
        slidesPerView: 1,
        spaceBetween: 0
      }
    }
  });

  if(width <= 768){
    if(mobileSwiper){
      return;
    }else{
      mobileSwiper = new Swiper('.sp-slide', {
        loop: true,
        slidesPerView: 1,
        spaceBetween: 0,
        centeredSlides : true,
        nextButton: '.sp-next',
        prevButton: '.sp-prev',
      });
    }
  }else{
    if(mobileSwiper){
      mobileSwiper.destroy();
      mobileSwiper = undefined;
      console.log('aaa');
    }
  }
}, false);
