$(function(){

	const swiper1 = new Swiper('.list_slider', {
		loop: true,
		slidesPerView: 1,
		spaceBetween: 0,
		pagination: {
			el: '.list_pagi',
			type: "fraction",
		},
		navigation: {
			nextEl: '.list_next',
			prevEl: '.list_prev',
		}
	});

});