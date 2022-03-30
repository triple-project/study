$(function(){
   const swiperh = new Swiper('.hart_list', {
      // loop: true,
      slidesPerView: 5,
        spaceBetween: 30,
      slidesPerGroup: 3,
      pagination: {
        el: '.hart_pagi',
        clickable: true,
      },
      navigation: {
        nextEl: '.hart_next',
        prevEl: '.hart_prev',
      }
     });
});