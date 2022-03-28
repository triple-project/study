$(function() {
	mobiscroll.setOptions({
		themeVariant: 'light',
		locale: mobiscroll.localeKo
	});

	var cards = $(".menu_pop .swiper-slide");
	for (var i = 0; i < cards.length; i++) {
		var target = Math.floor(Math.random() * cards.length - 1) + 1;
		var target2 = Math.floor(Math.random() * cards.length - 1) + 1;
		cards.eq(target).before(cards.eq(target2));
	};

	$('#range').mobiscroll().datepicker({
		select: 'range'
	});

	var main = new Swiper(".main_slider", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		autoplay: {
			delay: 6000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".main_pagi",
			clickable: true,
		},
		effect: 'fade',
		fadeEffect: {
			crossFade: true
		},
	});

	var con1 = new Swiper(".con_slider", {
		slidesPerView: 6,
		spaceBetween: 0,
		centeredSlides: true,
		loop: true,
	});

	var con2 = new Swiper(".con_slider2", {
		slidesPerView: 6,
		spaceBetween: 0,
		centeredSlides: true,
		loop: true,
	});

	var pop = new Swiper(".pop_slider", {
		slidesPerView: 1,
		spaceBetween: 0,
		loop: true,
		autoplay: {
			delay: 6000,
			disableOnInteraction: false,
		},
		pagination: {
			el: ".pop_pagi",
			clickable: true,
		},
	});

	$(window).scroll(function() {
		var y = $(document).scrollTop();
		if (y > 1) {
			$('#header, #sec').addClass('on');
		} else {
			$('#header, #sec').removeClass('on');
		}
	});

	$("#header .menu").click(function() {
		$("#s_menu, body").addClass("on");
		$("#cover").stop().fadeIn();
	});

	$("#s_menu .menu_top, #cover").click(function() {
		$("#s_menu, body, #join").removeClass("on");
		$("#join_cover1, #join_cover2, #cover").stop().fadeOut();
	});

	$(".menu_login .top").click(function() {
		$("#join").addClass("on");
		$("#join_cover1, #join_cover2").stop().fadeIn();
	});

	$("#join_cover1, #join_cover2").click(function() {
		$("#join").removeClass("on");
		$("#join_cover1, #join_cover2").stop().fadeOut();
	});

	$('.about_btn > div').click(function() {
		var num = $(this).index();
		$(this).addClass('on').siblings().removeClass('on');
		$('.about_tab .tab_in').eq(num).show().siblings().hide();
	});
	$('.about_tab .tab:gt(0)').hide();

	// 로그인 창에서 회원가입 버튼 눌렀을 시 
	$("#gotombs").click(function() {
		$("#join_mbs").addClass("on");
		$("#join").removeClass("on");
		$("#join_cover1, #join_cover2").stop().fadeIn();
	});

	// 회원가입에서 뒤로가기 버튼 눌렀을 시
	$("#backtologin").click(function() {
		$("#join_mbs").removeClass("on");
		$("#join").addClass("on");
	});


	$('#pw2').blur(function() {
		if ($('#pw1').val() != $('#pw2').val()) {
			if ($('#pw2').val() != '') {
				//alert("비밀번호가 일치하지 않습니다.");
				$(".pwMsg_no").addClass("on");
				$(".pwMsg_ok").removeClass("on");
				$("#pwMsg").removeClass("at");
				$('#pw2').val('');
				$('#pw2').focus();
			}
		}else{
			if ($('#pw2').val() != '') {
				//alert("비밀번호가 일치합니다.");
				$(".pwMsg_no").removeClass("on");
				$(".pwMsg_ok").addClass("on");
				$("#pwMsg").removeClass("at");
			}
		}
	})
});