<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script type="text/javascript">
	function login() {
		if($("#remember_me").is(":checked") == true){
			$("#remember_me").val('on');
		}else {
			
		}
		$.ajax({
			url : "/login",
			type : "POST",
			dataType : "json",
			data : {
				mem_id : $("#mem_id").val(),
				mem_pw : $("#mem_pw").val(),
				remember_me : $("#remember_me").val()
			},
			
			success : function(response) {
				if (response.code == "200") {
					// 정상 처리 된 경우
					//window.location = response.item.url; //이전페이지로 돌아가기
					/* alert("됨?"); */
					sessionStorage.setItem("code2", response.item.login_id);
 					function alogc() {
						var c = sessionStorage.getItem("code2");
							/* document.getElementById("join").style.display = "none";
							 $("#header_ch").load(window.location.href+" #header_ch");  */
							/*   $("#header_in").load(window.location.href+" #header_in"); */
							 location.reload(); 
					}
					alogc(); 
					console.log(response);
				} else {
					alert(response.message);
				}
			},
			error : function(a, b, c) {
				console.log(a, b, c);
				alert("아이디 혹은 비밀번호를 확인하세요");
			}

		})

	}
	
	window.onload = function () {
		/* var c = sessionStorage.getItem("code2"); */
		var s = $("#sat").text();
		sessionStorage.setItem("code2", s);
		/* location.href = "/"+s; */
	}

	
	function logout() {
		sessionStorage.removeItem("code2");
		location.href="/logout";
	}
	
	function mtest() {
		$.ajax({
			type : "POST",
			url : "/rest/info",
				dataType : "json",
				data : {
					mem_id : $("#sat").text()
				},
				success : function(data) {
	           		 // C에서 받아온 데이터로 새로 뿌려주기
					console.log(data);
					$("#heart_num").html(data.heart)
					$("#plan_num").html(data.plan)
					$("#review_num").html(data.review)
					$("#pi").attr("src","/resources/img/upload/" + data.pro_mem_img);
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
	function mtest2() {
		$.ajax({
			type : "POST",
			url : "/rest/info2",
				dataType : "json",
				data : {
					mem_id : $("#sat").text()
				},
				success : function(data) {
	           		 // C에서 받아온 데이터로 새로 뿌려주기
					console.log(data);
					$("#e_mail").attr("value", data.e_mail);
					$("#e_mail3").val(data.e_mail2);
					$("#e_mail3").text(data.e_mail2);
					$("#tel").attr("value", data.tel);
					$("#preview").attr("src", "/resources/img/upload/" + data.mem_img);
					$("#img_hs").attr("value", data.mem_img);
					$("#mem_idp").attr("value", data.mem_id);
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
</script>
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', { "pluginKey": "1e213c36-73e2-41d9-9cdb-722f2d2c697f" });
</script>
<!-- End Channel Plugin -->

<script type="text/javascript">
   function readURL(input) {
      var file = input.files[0] //파일에 대한 정보
     /*  console.log(file) */
      if (file != '') {
         var reader = new FileReader();
         reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
         reader.onload = function (e) { // 파일 로드한 값을 표현한다
          //e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
/*             console.log(e)
            console.log(e.target)
            console.log(e.target.result) */
           $('#preview').attr('src', e.target.result);
          }
      }
  }  
</script>
<script type="text/javascript">
   function amu() {
      
	//const a = $('#img').val();
		//console.log(a);
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var ti = hours + minutes + seconds;
		var fileValue = $("#image_file_name").val().split("\\");
		var fileName = fileValue[fileValue.length - 1]; // 파일명
		/* console.log(fileName); image_file_name_h */
		const a = $('#img_h').val(ti+fileName);
		const b = $('#image_file_name_h').val(ti+fileName);
		/* console.log(a); */

		var e1 = $('#e_mail').val();	//e_mail 의 밸류
		var e2 = $('#e_mail2').val();	//e_mail2 의 밸류
		$('#e_mail').val(e1+e2);		//e_mail 의 밸류에 e1+e2를 넣어라
		
		
	}
   
   function amu2() {
	      
		//const a = $('#img').val();
			//console.log(a);
			var today = new Date();
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var ti = hours + minutes + seconds;
			var fileCheck = document.getElementById("image_file_name").value;
			var fileValue = $("#image_file_name").val().split("\\");
			var fileName = fileValue[fileValue.length - 1]; // 파일명
			var fileName2 = $("#img_hs").val();
			console.log(fileName);
			if (!fileCheck) {
				const a = $('#img_h').val(fileName2);
				console.log(a);
			}else{
				const a = $('#img_h').val(ti+fileName);
				const b = $('#image_file_name_h').val(ti+fileName);
				console.log(a);
			}
			var e1 = $('#e_mail').val();	//e_mail 의 밸류
			var e2 = $('#e_mail2').val();	//e_mail2 의 밸류
			$('#e_mail').val(e1+e2);		//e_mail 의 밸류에 e1+e2를 넣어라
			var i = $("#sat").text();
			$("#mem_id").val(i);
			
		}
</script>


<!-- 날씨위젯 -->
<script type="text/javascript">
	function wea() {
		
		//배포시엔 주석
		/* if (window.navigator.geolocation) {
			window.navigator.geolocation.getCurrentPosition(showLocation4,
				showError4)
		} */
		
		showLocation4();

		function showLocation4() {
			var latitude = 37.57;
			var longitude = 126.99;
			
			//배포시엔 주석
			/* var latitude = event.coords.latitude
			var longitude = event.coords.longitude */

			let apiKey = "059aa9eae2040819bfb97ec8742f408c"
			var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat=" +
				latitude + "&lon=" + longitude + "&lang=kr&appid=" +
				apiKey + "&units=metric";
			var api2URI = "https://api.openweathermap.org/data/2.5/onecall?lat=" + latitude + "&lon=" + longitude +
			"&exclude=alerts&lang=kr&appid=" + apiKey + "&units=metric";
			$.ajax({
				url: apiURI,
				dataType: "json",
				type: "GET",
				async: "false",
				success: function (resp) {
					let todayURL = "/resources/img/wb/" + resp.weather[0].icon + ".png";
					$("#today_icon").attr("src", todayURL);
					$("#today_name").html(resp.weather[0].description);
					$("#ondo").html(resp.main.temp);
					$("#sdo").html("습도 : " + resp.main.humidity + "%");
					$("#psok").html("풍속 : " + resp.wind.speed + "m/s");
					$("#dosi").html("현재위치");

					let ct = resp.dt;

					function convertTime(t) {
						let ot = new Date(t * 1000);
						let day = ot.getDay();
						let hr = ot.getHours();
						let m = ot.getMinutes();

						let arrDayStr = ['일', '월', '화', '수', '목', '금', '토']
						return "(" + arrDayStr[day] + "요일) " + hr + ":" + m;
					}
					let currentTime = convertTime(ct);
					$("#today_date").html(currentTime);
				}
			})

			$.ajax({
				url: api2URI,
				dataType: "json",
				type: "GET",
				async: "false",
				success: function (resps) {
					function convertTime(t) {
						let ots = new Date(t * 1000);
						let day = ots.getDay();

						let arrDayStr = ['일', '월', '화', '수', '목', '금', '토']
						return arrDayStr[day];
					}

					function hTime(dst) {
						let dates = new Date(dst * 1000);
						let hours = dates.getHours();
						return hours;
					}

					$("#pop").html("강수확률 : " + resps.daily[0].pop*100 + "%");

					let oneURL = "/resources/img/wb/" + resps.daily[0].weather[0].icon + ".png";
					$("#one #weekIcon").attr("src", oneURL);
					$("#one #weekMax").html(resps.daily[0].temp.max + "<span>°C</span>");
					$("#one #weekMin").html(resps.daily[0].temp.min + "<span>°C</span>");

					let towURL = "/resources/img/wb/" + resps.daily[1].weather[0].icon + ".png";
					$("#tow #weekIcon").attr("src", towURL);
					let towWeekdt = resps.daily[1].dt;
					let towTime = convertTime(towWeekdt);
					$("#tow #weekDay").html(towTime);
					$("#tow #weekMax").html(resps.daily[1].temp.max + "<span>°C</span>");
					$("#tow #weekMin").html(resps.daily[1].temp.min + "<span>°C</span>");

					let threeURL = "/resources/img/wb/" + resps.daily[2].weather[0].icon + ".png";
					$("#three #weekIcon").attr("src", threeURL);
					let threeWeekdt = resps.daily[2].dt;
					let threeTime = convertTime(threeWeekdt);
					$("#three #weekDay").html(threeTime);
					$("#three #weekMax").html(resps.daily[2].temp.max + "<span>°C</span>");
					$("#three #weekMin").html(resps.daily[2].temp.min + "<span>°C</span>");

					let fourURL = "/resources/img/wb/" + resps.daily[3].weather[0].icon + ".png";
					$("#four #weekIcon").attr("src", fourURL);
					let fourWeekdt = resps.daily[3].dt;
					let fourTime = convertTime(fourWeekdt);
					$("#four #weekDay").html(fourTime);
					$("#four #weekMax").html(resps.daily[3].temp.max + "<span>°C</span>");
					$("#four #weekMin").html(resps.daily[3].temp.min + "<span>°C</span>");

					let fiveURL = "/resources/img/wb/" + resps.daily[4].weather[0].icon + ".png";
					$("#five #weekIcon").attr("src", fiveURL);
					let fiveWeekdt = resps.daily[4].dt;
					let fiveTime = convertTime(fiveWeekdt);
					$("#five #weekDay").html(fiveTime);
					$("#five #weekMax").html(resps.daily[4].temp.max + "<span>°C</span>");
					$("#five #weekMin").html(resps.daily[4].temp.min + "<span>°C</span>");

					let sixURL = "/resources/img/wb/" + resps.daily[5].weather[0].icon + ".png";
					$("#six #weekIcon").attr("src", sixURL);
					let sixWeekdt = resps.daily[5].dt;
					let sixTime = convertTime(sixWeekdt);
					$("#six #weekDay").html(sixTime);
					$("#six #weekMax").html(resps.daily[5].temp.max + "<span>°C</span>");
					$("#six #weekMin").html(resps.daily[5].temp.min + "<span>°C</span>");

					let sevenURL = "/resources/img/wb/" + resps.daily[6].weather[0].icon + ".png";
					$("#seven #weekIcon").attr("src", sevenURL);
					let sevenWeekdt = resps.daily[6].dt;
					let sevenTime = convertTime(sevenWeekdt);
					$("#seven #weekDay").html(sevenTime);
					$("#seven #weekMax").html(resps.daily[6].temp.max + "<span>°C</span>");
					$("#seven #weekMin").html(resps.daily[6].temp.min + "<span>°C</span>");

					let eightURL = "/resources/img/wb/" + resps.daily[7].weather[0].icon + ".png";
					$("#eight #weekIcon").attr("src", eightURL);
					let eightWeekdt = resps.daily[7].dt;
					let eightTime = convertTime(eightWeekdt);
					$("#eight #weekDay").html(eightTime);
					$("#eight #weekMax").html(resps.daily[7].temp.max + "<span>°C</span>");
					$("#eight #weekMin").html(resps.daily[7].temp.min + "<span>°C</span>");

					let h0URL = "/resources/img/wb/" + resps.hourly[0].weather[0].icon + ".png";
					$("#h0 #timeIcon").attr("src", h0URL);
					$("#h0 #timeTemp").html(resps.hourly[0].temp + "<span>°C</span>");

					let h1URL = "/resources/img/wb/" + resps.hourly[3].weather[0].icon + ".png";
					let h1Weekdt = resps.hourly[3].dt;
					let h1Time = hTime(h1Weekdt);
					$("#h1 #timeTit").html(h1Time + "<span>시</span>");
					$("#h1 #timeIcon").attr("src", h1URL);
					$("#h1 #timeTemp").html(resps.hourly[3].temp + "<span>°C</span>");

					let h2URL = "/resources/img/wb/" + resps.hourly[6].weather[0].icon + ".png";
					let h2Weekdt = resps.hourly[6].dt;
					let h2Time = hTime(h2Weekdt);
					$("#h2 #timeTit").html(h2Time + "<span>시</span>");
					$("#h2 #timeIcon").attr("src", h2URL);
					$("#h2 #timeTemp").html(resps.hourly[6].temp + "<span>°C</span>");

					let h3URL = "/resources/img/wb/" + resps.hourly[9].weather[0].icon + ".png";
					let h3Weekdt = resps.hourly[9].dt;
					let h3Time = hTime(h3Weekdt);
					$("#h3 #timeTit").html(h3Time + "<span>시</span>");
					$("#h3 #timeIcon").attr("src", h3URL);
					$("#h3 #timeTemp").html(resps.hourly[9].temp + "<span>°C</span>");

					let h4URL = "/resources/img/wb/" + resps.hourly[12].weather[0].icon + ".png";
					let h4Weekdt = resps.hourly[12].dt;
					let h4Time = hTime(h4Weekdt);
					$("#h4 #timeTit").html(h4Time + "<span>시</span>");
					$("#h4 #timeIcon").attr("src", h4URL);
					$("#h4 #timeTemp").html(resps.hourly[12].temp + "<span>°C</span>");

					let h5URL = "/resources/img/wb/" + resps.hourly[15].weather[0].icon + ".png";
					let h5Weekdt = resps.hourly[15].dt;
					let h5Time = hTime(h5Weekdt);
					$("#h5 #timeTit").html(h5Time + "<span>시</span>");
					$("#h5 #timeIcon").attr("src", h5URL);
					$("#h5 #timeTemp").html(resps.hourly[15].temp + "<span>°C</span>");

					let h6URL = "/resources/img/wb/" + resps.hourly[18].weather[0].icon + ".png";
					let h6Weekdt = resps.hourly[18].dt;
					let h6Time = hTime(h6Weekdt);
					$("#h6 #timeTit").html(h6Time + "<span>시</span>");
					$("#h6 #timeIcon").attr("src", h6URL);
					$("#h6 #timeTemp").html(resps.hourly[18].temp + "<span>°C</span>");

					let h7URL = "/resources/img/wb/" + resps.hourly[21].weather[0].icon + ".png";
					let h7Weekdt = resps.hourly[21].dt;
					let h7Time = hTime(h7Weekdt);
					$("#h7 #timeTit").html(h7Time + "<span>시</span>");
					$("#h7 #timeIcon").attr("src", h7URL);
					$("#h7 #timeTemp").html(resps.hourly[21].temp + "<span>°C</span>");

					let h8URL = "/resources/img/wb/" + resps.hourly[24].weather[0].icon + ".png";
					let h8Weekdt = resps.hourly[24].dt;
					let h8Time = hTime(h8Weekdt);
					$("#h8 #timeTit").html(h8Time + "<span>시</span>");
					$("#h8 #timeIcon").attr("src", h8URL);
					$("#h8 #timeTemp").html(resps.hourly[24].temp + "<span>°C</span>");

					let h9URL = "/resources/img/wb/" + resps.hourly[27].weather[0].icon + ".png";
					let h9Weekdt = resps.hourly[27].dt;
					let h9Time = hTime(h9Weekdt);
					$("#h9 #timeTit").html(h9Time + "<span>시</span>");
					$("#h9 #timeIcon").attr("src", h9URL);
					$("#h9 #timeTemp").html(resps.hourly[27].temp + "<span>°C</span>");
				}
			})

		}

		function showError4(event) {
			alert("위치 정보를 얻을 수 없습니다.")
		}
	}
</script>
<script type="text/javascript">
	function wea2() {

		var sl = $('#Slocation').val().split("::");
		//console.log(sl);

		var latitude = sl[0];
		var longitude = sl[1];

		let apiKey = "059aa9eae2040819bfb97ec8742f408c"
		var apiURI = "https://api.openweathermap.org/data/2.5/weather?lat=" + latitude + "&lon=" + longitude +
			"&lang=kr&appid=" + apiKey + "&units=metric";
		var api2URI = "https://api.openweathermap.org/data/2.5/onecall?lat=" + latitude + "&lon=" + longitude +
			"&exclude=alerts&lang=kr&appid=" + apiKey + "&units=metric";
		$.ajax({
			url: apiURI,
			dataType: "json",
			type: "GET",
			async: "false",
			success: function (resp) {
				let todayURL = "/resources/img/wb/" + resp.weather[0].icon + ".png";
				$("#today_icon").attr("src", todayURL);
				$("#today_name").html(resp.weather[0].description);
				$("#ondo").html(resp.main.temp);
				$("#sdo").html("습도 : " + resp.main.humidity + "%");
				$("#psok").html("풍속 : " + resp.wind.speed + "m/s");
				$("#dosi").html($("#Slocation option:checked").text());

				let ct = resp.dt;

				function convertTime(t) {
					let ot = new Date(t * 1000);
					let day = ot.getDay();
					let hr = ot.getHours();
					let m = ot.getMinutes();

					let arrDayStr = ['일', '월', '화', '수', '목', '금', '토']
					return "(" + arrDayStr[day] + "요일) " + hr + ":" + m;
				}
				let currentTime = convertTime(ct);
				$("#today_date").html(currentTime);
			}
		})
		$.ajax({
			url: api2URI,
			dataType: "json",
			type: "GET",
			async: "false",
			success: function (resps) {
				function convertTime(t) {
					let ots = new Date(t * 1000);
					let day = ots.getDay();

					let arrDayStr = ['일', '월', '화', '수', '목', '금', '토']
					return arrDayStr[day];
				}

				function hTime(dst) {
					let dates = new Date(dst * 1000);
					let hours = dates.getHours();
					return hours;
				}

				$("#pop").html("강수확률 : " + resps.daily[0].pop*100 + "%");

				let oneURL = "/resources/img/wb/" + resps.daily[0].weather[0].icon + ".png";
				$("#one #weekIcon").attr("src", oneURL);
				$("#one #weekMax").html(resps.daily[0].temp.max + "<span>°C</span>");
				$("#one #weekMin").html(resps.daily[0].temp.min + "<span>°C</span>");

				let towURL = "/resources/img/wb/" + resps.daily[1].weather[0].icon + ".png";
				$("#tow #weekIcon").attr("src", towURL);
				let towWeekdt = resps.daily[1].dt;
				let towTime = convertTime(towWeekdt);
				$("#tow #weekDay").html(towTime);
				$("#tow #weekMax").html(resps.daily[1].temp.max + "<span>°C</span>");
				$("#tow #weekMin").html(resps.daily[1].temp.min + "<span>°C</span>");

				let threeURL = "/resources/img/wb/" + resps.daily[2].weather[0].icon + ".png";
				$("#three #weekIcon").attr("src", threeURL);
				let threeWeekdt = resps.daily[2].dt;
				let threeTime = convertTime(threeWeekdt);
				$("#three #weekDay").html(threeTime);
				$("#three #weekMax").html(resps.daily[2].temp.max + "<span>°C</span>");
				$("#three #weekMin").html(resps.daily[2].temp.min + "<span>°C</span>");

				let fourURL = "/resources/img/wb/" + resps.daily[3].weather[0].icon + ".png";
				$("#four #weekIcon").attr("src", fourURL);
				let fourWeekdt = resps.daily[3].dt;
				let fourTime = convertTime(fourWeekdt);
				$("#four #weekDay").html(fourTime);
				$("#four #weekMax").html(resps.daily[3].temp.max + "<span>°C</span>");
				$("#four #weekMin").html(resps.daily[3].temp.min + "<span>°C</span>");

				let fiveURL = "/resources/img/wb/" + resps.daily[4].weather[0].icon + ".png";
				$("#five #weekIcon").attr("src", fiveURL);
				let fiveWeekdt = resps.daily[4].dt;
				let fiveTime = convertTime(fiveWeekdt);
				$("#five #weekDay").html(fiveTime);
				$("#five #weekMax").html(resps.daily[4].temp.max + "<span>°C</span>");
				$("#five #weekMin").html(resps.daily[4].temp.min + "<span>°C</span>");

				let sixURL = "/resources/img/wb/" + resps.daily[5].weather[0].icon + ".png";
				$("#six #weekIcon").attr("src", sixURL);
				let sixWeekdt = resps.daily[5].dt;
				let sixTime = convertTime(sixWeekdt);
				$("#six #weekDay").html(sixTime);
				$("#six #weekMax").html(resps.daily[5].temp.max + "<span>°C</span>");
				$("#six #weekMin").html(resps.daily[5].temp.min + "<span>°C</span>");

				let sevenURL = "/resources/img/wb/" + resps.daily[6].weather[0].icon + ".png";
				$("#seven #weekIcon").attr("src", sevenURL);
				let sevenWeekdt = resps.daily[6].dt;
				let sevenTime = convertTime(sevenWeekdt);
				$("#seven #weekDay").html(sevenTime);
				$("#seven #weekMax").html(resps.daily[6].temp.max + "<span>°C</span>");
				$("#seven #weekMin").html(resps.daily[6].temp.min + "<span>°C</span>");

				let eightURL = "/resources/img/wb/" + resps.daily[7].weather[0].icon + ".png";
				$("#eight #weekIcon").attr("src", eightURL);
				let eightWeekdt = resps.daily[7].dt;
				let eightTime = convertTime(eightWeekdt);
				$("#eight #weekDay").html(eightTime);
				$("#eight #weekMax").html(resps.daily[7].temp.max + "<span>°C</span>");
				$("#eight #weekMin").html(resps.daily[7].temp.min + "<span>°C</span>");

				let h0URL = "/resources/img/wb/" + resps.hourly[0].weather[0].icon + ".png";
				$("#h0 #timeIcon").attr("src", h0URL);
				$("#h0 #timeTemp").html(resps.hourly[0].temp + "<span>°C</span>");

				let h1URL = "/resources/img/wb/" + resps.hourly[3].weather[0].icon + ".png";
				let h1Weekdt = resps.hourly[3].dt;
				let h1Time = hTime(h1Weekdt);
				$("#h1 #timeTit").html(h1Time + "<span>시</span>");
				$("#h1 #timeIcon").attr("src", h1URL);
				$("#h1 #timeTemp").html(resps.hourly[3].temp + "<span>°C</span>");

				let h2URL = "/resources/img/wb/" + resps.hourly[6].weather[0].icon + ".png";
				let h2Weekdt = resps.hourly[6].dt;
				let h2Time = hTime(h2Weekdt);
				$("#h2 #timeTit").html(h2Time + "<span>시</span>");
				$("#h2 #timeIcon").attr("src", h2URL);
				$("#h2 #timeTemp").html(resps.hourly[6].temp + "<span>°C</span>");

				let h3URL = "/resources/img/wb/" + resps.hourly[9].weather[0].icon + ".png";
				let h3Weekdt = resps.hourly[9].dt;
				let h3Time = hTime(h3Weekdt);
				$("#h3 #timeTit").html(h3Time + "<span>시</span>");
				$("#h3 #timeIcon").attr("src", h3URL);
				$("#h3 #timeTemp").html(resps.hourly[9].temp + "<span>°C</span>");

				let h4URL = "/resources/img/wb/" + resps.hourly[12].weather[0].icon + ".png";
				let h4Weekdt = resps.hourly[12].dt;
				let h4Time = hTime(h4Weekdt);
				$("#h4 #timeTit").html(h4Time + "<span>시</span>");
				$("#h4 #timeIcon").attr("src", h4URL);
				$("#h4 #timeTemp").html(resps.hourly[12].temp + "<span>°C</span>");

				let h5URL = "/resources/img/wb/" + resps.hourly[15].weather[0].icon + ".png";
				let h5Weekdt = resps.hourly[15].dt;
				let h5Time = hTime(h5Weekdt);
				$("#h5 #timeTit").html(h5Time + "<span>시</span>");
				$("#h5 #timeIcon").attr("src", h5URL);
				$("#h5 #timeTemp").html(resps.hourly[15].temp + "<span>°C</span>");

				let h6URL = "/resources/img/wb/" + resps.hourly[18].weather[0].icon + ".png";
				let h6Weekdt = resps.hourly[18].dt;
				let h6Time = hTime(h6Weekdt);
				$("#h6 #timeTit").html(h6Time + "<span>시</span>");
				$("#h6 #timeIcon").attr("src", h6URL);
				$("#h6 #timeTemp").html(resps.hourly[18].temp + "<span>°C</span>");

				let h7URL = "/resources/img/wb/" + resps.hourly[21].weather[0].icon + ".png";
				let h7Weekdt = resps.hourly[21].dt;
				let h7Time = hTime(h7Weekdt);
				$("#h7 #timeTit").html(h7Time + "<span>시</span>");
				$("#h7 #timeIcon").attr("src", h7URL);
				$("#h7 #timeTemp").html(resps.hourly[21].temp + "<span>°C</span>");

				let h8URL = "/resources/img/wb/" + resps.hourly[24].weather[0].icon + ".png";
				let h8Weekdt = resps.hourly[24].dt;
				let h8Time = hTime(h8Weekdt);
				$("#h8 #timeTit").html(h8Time + "<span>시</span>");
				$("#h8 #timeIcon").attr("src", h8URL);
				$("#h8 #timeTemp").html(resps.hourly[24].temp + "<span>°C</span>");

				let h9URL = "/resources/img/wb/" + resps.hourly[27].weather[0].icon + ".png";
				let h9Weekdt = resps.hourly[27].dt;
				let h9Time = hTime(h9Weekdt);
				$("#h9 #timeTit").html(h9Time + "<span>시</span>");
				$("#h9 #timeIcon").attr("src", h9URL);
				$("#h9 #timeTemp").html(resps.hourly[27].temp + "<span>°C</span>");
			}
		})

		function showError4(event) {
			alert("위치 정보를 얻을 수 없습니다.")
		}
	}
</script>
<!--  날씨위젯 끝  -->

<script type="text/javascript">
		
	function travel() {
		if ($("#t_name").val()!='') {

			var t_date = $("#t_date").val();
			t_date = t_date.split("~");
			var t_dateb = t_date[0].trim();
			var t_datec = t_date[1].trim();
			$.ajax({
				type : "POST",
				url : "/rest/travel",
				data : {
					mem_id : $("#sat").text(),
					plan_name : $("#t_name").val(),
					startdate : t_dateb,
					enddate : t_datec
				},
				success : function(data) {
					// C에서 받아온 데이터로 새로 뿌려주기
					//console.log(data);
					ftravel();
				},
				error : function(a) {
					console.log(a);
				}
			});
		}else {
			alert("여행이름을 입력해주세요")
		}
	}
	function ftravel() {
		
				$.ajax({
					type : "POST",
					url : "/rest/ftravel",
					dataType : "json",
					data : {
						mem_id : $("#sat").text()
					},
					success : function(data) {
						// C에서 받아온 데이터로 새로 뿌려주기
						//console.log(data);
						$("#travel_l").html("");
						$("#travel_r").html("");
						for (var i = 0; i < data.length; i++) {
							$("#travel_l")
									.append(
											"<div class='travel_in pName' onclick='ftravel_info(this)'>"
													+ "<span style='display:none'>"
													+ data[i].plan_id
													+ "</span>"
													+ "<p>"
													+ data[i].plan_name
													+ "</p>"
													+ "<p>"
													+ data[i].startdate
													+ "</p>"
													+ "<p>"
													+ data[i].enddate
													+ "</p>"
													+ '<h5 onclick="travel_del(this)"><i class="fa-solid fa-xmark"></i></h5>'
													+ "</div>");
							//$("#plantable").append("<tr>" + "<td>" + data[i].plan_name + "</td>" + "<td>" + data[i].startdate + "</td>" + "<td>" + data[i].enddate + "</td>" + "</tr>");
							//$("#plantable").append("<tr>" + "<td>" + data[i].startdate + "</td>" + "</tr>");
							//$("#plantable").append("<tr>" + "<td>" + data[i].enddate + "</td>" + "</tr>");
						}

					},
					error : function(a) {
						console.log(a);
					}
				});
	}

	function ftravel_info(tdata) {
		//console.log(tdata.children);
		var pli = tdata.children.item(0).innerText;
			
				$.ajax({
					type : "POST",
					url : "/rest/ftravelinfo",
					dataType : "json",
					data : {
						plan_id : pli
					},
					success : function(data) {
						$("#travel_r").html("");
						$("#travel_r")
						.append("<div class='travel_in pName'>"
								+ "<p>"
								+ tdata.children.item(1).innerText
								+ "</p>"
								+ "<p>"
								+ tdata.children.item(2).innerText
								+ "</p>"
								+ "<p>"
								+ tdata.children.item(3).innerText
								+ "</p>"
								+ "</div>");
						for (var i = 0; i < data.length; i++) {
							$("#travel_r")
									.append(
											"<div onclick='ftravel_goto(this)'>"
													+ '<div style="display: none;">'
													+ data[i].product_id
													+ "</div>"
													+ '<img src="/resources/img/upload/' + data[i].product_img1 + '" width="100" height="75"/>'
													+ "<div>"
													+ '<p>'
													+ data[i].product_name
													+ '</p>'
													+ '<p>'
													+ data[i].product_shortword
													+ '</p>'
													+ '<p>'
													+ data[i].product_address
													+ '</p>'
													+ '<h5><i class="fa-solid fa-xmark"></i></h5>'
													+ "</div>" + "</div>");
						}
					},
					error : function(a) {
						console.log(a);
					}
				});
	}

	function ftravel_goto(gdata) {
		console.log(gdata.children.item(1).innerText);
		location.href = "/category/" + gdata.children.item(1).innerText;
	}

	function travel_del(data) {
		//console.log(data.parentElement.children.item(0).innerText);
		var dpid = data.parentElement.children.item(0).innerText;
		$.ajax({
			type : "POST",
			url : "/rest/travel_del",
			async : "false",
			data : {
				mem_id : $("#sat").text(),
				plan_id : dpid
			},
			success : function(data) {
				// C에서 받아온 데이터로 새로 뿌려주기
				ftravel();
			},
			error : function(a) {
				//console.log(a);
			}
		});

	}
</script>

	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	<script type="text/javascript">
	$(function () {
        $('#t_date').daterangepicker({
            "locale": {
                "format": "YYYY-MM-DD",
                "separator": " ~ ",
                "applyLabel": "확인",
                "cancelLabel": "취소",
                "fromLabel": "From",
                "toLabel": "To",
                "customRangeLabel": "Custom",
                "weekLabel": "W",
                "daysOfWeek": ["월", "화", "수", "목", "금", "토", "일"],
                "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                
            },
            "startDate": new Date(),
            "endDate": new Date(),
            "drops": "down",
            "opens": "center"
        }, function (start, end, label) {
            console.log('New date range selected: ' + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD') + ' (predefined range: ' + label + ')');
        });
    });
	
	</script>
	<script type="text/javascript">
		function freview() {
			$.ajax({
				type : "POST",
				url : "/rest/freview",
				dataType : "json",
				data : {
					mem_id : $("#sat").text()
				},
				success : function(data) {
					// C에서 받아온 데이터로 새로 뿌려주기
					//console.log(data);
					$("#review_l").html("");
					$("#review_r").html("");
					for (var i = 0; i < data.length; i++) {
						$("#review_l")
								.append(
										"<div class='travel_in pName' onclick='freview_info(this)'>"
												+ "<span style='display:none'>"
												+ data[i].product_id
												+ "</span>"
												+ '<img src="/resources/img/upload/' + data[i].product_img1 + '" width="100" height="75"/>'
												+ "<p>"
												+ data[i].product_name
												+ "</p>"
												+ "<p>"
												+ data[i].product_shortword
												+ "</p>"
												+ "<p>"
												+ data[i].product_address
												+ "</p>"
												+ "</div>");

					}

				},
				error : function(a) {
					console.log(a);
				}
			});
		}
		
		function freview_info(rvdata) {
			var rei = rvdata.children.item(0).innerText;
			//console.log(rei);
			$.ajax({
				type : "POST",
				url : "/rest/freview_info",
				dataType : "json",
				async: "false",
				data : {
					mem_id : $("#sat").text(),
					product_id : rei
				},
				success : function(data) {
					//console.log(rvdata.children.item(1).src);
					$("#review_r").html("");
					$("#review_r")
					.append("<div class='travel_in pName'>"
							+ '<img src="' + rvdata.children.item(1).src + '" width="100" height="75"/>'			
							+ "<p>"
							+ rvdata.children.item(2).innerText
							+ "</p>"
							+ "<p>"
							+ rvdata.children.item(3).innerText
							+ "</p>"
							+ "<p>"
							+ rvdata.children.item(4).innerText
							+ "</p>"
							+ "</div>"); 
					for (var i = 0; i < data.length; i++) {
						$("#review_r")
								.append(
										"<div class='travel_in pName'>"
												+ '<img src="/resources/img/upload/' + data[i].mem_img + '" width="100" height="75"/>'
												+ "<p>"
												+ data[i].mem_id
												+ "</p>"
												+ "<p>"
												+ '<span class="star2"> ★★★★★ <span id="star_r"style="width:'+ data[i].r_star*10+'%">★★★★★</span></span>'
												+ "</p>"
												+ "<div>"
												+ data[i].r_comment
												+ "</div>"
												);
												if(data[i].r_img1!=''){
													$("#review_r")
													.append('<img src="/resources/img/upload/' + data[i].r_img1 + '" width="350" height="350"/>')
												}
												
												$("#review_r")
												.append( "</div>");

					}

				},
				error : function(a) {
					console.log(a);
				}
			});
		}  
	</script>
	
	<script type="text/javascript">
	 const drawStar = (target) => {
		var ss = target.value*10;
		console.log(target.value*10);
		$('#star_r').css('width',ss+'%')
	    //document.querySelector('.star span').style.width = '${target.value*10}%';
		
	  } 

</script>

<header id="header">
	<div class="header_in" id="header_in">
		<h1><a href="/">TRIPLE</a></h1>
		<security:authorize access="isAnonymous()">
		<div class="menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
		</security:authorize>
		<security:authorize access="isAuthenticated()">
		<div class="menu" onclick="mtest()">
			<span></span>
			<span></span>
			<span></span>
		</div>
		</security:authorize>
	</div>

	<div class="header_ch" id="header_ch">
		<div class="ch_in">
			<form action="/top_search" id="ch_form" method="get">
				<div class="ch_title">
					<h2>Triple 트리플</h2>
					<div class="tit_cover"></div>
				</div>

				<div class="ch_btn">
					<div class="btn" onclick="$('#ch_form').submit()">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
				</div>

				<div class="ch_context ch_tot">
					<select name="cate_search" id="cate_search">
						<option value="전체" selected="selected" hidden="hidden">여행상품 검색</option>
						<option value="전체">전체</option>
						<option value="호텔">호텔</option>
						<option value="리조트">리조트</option>
						<option value="펜션">펜션</option>
						<option value="모텔">모텔</option>
						<option value="게스트하우스">게스트하우스</option>					
						<option value="캠핑">캠핑</option>
						<option value="맛집">맛집</option>
						<option value="패키지여행">패키지여행</option>
						<option value="티켓">티켓</option>
					</select>
				</div>

				<div class="ch_local ch_tot">
					<select name="city_search" id="city_search">
						<option value="전체" selected="selected" hidden="hidden">여행지를 선택하세요</option>
						<option value="전체">전체</option>
						<option value="서울">서울</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
						<option value="울산">울산</option>
						<option value="인천">인천</option>
						<option value="광주">광주</option>
						<option value="제주">제주</option>
						<option value="경기도">경기도</option>
						<option value="강원도">강원도</option>
						<option value="충청도">충청도</option>
						<option value="전라도">전라도</option>
						<option value="경상도">경상도</option>
					</select>
				</div>

				<div class="ch_search ch_tot">
					<select name="main_search" id="main_search">
						<option value="여행지 검색">여행지 검색</option>
						<option value="매거진 검색">매거진 검색</option>
					</select>
				</div>

				<!-- <div class="ch_date">
					<label>
						<input id="range" mbsc-input placeholder="여행날짜를 선택해주세요." readonly/>
					</label>
				</div> -->
			</form>
		</div>
	</div>
</header>

<div id="cover"></div>
<div id="s_menu">
	<div class="menu_in" id="menu_in">
		<div class="menu_top">
			<div class="close">
				<div class="close_btn">
					<span></span>
					<span></span>
				</div>
			</div>
		</div>

		<div class="menu_login" id="menu_login">
			<div class="login_in">
				<security:authorize access="isAnonymous()">
					<div class="top" id="ml_top">
						<a href="javascript:;">
							<h3>로그인/회원가입</h3>
						</a>
					</div>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<div class="top2" id="ml_top2">
						<a href="javascript:;">
							<h3 id="sat"><security:authentication property="principal.username"/></h3>
							<h3>님 반갑습니다.</h3>
						<img src="" id="pi">
						</a>
						<p onclick="logout()">로그아웃</p>
					</div>
				</security:authorize>

				<div class="bottom">
					<ul>
						<li>
							<security:authorize access="isAnonymous()">
							<a href="javascript:;">
								<div class="num">
									<!-- jsp코드 -->									
									<p></p>									
								</div>
								<div class="txt">
									<h4>내 여행</h4>
								</div>
							</a>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
							<a onclick="ftravel()">
								<div class="num">
									<!-- jsp코드 -->									
									<span id="plan_num"></span>								
								</div>
								<div class="txt">
									<h4>내 여행</h4>
								</div>
							</a>
							</security:authorize>
						</li>

						<li>
							<a onclick="freview()">
								<div class="num">
									<!-- jsp코드 -->
									<span id="review_num"></span>	
								</div>
								<div class="txt">
									<h4>리뷰</h4>
								</div>
							</a>
						</li>

						<li>
							<a href="javascript:;">
								<div class="num">
									<!-- jsp코드 -->
									<img id="wicon" src="">
								</div>
								<div class="txt">
									<h4 class="wb_r">날씨 : </h4><h4 id="wename"></h4>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="list_menu">
			<div class="l_menu_in">
				<ul>
					<li>
						<a href="javascript:;">
							<h3>내 저장</h3>
							<div class="l_wrap">
								<div class="num" id="heart_num">
									<!-- jsp코드 -->
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<h3>내 예약</h3>
							<div class="l_wrap">
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<h3>쿠폰함</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> 개</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<!-- <li>
						<a href="javascript:;">
							<h3>트리플 캐시</h3>
							<div class="l_wrap">
								<div class="num">
									jsp코드
									0
									<span> 원</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li> -->

					<li>
						<a href="javascript:;">
							<h3>여행자 클럽</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> P</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
					<li>
						<a href="/admin/tm">
							<h3>매거진 작성하기</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> P</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>
					<li>
						<a href="/admin/oL">
							<h3>상품 목록</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> P</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>
					</security:authorize>
				</ul>
			</div>
		</div>

		<div class="padding"></div>

		<div class="tip">
			<div class="tip_in">
				<ul>
					<li>
						<a href="/qna/noticeList">
							<div class="img">
								<i class="fa-solid fa-bullhorn"></i>
							</div>

							<div class="txt">
								<h3>공지사항</h3>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<div class="img">
								<i class="fa-solid fa-book"></i>
							</div>

							<div class="txt">
								<h3>오프라인가이드</h3>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							
							<security:authorize access="isAnonymous()">
							<div class="img">
								<i class="fa-solid fa-user"></i>
							</div>
							<div class="txt">
								<h3>회원정보수정</h3>
							</div>
							</security:authorize>
							<security:authorize access="isAuthenticated()">
								<div id="gotombs" onclick="mtest2()">
									<div class="img">
										<i class="fa-solid fa-user"></i>
									</div>
									<div class="txt">
										<h3>회원정보수정</h3>
									</div>
								</div>
							</security:authorize>							
						</a>
					</li>

					<li>
						<a href="/qna/">
							<div class="img">
								<i class="fa-solid fa-headset"></i>
							</div>

							<div class="txt">
								<h3>고객센터</h3>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="menu_pop">
			<div class="pop_in">
				<div class="pop_slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide img1"><a href="1"></a></div>
						<div class="swiper-slide img2"><a href="2"></a></div>
						<div class="swiper-slide img3"><a href="3"></a></div>
						<div class="swiper-slide img4"><a href="4"></a></div>
						<div class="swiper-slide img5"><a href="5"></a></div>
						<div class="swiper-slide img6"><a href="6"></a></div>
						<div class="swiper-slide img7"><a href="7"></a></div>
					</div>
					<div class="swiper-pagination pop_pagi"></div>
				</div>
			</div>
		</div>

	</div>
</div>

<div id="join_cover1"></div>
<div id="join_cover2"></div>
<div id="join">
	<div class="join_in">
		<!-- <div class="img">
			<img src="resources/img/join/1.jpg" alt="">
		</div> -->
		<div class="login_layout">
			<div class="login_form">
				<div class="form_in">
					<h3>
					
					</h3>
					<div class="login_frame1">
						<form action="login" method="post" id="login">
							<div class="login_in">
								<div class="login_id_input id_pw_input">
									<span>아이디</span>
									<input type="text" name="mem_id" id="mem_id" placeholder="아이디" autofocus>
								</div>
								<div class="login_pw_input id_pw_input">
									<span>비밀번호</span>
									<input type="password" name="mem_pw" id="mem_pw"  placeholder="패스워드">
								</div>
							</div>
							<div class="login_btn">
								<input type="button" onclick="login()" value="로그인">
							</div>
							<!-- 이안에 체크박스? -->
						</form>
					</div>
					<div class="login_frame2">
						<div class="login_frame2_in">
							<span>자동로그인</span>
							<input type="checkbox" name="remember_me" id="remember_me" value="off">
							<div class="join_info">
								<P><a href="javascript:;">아이디/비밀번호 찾기</a></P>
								<P><a href="javascript:;" id="gotombs">회원가입</a></P>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="info">
			<div class="info_in">

			</div>
		</div>
	</div>
</div>
	<security:authorize access="isAnonymous()">
	 <div id="join_mbs">
      <div class="join_mbs_in">
         <h3>회원가입</h3>
         
         <div class="mbs_form">
            <form id="mbs" method="post" enctype="multipart/form-data" action="/join" onsubmit="amu()">
               <div class="mbs_id mbs_con mbs_id_pw">
                  <span>아이디</span>
                  <input type="text" name="mem_id" placeholder="아이디 입력">
               </div>
               <div class="mbs_pw1 mbs_con">
                  <span>비밀번호</span>
                  <input type="password" name="mem_pw" id="pw1" placeholder="비밀번호 입력">
               </div>
               <div class="mbs_pw2 mbs_con mbs_id_pw">
                  <span>비밀번호 확인</span>
                  <input type="password" name="mem_pw2" id="pw2" placeholder="비밀번호 확인">
                  <p class="pwMsg_ok">비밀번호가 맞습니다.</p>
                  <p class="pwMsg_no">비밀번호가 틀립니다.</p>
                  <p id="pwMsg" class="at">비밀번호 를 입력해주세요.</p>
               </div>
               <div class="email">
                  <span>이메일</span>
                  <input type="text" name="e_mail" id="e_mail" placeholder="메일주소 클릭해서 맞춰주세요">
                  <select name="e_mail2" id="e_mail2">
                     <option value="@naver.com">@naver.com</option>
                     <option value="@daum.net">@daum.net</option>
                     <option value="@google.com">@google.com</option>
                     <option value="@nate.com">@nate.com</option>
                  </select>
               </div>
               <div class="mbs_name mbs_con">
                  <span>이름</span>
                  <input type="text" name="name" placeholder="이름 입력">
               </div>
               <div class="mbs_phone mbs_con">
                  <span>전화번호</span>
                  <input type="text" name="tel" placeholder="전화번호 입력">
               </div>
               <div class="mbs_profile">
                  <div class="profile_frame1">
                     <div class="frame1_1">
                        <span>프로필 사진</span>
                        <!-- <input type="text" name="mem_img" placeholder="사진은 꼭 안넣으셔도 됩니다."> -->
                        <input type="file" name="image_file_name" id="image_file_name" onchange="readURL(this);" /> 
                        <input type="hidden" name="mem_img" id="img_h">
                        <input type="hidden" name="image_file_name_h" id="image_file_name_h">
                        
                        </div>
                     <!-- <div class="frame1_2">
                        <p>기본 프로필 사용</p>
                        <input type="checkbox" name="">
                     </div> -->
                  </div>
                  <div class="profile_frame2">
                     <div class="preview">
                           <img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
                     </div>
                  <!--    <span></span> -->
                  </div>
               </div>
               <div class="mbs_btn">
                  <div class="mbs_btn_rt mbs_btn_frame" id="backtologin">
                     뒤로가기
                     <!-- <input type="submit" value="뒤로가기" id="backtologin"> -->
                  </div>
                  <div class="mbs_btn_join mbs_btn_frame" onclick="$('#mbs').submit()">
                     회원가입 
                  </div>
                  	
               </div>
               
            </form>
         </div>
      </div>
   </div>
   </security:authorize>
   
   	<security:authorize access="isAuthenticated()">
	 <div id="join_mbs" class="joinUpdate">
      <div class="join_mbs_in">
         <h3>회원정보수정</h3>
         
         <div class="mbs_form">
				<form action="/updatePw" method="post" id="mbsp">
					
					<div class="mbs_pw1 mbs_con">
						<span>변경할 비밀번호</span> 
						<input type="password" name="mem_pw" id="pw1" placeholder="비밀번호 입력">
					</div>
					<div class="mbs_pw2 mbs_con mbs_id_pw">
						<span>비밀번호 확인</span> <input type="password" name="mem_pw2" id="pw2" placeholder="비밀번호 확인">
						<p class="pwMsg_ok">비밀번호가 맞습니다.</p>
						<p class="pwMsg_no">비밀번호가 틀립니다.</p>
						<p id="pwMsg" class="at">비밀번호 를 입력해주세요.</p>
					</div>
					<div class="mbs_btn">
						<div class="mbs_btn_join mbs_btn_frame"
								onclick="$('#mbsp').submit()">비밀번호변경
						</div>
					</div>
				</form>
				<hr>
				<form id="mbs2" method="post" enctype="multipart/form-data"
					action="/updateProfile" onsubmit="amu2()">
					<input type="hidden" id="mem_idp" name="mem_id">
					<div class="email">
						<span>이메일</span> 
						<input type="text" name="e_mail" id="e_mail"> 
							<select name="e_mail2" id="e_mail2">
							<option selected="selected" id="e_mail3" hidden="hidden">
							<option value="@naver.com">@naver.com</option>
							<option value="@daum.net">@daum.net</option>
							<option value="@google.com">@google.com</option>
							<option value="@nate.com">@nate.com</option>
							
						</select>
					</div>

					<div class="mbs_phone mbs_con">
						<span>전화번호</span> 
						<input type="text" name="tel" id="tel">
					</div>
					<div class="mbs_profile">
						<div class="profile_frame1">
							<div class="frame1_1">
								<span>프로필 사진</span>
								<!-- <input type="text" name="mem_img" placeholder="사진은 꼭 안넣으셔도 됩니다."> -->
								<input type="file" name="image_file_name"  id="image_file_name" onchange="readURL(this);" /> 
									<input type="hidden" name="mem_img" id="img_h">
									<input type="hidden" id="img_hs">
									<input type="hidden" name="image_file_name_h"  id="image_file_name_h">
							</div>
							<!-- <div class="frame1_2">
                        <p>기본 프로필 사용</p>
                        <input type="checkbox" name="">
                     </div> -->
						</div>
						<div class="profile_frame2">
							<div class="preview">
								<img id="preview" src="#" width=100 height=100
									alt="선택된 이미지가 없습니다" />
							</div>
							<!--    <span></span> -->
						</div>
					</div>
					<div class="mbs_btn">
						<div class="mbs_btn_rt mbs_btn_frame" id="backtomenu">
							닫기
							<!-- <input type="submit" value="뒤로가기" id="backtologin"> -->
						</div>
						<div class="mbs_btn_join mbs_btn_frame"
							onclick="$('#mbs2').submit()">수정하기
						</div>
					</div>
				</form>

			</div>
      </div>
   </div>
   </security:authorize>
   <!-- 회원 리뷰 등 정보 추가 -->
<div id="myInfo">
	<div class="myInfoIn">
		<div class="tap">
			<ul>
				<li class="on">
					<a onclick="ftravel()">내 여행</a>
				</li>

				<li>
					<a onclick="freview()">리뷰</a>
				</li>

				<li>
					<a href="javascript:;">날씨</a>
				</li>
			</ul>
		</div>

		<div class="menutap">
			<div class="tap_in">
				<div class="con on">
				<!-- 시큐리티 로그인안함 여행시작-->
					<security:authorize access="isAnonymous()">
					<div class="con_in un_login_con">
						<div class="message_box">
							<div class="icon">
								<i class="fa-solid fa-calendar"></i>
							</div>

							<div class="txt">
								<h2>여행을 떠나시나요?</h2>
								<p>여행 일정을 입력하고</p>
								<p>여행 계획을 세워보세요.</p>
							</div>
						</div>
					</div>
					</security:authorize>
				<!-- 시큐리티 로그인함 -->
					<security:authorize access="isAuthenticated()">
					<div class="login_con">
						<!-- <!— 내용을 넣어주세요 —> -->
						<div class="loginConIn">
							<div class="left">
								<div class="travelTop">
									<div class="travelTopIn">
										<form action="">
											<ul>
												<li>
													<h2>여행이름</h2>
													<input type="text" name="t_name" id="t_name">
												</li>
												<li>
													<h2>여행기간</h2>
													<input type="text" id="t_date" name="t_date" readonly="readonly"/>
												</li>
											</ul>
										</form>
										<button onclick="travel()">여행만들기!</button>
									</div>
								</div>
								<div class="travelName">
									<h2>내가만든 여행리스트</h2>
									<span>여행이름</span>
									<span>여행시작</span>
									<span>여행종료</span>
								</div>
								<div id="travel_l"></div>
							</div>

							<div class="right">
							<!-- 아래의 폼은 만들기 여행작성 활성화를 누르면 보이고 
								여행 만들기를 수행하면 안보이게 사라져야합니다 -->
								<div id="travel_r" style="overflow: auto;"></div>
							</div>

						</div>
					</div>
					</security:authorize>
				</div>

				<div class="con">
				<security:authorize access="isAnonymous()">
					<div class="con_in un_login_con">
						<div class="message_box">
							<div class="icon">
								<i class="fa-solid fa-pen"></i>
							</div>

							<div class="txt">
								<h2>리뷰가 없습니다.</h2>
								<p>다녀온 여행지에 대해</p>
								<p>리뷰를 남겨보세요.</p>
							</div>
						</div>
					</div>
				</security:authorize>

					<security:authorize access="isAuthenticated()">
					<div class="login_con">
						<!-- <!— 리뷰내용을 넣어주세요 —> -->
						<div class="loginConIn">
							<div class="left" style="overflow: auto;">
								<div id="review_l" ></div>
							</div>
								
							<div class="right" style="overflow: auto;">
								<div id="review_r" ></div>
							</div>
						</div>
					</div>
					</security:authorize>
				</div>

				<div class="con">
					<div class="con_in">
						<div class="wb_main">
							<div class="today">
								<div class="today_in">
									<div class="icon">
										<div class="img">
											<img id="today_icon">
										</div>
										<div class="txt">
											<h4 id="ondo"></h4>
											<h5>°C</h5>
										</div>
										<div class="todayOption">
											<h4 id="pop">강수확률 : </h4>
											<h4 id="sdo">습도 : </h4>
											<h4 id="psok">풍속 : </h4>
										</div>
									</div>
									<div class="name">
										<h4 id="dosi"></h4>
										<h4 id="today_date"></h4>
										<h4 id="today_name"></h4>
									</div>
								</div>
							</div>

							<div class="time">
								<div class="time_in">
									<h2>3시간별 일기예보</h2>
									<ul>
										<li id="h0">
											<div class="tit">
												<h4 id="timeTit">지금</h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h1">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h2">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h3">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h4">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h5">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h6">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h7">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h8">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

										<li id="h9">
											<div class="tit">
												<h4 id="timeTit"></h4>
											</div>

											<div class="icon">
												<img id="timeIcon" >
											</div>

											<div class="temp">
												<h4 id="timeTemp"></h4>
											</div>
										</li>

									</ul>
								</div>
							</div>

							<div class="week">
								<div class="week_in">
									<h2>8일간의 일기예보</h2>
									<ul>
										<li id="one">
											<div class="tit">
												<h4 id="weekDay">오늘</h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="tow">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="three">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="four">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="five">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="six">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="seven">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

										<li id="eight">
											<div class="tit">
												<h4 id="weekDay"></h4>
											</div>
											<div class="icon">
												<img id="weekIcon" >
											</div>
											<div class="txt">
												<p id="weekMax"></p>
												<p id="weekMin"></p>
											</div>
										</li>

									</ul>
								</div>
							</div>

							<div class="dateBtn">
								<div class="left">
									<button onclick="wea()">현재위치 날씨보기</button>
								</div>
								<div class="right">
									<select id="Slocation">
										<option value="33.36::126.54" selected="selected" hidden="hidden">지역선택</option>
										<option value="37.56::126.97">서울</option>
										<option value="36.35::127.38">대전</option>
										<option value="35.80::128.58">대구</option>
										<option value="35.20::129.05">부산</option>
										<option value="35.52::129.23">울산</option>
										<option value="37.47::126.57">인천</option>
										<option value="35.12::126.83">광주</option>
										<option value="33.36::126.54">제주</option>
										<option value="37.56::127.20">경기도</option>
										<option value="37.55::128.20">강원도</option>
										<option value="36.58::127.35">충청도</option>
										<option value="35.26::127.02">전라도</option>
										<option value="35.75::128.66">경상도</option>
									</select>
									<button onclick="wea2()">날씨 검색</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="myInfoCover"></div>
<!-- <!— 회원 리뷰 등 정보 추가 끝 —> -->
<div id="top_up">
	<div class="top_in">
		<i class="fa-solid fa-angles-up"></i>
	</div>
</div>