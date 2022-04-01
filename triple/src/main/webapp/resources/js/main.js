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

		if (y > 200) {
			$('#top_up').addClass('on');
		} else {
			$('#top_up').removeClass('on');
		}
	});

	$("#top_up").click(function() {
		$("html, body").animate({ scrollTop: 0 }, "slow");
		return false;
	});

	$("#header .menu").click(function() {
		$("#s_menu, body").addClass("on");
		$("#cover").stop().fadeIn();
	});

	$("#s_menu .menu_top, #cover").click(function() {
		$("#s_menu, body, #join, #join_mbs").removeClass("on");
		$("#join_cover1, #join_cover2, #cover").stop().fadeOut();
	});

	$(".menu_login .top").click(function() {
		$("#join").addClass("on");
		$("#join_cover1, #join_cover2").stop().fadeIn();
	});

	$("#join_cover1, #join_cover2").click(function() {
		$("#join, #join_mbs").removeClass("on");
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
	//정보수정창 닫기버튼
	$("#backtomenu").click(function() {
		$("#join_mbs").removeClass("on");
		/*$("#join").addClass("on");*/
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
		} else {
			if ($('#pw2').val() != '') {
				//alert("비밀번호가 일치합니다.");
				$(".pwMsg_no").removeClass("on");
				$(".pwMsg_ok").addClass("on");
				$("#pwMsg").removeClass("at");
			}
		}
	})

	function showLocation(event) {
		var latitude = event.coords.latitude
		var longitude = event.coords.longitude

		let apiKey = "059aa9eae2040819bfb97ec8742f408c"
		var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat=" + latitude + "&lon=" + longitude + "&lang=kr&appid=" + apiKey;
		$.ajax({
			url: apiURI,
			dataType: "json",
			type: "GET",
			async: "false",
			success: function(resp) {
				//console.log("현재온도 : "+ (resp.main.temp- 273.15) );
				//console.log("현재습도 : "+ resp.main.humidity);
				//console.log("날씨 : "+ resp.weather[0].main );
				//console.log("상세날씨설명 : "+ resp.weather[0].description );
				//console.log("날씨 이미지 : "+ resp.weather[0].icon );
				//console.log("바람   : "+ resp.wind.speed );
				//console.log("나라   : "+ resp.sys.country );
				//console.log("도시이름  : "+ resp.name );
				//console.log("구름  : "+ (resp.clouds.all) +"%" );
				let imgURL = "../resources/img/wb/" + resp.weather[0].icon + ".png";
				$("#wicon").attr("src", imgURL);

				let nameURL = resp.weather[0].description;
				document.querySelector("#wename").textContent = nameURL;
			}
		})

	}

	function showError(event) { alert("위치 정보를 얻을 수 없습니다.") }

	window.addEventListener('load', () => {
		if (window.navigator.geolocation) { window.navigator.geolocation.getCurrentPosition(showLocation, showError) }
	})

	$('#myInfo .myInfoIn .tap li').click(function() {
		var num = $(this).index();
		$(this).addClass('on').siblings().removeClass('on');
		$('#myInfo .myInfoIn .tap li').eq(num).addClass('on').siblings().removeClass('on');
		$('#myInfo .myInfoIn .menutap .tap_in .con').eq(num).show().siblings().hide();
	});
	$('#myInfo .myInfoIn .menutap .tap_in .con:gt(0)').hide();

});