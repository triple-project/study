<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>조인+헤더테스트</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/main.css">
	
	

	<script src="resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="resources/js/main.js"></script>
	
	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
	
	<script type="text/javascript">
		function travel() {
			var t_date = $("#t_date").val();
			t_date = t_date.split("~");
			var t_dateb = t_date[0].trim();
			var t_datec = t_date[1].trim();
			$.ajax({
				type : "POST",
				url : "/rest/travel",
					dataType : "json",
					data : {
						mem_id : $("#sat").text(),
						plan_name : $("#t_name").val(),
						startdate : t_dateb,
						enddate : t_datec
					},
					success : function(data) {
		           		 // C에서 받아온 데이터로 새로 뿌려주기
						console.log(data);
						/* $("#heart_num").html(data.heart)
						$("#plan_num").html(data.plan) */
					},
					error : function(a){
						console.log(a);
		            }
				});
		}
		
		function ftravel() {
			$.ajax({
				type : "GET",
				url : "/rest/travel",
					dataType : "json",
					data : {
						mem_id : $("#sat").text(),
					},
					success : function(data) {
		           		 // C에서 받아온 데이터로 새로 뿌려주기
						console.log(data);
						/* $("#heart_num").html(data.heart)
						$("#plan_num").html(data.plan) */
					},
					error : function(a){
						console.log(a);
		            }
				});
		}
	</script>
	<script type="text/javascript">
		function d_test() {
			var a = $("#t_date").val();
			var d = $("#t_date").val();
			console.log(d);
			a = a.split("~");
			var b = a[0].trim();
			var c = a[1].trim();
			console.log(a);
			console.log(b);
			console.log(c);
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



</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>
	<form action="join" method="post">
	아이디 : <input type="text" name="mem_id">
	비밀번호 : <input type="text" name="mem_pw">
	이름 : <input type="text" name="name">
	<input type="submit" value="가입">
	</form>
	<a href="aa">test</a>
	<hr>
	<p style="font-size: 5em;">일정 혹은 여행</p>
	
	
	<div id="travel_c">
		<div>일정이름</div>
		<div>일정날짜</div>
	</div>
	<form action="">
	여행이름	<input type="text" name="t_name" id="t_name"><br>
	여행기간	<input type="text" id="t_date" name="t_date" readonly="readonly"/><br>
	
	</form>
	<button onclick="travel()">여행만들기</button>
	<button onclick="d_test()">날짜값조회</button>
	<!-- <button onclick="select()">상단검색테스트</button> -->
	<button onclick="ftravel()">여행조회</button>
</body>
</html>