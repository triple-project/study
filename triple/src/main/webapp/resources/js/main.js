$(function() {
/*	mobiscroll.setOptions({
		themeVariant: 'light',
		locale: mobiscroll.localeKo
	});*/

	var cards = $(".menu_pop .swiper-slide");
	for (var i = 0; i < cards.length; i++) {
		var target = Math.floor(Math.random() * cards.length - 1) + 1;
		var target2 = Math.floor(Math.random() * cards.length - 1) + 1;
		cards.eq(target).before(cards.eq(target2));
	};

/*	$('#range').mobiscroll().datepicker({
		select: 'range'
	});*/

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

	var con1 = new Swiper(".lowprice_slider", {
		slidesPerView: 6,
		spaceBetween: 0,
		centeredSlides: true,
		loop: true,
	});

	var con2 = new Swiper(".unknown_slider", {
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
	
	

	//function showLocation(event) {
	function showLocation() {
		//var latitude = event.coords.latitude 
		//var longitude = event.coords.longitude
		var latitude = 37.57;
		var longitude = 126.99;
	
		let apiKey = "059aa9eae2040819bfb97ec8742f408c"
		var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat=" + latitude + "&lon=" + longitude + "&lang=kr&appid=" + apiKey + "&units=metric";
		var api2URI = "https://api.openweathermap.org/data/2.5/onecall?lat=" + latitude + "&lon=" + longitude + "&exclude=alerts&lang=kr&appid=" + apiKey + "&units=metric";
		$.ajax({
			url: apiURI,
			dataType: "json",
			type: "GET",
			async: "false",
			success: function(resp) {
				// console.log("la : " + latitude)
				// console.log("long : " + longitude)
				// console.log("현재온도 : " + resp.main.temp);
				// console.log("현재습도 : " + resp.main.humidity);
				// console.log("날씨 : " + resp.weather[0].main );
				// console.log("상세날씨설명 : " + resp.weather[0].description );
				// console.log("날씨 이미지 : " + resp.weather[0].icon );
				// console.log("바람 : " + resp.wind.speed );
				// console.log("나라 : " + resp.sys.country );
				// console.log("도시이름 : " + resp.name );
				// console.log("구름 : " + (resp.clouds.all) + "%" );
				// console.log("최고온도 : " + resp.main.temp_max );
				// console.log("최저온도 : " + resp.main.temp_min );

				let imgURL = "/resources/img/wb/" + resp.weather[0].icon + ".png";
				$("#wicon").attr("src", imgURL);
				
				let nameURL = resp.weather[0].description;
				 document.querySelector("#wename").textContent = nameURL;

				let todayURL = "/resources/img/wb/" + resp.weather[0].icon + ".png";
				$("#today_icon").attr("src", todayURL);
				$("#today_name").append(resp.weather[0].description);
				$("#ondo").append(resp.main.temp);
				$("#sdo").append(resp.main.humidity + "%");
				$("#psok").append(resp.wind.speed + "m/s");
				$("#dosi").append("현재위치");

				let ct = resp.dt;
				function convertTime(t){
					let ot = new Date(t * 1000);
					let day = ot.getDay();
					let hr = ot.getHours();
					let m = ot.getMinutes();

					let arrDayStr = ['일','월','화','수','목','금','토']
					return "(" + arrDayStr[day] + "요일) " + hr + ":" + m;
				}
				let currentTime = convertTime(ct);
				$("#today_date").append(currentTime);
			}
		})

		$.ajax({
			url : api2URI,
			dataType : "json",
			type : "GET",
			async : "false",
			success : function(resps) {
				//console.log(resps.hourly)
				//console.log(resps.daily)
				function convertTime(t){
					let ots = new Date(t * 1000);
					let day = ots.getDay();

					let arrDayStr = ['일','월','화','수','목','금','토']
					return arrDayStr[day];
				}
				function hTime(dst){
					let dates = new Date(dst * 1000);
					let hours = dates.getHours();
					return hours;
				}

				$("#pop").append(resps.daily[0].pop*100 + "%");

				let oneURL = "/resources/img/wb/" + resps.daily[0].weather[0].icon + ".png";
				$("#one #weekIcon").attr("src", oneURL);
				//let oneWeekdt = resps.daily[0].dt;
				//let oneTime = convertTime(oneWeekdt);
				//$("#one #weekDay").append(oneTime);
				$("#one #weekMax").append(resps.daily[0].temp.max + "<span>°C</span>");
				$("#one #weekMin").append(resps.daily[0].temp.min + "<span>°C</span>");

				let towURL = "/resources/img/wb/" + resps.daily[1].weather[0].icon + ".png";
				$("#tow #weekIcon").attr("src", towURL);
				let towWeekdt = resps.daily[1].dt;
				let towTime = convertTime(towWeekdt);
				$("#tow #weekDay").append(towTime);
				$("#tow #weekMax").append(resps.daily[1].temp.max + "<span>°C</span>");
				$("#tow #weekMin").append(resps.daily[1].temp.min + "<span>°C</span>");

				let threeURL = "/resources/img/wb/" + resps.daily[2].weather[0].icon + ".png";
				$("#three #weekIcon").attr("src", threeURL);
				let threeWeekdt = resps.daily[2].dt;
				let threeTime = convertTime(threeWeekdt);
				$("#three #weekDay").append(threeTime);
				$("#three #weekMax").append(resps.daily[2].temp.max + "<span>°C</span>");
				$("#three #weekMin").append(resps.daily[2].temp.min + "<span>°C</span>");

				let fourURL = "/resources/img/wb/" + resps.daily[3].weather[0].icon + ".png";
				$("#four #weekIcon").attr("src", fourURL);
				let fourWeekdt = resps.daily[3].dt;
				let fourTime = convertTime(fourWeekdt);
				$("#four #weekDay").append(fourTime);
				$("#four #weekMax").append(resps.daily[3].temp.max + "<span>°C</span>");
				$("#four #weekMin").append(resps.daily[3].temp.min + "<span>°C</span>");

				let fiveURL = "/resources/img/wb/" + resps.daily[4].weather[0].icon + ".png";
				$("#five #weekIcon").attr("src", fiveURL);
				let fiveWeekdt = resps.daily[4].dt;
				let fiveTime = convertTime(fiveWeekdt);
				$("#five #weekDay").append(fiveTime);
				$("#five #weekMax").append(resps.daily[4].temp.max + "<span>°C</span>");
				$("#five #weekMin").append(resps.daily[4].temp.min + "<span>°C</span>");

				let sixURL = "/resources/img/wb/" + resps.daily[5].weather[0].icon + ".png";
				$("#six #weekIcon").attr("src", sixURL);
				let sixWeekdt = resps.daily[5].dt;
				let sixTime = convertTime(sixWeekdt);
				$("#six #weekDay").append(sixTime);
				$("#six #weekMax").append(resps.daily[5].temp.max + "<span>°C</span>");
				$("#six #weekMin").append(resps.daily[5].temp.min + "<span>°C</span>");

				let sevenURL = "/resources/img/wb/" + resps.daily[6].weather[0].icon + ".png";
				$("#seven #weekIcon").attr("src", sevenURL);
				let sevenWeekdt = resps.daily[6].dt;
				let sevenTime = convertTime(sevenWeekdt);
				$("#seven #weekDay").append(sevenTime);
				$("#seven #weekMax").append(resps.daily[6].temp.max + "<span>°C</span>");
				$("#seven #weekMin").append(resps.daily[6].temp.min + "<span>°C</span>");

				let eightURL = "/resources/img/wb/" + resps.daily[7].weather[0].icon + ".png";
				$("#eight #weekIcon").attr("src", eightURL);
				let eightWeekdt = resps.daily[7].dt;
				let eightTime = convertTime(eightWeekdt);
				$("#eight #weekDay").append(eightTime);
				$("#eight #weekMax").append(resps.daily[7].temp.max + "<span>°C</span>");
				$("#eight #weekMin").append(resps.daily[7].temp.min + "<span>°C</span>");

				let h0URL = "/resources/img/wb/" + resps.hourly[0].weather[0].icon + ".png";
				$("#h0 #timeIcon").attr("src", h0URL);
				$("#h0 #timeTemp").append(resps.hourly[0].temp + "<span>°C</span>");

				let h1URL = "/resources/img/wb/" + resps.hourly[3].weather[0].icon + ".png";
				let h1Weekdt = resps.hourly[3].dt;
				let h1Time = hTime(h1Weekdt);
				$("#h1 #timeTit").append(h1Time + "<span>시</span>");
				$("#h1 #timeIcon").attr("src", h1URL);
				$("#h1 #timeTemp").append(resps.hourly[3].temp + "<span>°C</span>");

				let h2URL = "/resources/img/wb/" + resps.hourly[6].weather[0].icon + ".png";
				let h2Weekdt = resps.hourly[6].dt;
				let h2Time = hTime(h2Weekdt);
				$("#h2 #timeTit").append(h2Time + "<span>시</span>");
				$("#h2 #timeIcon").attr("src", h2URL);
				$("#h2 #timeTemp").append(resps.hourly[6].temp + "<span>°C</span>");

				let h3URL = "/resources/img/wb/" + resps.hourly[9].weather[0].icon + ".png";
				let h3Weekdt = resps.hourly[9].dt;
				let h3Time = hTime(h3Weekdt);
				$("#h3 #timeTit").append(h3Time + "<span>시</span>");
				$("#h3 #timeIcon").attr("src", h3URL);
				$("#h3 #timeTemp").append(resps.hourly[9].temp + "<span>°C</span>");

				let h4URL = "/resources/img/wb/" + resps.hourly[12].weather[0].icon + ".png";
				let h4Weekdt = resps.hourly[12].dt;
				let h4Time = hTime(h4Weekdt);
				$("#h4 #timeTit").append(h4Time + "<span>시</span>");
				$("#h4 #timeIcon").attr("src", h4URL);
				$("#h4 #timeTemp").append(resps.hourly[12].temp + "<span>°C</span>");

				let h5URL = "/resources/img/wb/" + resps.hourly[15].weather[0].icon + ".png";
				let h5Weekdt = resps.hourly[15].dt;
				let h5Time = hTime(h5Weekdt);
				$("#h5 #timeTit").append(h5Time + "<span>시</span>");
				$("#h5 #timeIcon").attr("src", h5URL);
				$("#h5 #timeTemp").append(resps.hourly[15].temp + "<span>°C</span>");

				let h6URL = "/resources/img/wb/" + resps.hourly[18].weather[0].icon + ".png";
				let h6Weekdt = resps.hourly[18].dt;
				let h6Time = hTime(h6Weekdt);
				$("#h6 #timeTit").append(h6Time + "<span>시</span>");
				$("#h6 #timeIcon").attr("src", h6URL);
				$("#h6 #timeTemp").append(resps.hourly[18].temp + "<span>°C</span>");

				let h7URL = "/resources/img/wb/" + resps.hourly[21].weather[0].icon + ".png";
				let h7Weekdt = resps.hourly[21].dt;
				let h7Time = hTime(h7Weekdt);
				$("#h7 #timeTit").append(h7Time + "<span>시</span>");
				$("#h7 #timeIcon").attr("src", h7URL);
				$("#h7 #timeTemp").append(resps.hourly[21].temp + "<span>°C</span>");

				let h8URL = "/resources/img/wb/" + resps.hourly[24].weather[0].icon + ".png";
				let h8Weekdt = resps.hourly[24].dt;
				let h8Time = hTime(h8Weekdt);
				$("#h8 #timeTit").append(h8Time + "<span>시</span>");
				$("#h8 #timeIcon").attr("src", h8URL);
				$("#h8 #timeTemp").append(resps.hourly[24].temp + "<span>°C</span>");

				let h9URL = "/resources/img/wb/" + resps.hourly[27].weather[0].icon + ".png";
				let h9Weekdt = resps.hourly[27].dt;
				let h9Time = hTime(h9Weekdt);
				$("#h9 #timeTit").append(h9Time + "<span>시</span>");
				$("#h9 #timeIcon").attr("src", h9URL);
				$("#h9 #timeTemp").append(resps.hourly[27].temp + "<span>°C</span>");
			}
		})
	
	}
	
	//function showError(event) { alert("위치 정보를 얻을 수 없습니다."); console.log(event)}
	
	/*window.addEventListener('load', () => {
		if(window.navigator.geolocation) {window.navigator.geolocation.getCurrentPosition(showLocation,showError)}
	})*/
	
	window.addEventListener('load', () => {
		showLocation();
	})

	$('#myInfo .myInfoIn .tap li').click(function () {
        var num = $(this).index();
        $(this).addClass('on').siblings().removeClass('on');
        $('#myInfo .myInfoIn .tap li').eq(num).addClass('on').siblings().removeClass('on');
        $('#myInfo .myInfoIn .menutap .tap_in .con').eq(num).show().siblings().hide();
    });
    $('#myInfo .myInfoIn .menutap .tap_in .con:gt(0)').hide();

	$(".menu_login .login_in .bottom ul li").click(function(){
		var num = $(this).index();
		$("#myInfo, #myInfoCover").addClass("on");
		$('#myInfo .myInfoIn .tap li').eq(num).addClass('on').siblings().removeClass('on');
        $('#myInfo .myInfoIn .menutap .tap_in .con').eq(num).show().siblings().hide();
	});

	$("#myInfoCover").click(function(){
		$("#myInfo, #myInfoCover").removeClass();
	});
	
	var stest = new Swiper(".kcategory", {
        slidesPerView: 6,
        spaceBetween: 20,
        slidesPerGroup: 3,
        loop: true,
        loopFillGroupWithBlank: true,
        navigation: {
          nextEl: ".kcategorybtn2",
          prevEl: ".kcategorybtn1",
        },
      });
      
      $(".tapTop .nameIn ul li, .tapBottom .nameIn ul li").click(function(){
		let num = $(this).index();
		$(this).addClass('on').siblings().removeClass('on');
        $('.tapTop .nameIn ul li').eq(num).addClass('on').siblings().removeClass('on');
		$('.tapBottom .nameIn ul li').eq(num).addClass('on').siblings().removeClass('on');
        $('.tapCon .conIn .tapMenu').eq(num).show().siblings().hide();
    });
    $('.tapCon .conIn .tapMenu:gt(0)').hide();
	
	const detaliled = new Swiper(".mySwiper", {
        //loop: true,
        spaceBetween: 15,
        slidesPerView: 4,
        freeMode: true,
        watchSlidesProgress: true,
      });
      const detaliled2 = new Swiper(".mySwiper2", {
        //loop: true,
        spaceBetween: 0,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
		pagination: {
			el: ".swiper-pagination",
			type: "fraction",
		},
        thumbs: {
          swiper: detaliled,
        },
      });

	  $(".tow .plus, .tow .hiddenBtn").click(function(){
		$(".hiddenText, .down").addClass("on");
		$(".hiddenBtn, .plus").removeClass("on");
	  });

	  $(".tow .down").click(function(){
		$(".hiddenText, .down").removeClass("on");
		$(".hiddenBtn, .plus").addClass("on");
	  });
	  
	  const detaliled3 = new Swiper(".detailedSlider", {
		loop: true,
		spaceBetween: 0,
		observer: true,
        observeParents: true,
		navigation: {
			nextEl: ".swiper-button-next",
			prevEl: ".swiper-button-prev",
		},
		pagination: {
			el: ".swiper-pagination",
			type: "fraction",
		},
	});
	
	$(".onePlusBtn").click(function () {
	  	$(".plusList, .plusListCover, body").addClass("on");
	  });

	  $(".plusListCover").click(function () {
	  	$(".plusList, .plusListCover, body").removeClass("on");
	  });
	  
	if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
		
		// 쿠키 가져오기
		var getCookie = function (cname) {
			var name = cname + "=";
			var ca = document.cookie.split(';');
			for(var i=0; i<ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0)==' ') c = c.substring(1);
				if (c.indexOf(name) != -1) return c.substring(name.length,c.length);
			}
			return "";
		}

		// 24시간 기준 쿠키 설정하기  
		var setCookie = function (cname, cvalue, exdays) {
			var todayDate = new Date();
			todayDate.setTime(todayDate.getTime() + (exdays*24*60*60*1000));    
			var expires = "expires=" + todayDate.toUTCString();
			document.cookie = cname + "=" + cvalue + "; " + expires;
		}

		var couponClose = function(){
			if($("input[name='chkbox']").is(":checked") == true){
				setCookie("close","Y",1);
			}
			$(".mobilApp").hide();
			$(".mobilAppCover").hide();
		}

		$(document).ready(function(){
			var cookiedata = document.cookie;
			if(cookiedata.indexOf("close=Y")<0){
				$(".mobilApp").show();
				$(".mobilAppCover").show();
			}else{
				$(".mobilApp").hide();
				$(".mobilAppCover").hide();
			}
			$("#close").click(function(){
				couponClose();
			});
		});

	}else{
		$(".mobilApp").hide();
		$(".mobilAppCover").hide();
	}
	
	$(".six .sixCon ul li .info > div pre").click(function(){
		$(this).addClass("on");
	});
	
	   //로그인 창에서 비밀번호 찾기 눌렀을 시
   $("#findpw").click(function(){
      $("#fpw").addClass("on");
      $("#join").removeClass("on");
   });

});