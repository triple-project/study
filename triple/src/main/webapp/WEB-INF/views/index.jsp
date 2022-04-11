<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=1300">
<title>Document</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
	integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css"
	integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css"
	integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css"
	integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css"
	integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css"
	integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css"
	integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css"
	integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="resources/css/common.css">
<link rel="stylesheet" href="resources/css/main.css">


<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="resources/js/mobiscroll.jquery.min.js"></script>
<script src="https://kit.fontawesome.com/8d1d3d3a2e.js"
	crossorigin="anonymous"></script>
<script src="resources/js/main.js"></script>

<link rel="shortcut icon" href="#">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<script type="text/javascript">
	function bcate(data) {
		var bdata = data.children.item(1).innerText;
		location.href = "/cate_button/" + bdata;
	}
</script>
<script type="text/javascript">
	$(function() {
		$('#depPlandTime').daterangepicker(
				{
					"locale" : {
						"format" : "YYYYMMDD",
						"separator" : " ~ ",
						"applyLabel" : "확인",
						"cancelLabel" : "취소",
						"fromLabel" : "From",
						"toLabel" : "To",
						"customRangeLabel" : "Custom",
						"weekLabel" : "W",
						"daysOfWeek" : [ "월", "화", "수", "목", "금", "토", "일" ],
						"monthNames" : [ "1월", "2월", "3월", "4월", "5월", "6월",
								"7월", "8월", "9월", "10월", "11월", "12월" ],
					},
					"singleDatePicker" : true,
					"startDate" : new Date(),
					"endDate" : new Date(),
					"drops" : "down",
					"opens" : "center"
				},
				function(start, end, label) {
					console.log('New date range selected: '
							+ start.format('YYYY-MM-DD') + ' to '
							+ end.format('YYYY-MM-DD') + ' (predefined range: '
							+ label + ')');
				});
	});
</script>
<script type="text/javascript">
	$(document).ready(
			function apitest() {
				$.ajax({
					type : "POST",
					url : "/rest/ci",
					dataType : "json",
					data : {
						depPlandTime : $("#depPlandTime").val(),
						depPlaceId : $("#depPlaceId").val(),
						arrPlaceId : $("#arrPlaceId").val(),
						trainGradeCode : $("#trainGradeCode").val()
					},
					responseType : 'application/json',
					success : function(data) {
						const element2 = $("#teatable");
						element2.html('');
						element2.append("<tr>" + "<th>출발시간</th>"
								+ "<th>출발역</th>" + "<th>도착시간</th>"
								+ "<th>도착역</th>" + "<th>열차</th>" + "</tr>");
						var train = data.response.body.items;
						for (var i = 0; i < train.item.length; i++) {

							element2.append("<tr>" + "<td>"
									+ train.item[i].depplandtime + "</td>"
									+ "<td>" + train.item[i].depplacename
									+ "</td>" + "<td>"
									+ train.item[i].arrplandtime + "</td>"
									+ "<td>" + train.item[i].arrplacename
									+ "</td>" + "<td>"
									+ train.item[i].traingradename + "</td>"
									+ +"</tr>");
						}
					},
					error : function(a, b, c) {
						console.log(a, b, c);
					}
				});
			})
</script>
<script type="text/javascript">
	$(document).ready(
			function apitest() {
				$.ajax({
					type : "POST",
					url : "/rest/flightInfo",
					dataType : "json",
					data : {
						depPlandTime : $("#depPlandTime").val(),
						depAirportId : $("#depAirportId").val(),
						arrAirporrtId : $("#arrAirporrtId").val(),
						airlineId : $("#airlineId").val()
					},
					responseType : 'application/json',
					success : function(data) {
						const element2 = $("#fteatable");
						element2.html('');
						element2.append("<tr>" + "<th>출발시간</th>"
								+ "<th>출발공항</th>" + "<th>도착시간</th>"
								+ "<th>도착공항</th>" + "<th>항공사</th>" + "</tr>");

						console.log(data);
						var flight = data.response.body.items;
						for (var i = 0; i < flight.item.length; i++) {

							element2.append("<tr>" + "<td>"
									+ flight.item[i].depPlandTime + "</td>"
									+ "<td>" + flight.item[i].depAirportNm
									+ "</td>" + "<td>"
									+ flight.item[i].arrPlandTime + "</td>"
									+ "<td>" + flight.item[i].arrAirportNm
									+ "</td>" + "<td>"
									+ flight.item[i].airlineNm + "</td>"
									+ "</tr>");
						}
					},
					error : function(a, b, c) {
						console.log(a, b, c);
					}
				});
			});
</script>
</head>
<body>


	<%-- <%@ include file="header.jsp"%> --%>
	<jsp:include page="header.jsp" flush="true" />

	<section id="sec">
		<div class="main">
			<div class="main_slide">
				<div class="main_slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide img1">
							<a href="1"></a>
						</div>
						<div class="swiper-slide img2">
							<a href="2"></a>
						</div>
						<div class="swiper-slide img3">
							<a href="3"></a>
						</div>
						<div class="swiper-slide img4">
							<a href="4"></a>
						</div>
					</div>
					<div class="swiper-pagination main_pagi"></div>
					<div class="slide_cover"></div>
				</div>
			</div>
		</div>

		<div class="about">
			<div class="about_in">
				<div class="txt">
					<h2>그리웠던 여행</h2>
					<h2>트리플로 준비하세요.</h2>
				</div>

				<div class="about_btn">
					<div class="left on">
						<h2>
							<a href="javascript:;">기차표</a>
						</h2>
					</div>

					<div class="right">
						<h2>
							<a href="javascript:;">항공권</a>
						</h2>
					</div>
				</div>

				<div class="about_tab">
					<div class="tab_in tab" style="background: none;">
						<div class="wrap" style="display: flex; flex-wrap: wrap;">
							<div class="box left"
								style="width: 60%; border: 1px solid red; overflow: auto;">
								<table border="1" id="teatable">

								</table>
							</div>
							<div class="box right"
								style="width: 40%; border: 1px solid red; overflow: auto;">
								<form action="" method="post" id="teaapi">
									출발일 <input type="text" id="depPlandTime" name="depPlandTime"
										readonly="readonly" /><br> 출발역 <select name="depPlaceId"
										id="depPlaceId">
										<option value="NAT010000" selected="selected">서울</option>
										<option value="NAT110147">행신</option>
										<option value="NAT010032">용산</option>
										<option value="NAT130126">청량리</option>
										<option value="NAT020040">상봉</option>
										<option value="NATH10219">광명</option>
										<option value="NAT010091">영등포</option>
										<option value="NATH10960">천안아산</option>
										<option value="NAT010415">수원</option>
										<option value="NAT050044">오송</option>
										<option value="NATH20438">공주</option>
										<option value="NAT030057">서대전</option>
										<option value="NAT011668">대전</option>
										<option value="NAT030254">계룡</option>
										<option value="NATH12383">김천구미</option>
										<option value="NAT030508">논산</option>
										<option value="NAT013189">서대구</option>
										<option value="NAT013271">동대구</option>
										<option value="NAT030879">익산</option>
										<option value="NAT031056">김제</option>
										<option value="NAT040257">전주</option>
										<option value="NAT013395">경산</option>
										<option value="NATH13421">신경주</option>
										<option value="NAT8B0351">포항</option>
										<option value="NAT031314">정읍</option>
										<option value="NAT040868">남원</option>
										<option value="NAT013841">밀양</option>
										<option value="NAT031638">장성</option>
										<option value="NAT041072">곡성</option>
										<option value="NAT880177">진영</option>
										<option value="NAT014281">구포</option>
										<option value="NATH13717">울산(통도사)</option>
										<option value="NAT031857">광주송정</option>
										<option value="NAT041285">구례구</option>
										<option value="NAT880281">창원중앙</option>
										<option value="NAT041595">순천</option>
										<option value="NAT880310">창원</option>
										<option value="NAT014445">부산</option>
										<option value="NAT031998">나주</option>
										<option value="NAT041866">여천</option>
										<option value="NAT880345">마산</option>
										<option value="NAT032563">목포</option>
										<option value="NAT041993">여수EXPO</option>
										<option value="NAT881014">진주</option>
										<option value="NAT020524">양평</option>
										<option value="NAT020864">서원주</option>
										<option value="NAT020947">원주</option>
										<option value="NAT021033">만종</option>
										<option value="NAT021549">제천</option>
										<option value="NATN10230">횡성</option>
										<option value="NATN10428">둔내</option>
										<option value="NAT021784">단양</option>
										<option value="NATN10625">평창</option>
										<option value="NAT022053">풍기</option>
										<option value="NATN10787">진부</option>
										<option value="NAT601936">강릉</option>
										<option value="NAT601774">정동진</option>
										<option value="NAT022558">안동</option>
										<option value="NAT601545">묵호</option>
										<option value="NAT601485">동해</option>
										<option value="NAT250428">부발</option>
										<option value="NAT280090">가남</option>
										<option value="NAT280212">감곡장호원</option>
										<option value="NAT280358">앙성온천</option>
										<option value="NAT050827">충주</option>
									</select><br> 도착역 <select name="arrPlaceId" id="arrPlaceId">
										<option value="NAT010000">서울</option>
										<option value="NAT110147">행신</option>
										<option value="NAT010032">용산</option>
										<option value="NAT130126">청량리</option>
										<option value="NAT020040">상봉</option>
										<option value="NATH10219">광명</option>
										<option value="NAT010091">영등포</option>
										<option value="NATH10960">천안아산</option>
										<option value="NAT010415">수원</option>
										<option value="NAT050044">오송</option>
										<option value="NATH20438">공주</option>
										<option value="NAT030057">서대전</option>
										<option value="NAT011668">대전</option>
										<option value="NAT030254">계룡</option>
										<option value="NATH12383">김천구미</option>
										<option value="NAT030508">논산</option>
										<option value="NAT013189">서대구</option>
										<option value="NAT013271">동대구</option>
										<option value="NAT030879">익산</option>
										<option value="NAT031056">김제</option>
										<option value="NAT040257">전주</option>
										<option value="NAT013395">경산</option>
										<option value="NATH13421">신경주</option>
										<option value="NAT8B0351">포항</option>
										<option value="NAT031314">정읍</option>
										<option value="NAT040868">남원</option>
										<option value="NAT013841">밀양</option>
										<option value="NAT031638">장성</option>
										<option value="NAT041072">곡성</option>
										<option value="NAT880177">진영</option>
										<option value="NAT014281">구포</option>
										<option value="NATH13717">울산(통도사)</option>
										<option value="NAT031857">광주송정</option>
										<option value="NAT041285">구례구</option>
										<option value="NAT880281">창원중앙</option>
										<option value="NAT041595">순천</option>
										<option value="NAT880310">창원</option>
										<option value="NAT014445" selected="selected">부산</option>
										<option value="NAT031998">나주</option>
										<option value="NAT041866">여천</option>
										<option value="NAT880345">마산</option>
										<option value="NAT032563">목포</option>
										<option value="NAT041993">여수EXPO</option>
										<option value="NAT881014">진주</option>
										<option value="NAT020524">양평</option>
										<option value="NAT020864">서원주</option>
										<option value="NAT020947">원주</option>
										<option value="NAT021033">만종</option>
										<option value="NAT021549">제천</option>
										<option value="NATN10230">횡성</option>
										<option value="NATN10428">둔내</option>
										<option value="NAT021784">단양</option>
										<option value="NATN10625">평창</option>
										<option value="NAT022053">풍기</option>
										<option value="NATN10787">진부</option>
										<option value="NAT601936">강릉</option>
										<option value="NAT601774">정동진</option>
										<option value="NAT022558">안동</option>
										<option value="NAT601545">묵호</option>
										<option value="NAT601485">동해</option>
										<option value="NAT250428">부발</option>
										<option value="NAT280090">가남</option>
										<option value="NAT280212">감곡장호원</option>
										<option value="NAT280358">앙성온천</option>
										<option value="NAT050827">충주</option>
									</select>
									<!-- </select><br> 열차종류 <select name="trainGradeCode" id="trainGradeCode">
									<option value="00">KTX</option>
									<option value="01">새마을호</option>
									<option value="02">무궁화호</option>
									<option value="03">통근열차</option>
									<option value="04">누리로</option>
									<option value="06">AREX직통</option>
									<option value="07">KTX-산천(A-type)</option>
									<option value="08">ITX-새마을</option>
									<option value="09">ITX-청춘</option>
									<option value="10">KTX-산천(B-type)</option>
									<option value="16">KTX-이음</option>
									<option value="17">SRT</option>
								</select> -->
								</form>
								<!-- <button onclick="d_test()">날짜값조회</button> -->
								<button onclick="apitest()">조회하기</button>
							</div>


						</div>
					</div>

					<div class="tab_in tab" style="background: none;">
						<div class="wrap" style="display: flex; flex-wrap: wrap;">
							<div class="box left"
								style="width: 60%; border: 1px solid red; overflow: auto;">
								<table border="1" id="fteatable">

								</table>
							</div>
							<div class="box right"
								style="width: 40%; border: 1px solid red; overflow: auto;">
								<form action="" method="post" id="teaapi">
									출발일 <input type="text" id="depPlandTime" name="depPlandTime"
										readonly="readonly" /><br> 출발공항 <select
										name="depAirportId" id="depAirportId">
										<option value="NAARKJB">무안</option>
										<option value="NAARKJJ">광주</option>
										<option value="NAARKJK">군산</option>
										<option value="NAARKJY">여수</option>
										<option value="NAARKNW">원주</option>
										<option value="NAARKNY">양양</option>
										<option value="NAARKPC">제주</option>
										<option value="NAARKPK">김해</option>
										<option value="NAARKPS">사천</option>
										<option value="NAARKPU">울산</option>
										<option value="NAARKSI">인천</option>
										<option value="NAARKSS" selected="selected">김포</option>
										<option value="NAARKTH">포항</option>
										<option value="NAARKTN">대구</option>
										<option value="NAARKTU">청주</option>
									</select><br> 도착공항 <select name="arrAirporrtId" id="arrAirporrtId">
										<option value="NAARKJB">무안</option>
										<option value="NAARKJJ">광주</option>
										<option value="NAARKJK">군산</option>
										<option value="NAARKJY">여수</option>
										<option value="NAARKNW">원주</option>
										<option value="NAARKNY">양양</option>
										<option value="NAARKPC" selected="selected">제주</option>
										<option value="NAARKPK">김해</option>
										<option value="NAARKPS">사천</option>
										<option value="NAARKPU">울산</option>
										<option value="NAARKSI">인천</option>
										<option value="NAARKSS">김포</option>
										<option value="NAARKTH">포항</option>
										<option value="NAARKTN">대구</option>
										<option value="NAARKTU">청주</option>
									</select> <br> 항공사 <select name="airlineId" id="airlineId">
										<option value="AAR" selected="selected">아시아나항공</option>
										<option value="ABL">에어부산</option>
										<option value="ASV">에어서울</option>
										<option value="ESR">이스타항공</option>
										<option value="FGW">플라이강원</option>
										<option value="HGG">하이에어</option>
										<option value="JJA">제주항공</option>
										<option value="JNA">진에어</option>
										<option value="KAL">대한항공</option>
										<option value="TWB">티웨이항공</option>
									</select>
								</form>
								<!-- <button onclick="d_test()">날짜값조회</button> -->
								<button onclick="apitest()">조회하기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="swiper kcategory">
			<div class="kcategory_head">
				<div class="kcategory_text">
					<h2>국내여행 카테고리</h2>
					<div class="kcategorybtn">
						<div class="kcategorybtn1 kcategorybtn_com">
							<i class="fa-solid fa-angle-left"></i>
						</div>
						<div class="kcategorybtn2 kcategorybtn_com">
							<i class="fa-solid fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-wrapper">
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg1"></div>
					<p>호텔</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg2"></div>
					<p>리조트</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg3"></div>
					<p>펜션</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg4"></div>
					<p>모텔</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg5"></div>
					<p>게스트하우스</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg6"></div>
					<p>캠핑</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg7"></div>
					<p>맛집</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg8"></div>
					<p>패키지여행</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg9"></div>
					<p>티켓</p>
				</div>
			</div>
		</div>



		<div class="hot">
			<div class="hot_in">
				<div class="hot_txt">
					<h2>인기트립</h2>
				</div>

				<div class="list">
					<div class="list_in">
						<ul>
							<li><a href="javascript:;"> <%-- <div class="content" style="background: url('../../resources/img/<%=${.product_img1}%>.jpg');"></div> --%>
									<div class="content"
										style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<%-- <<p>${.product_name}</p> --%>
												<%-- <p>${.product_swordword}</p> --%>
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<%-- <p>${.heart_id}</p> --%>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>


							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/jeju.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>


							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/bobopool.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>

							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/chosun3.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>

							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/jeju13.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>

							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/jeju5.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>


							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/pool2.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>

							<li><a href="javascript:;">
									<div class="content"
										style="background: url('../../resources/img/uban1.jpg') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p>
														<i class="fa-solid fa-heart"></i>
													</p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
							</a></li>


						</ul>

						<div class="hot_btn">
							<a href="javascript:;">
								<h2>인기트립 더보기</h2>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="event">
			<div class="event_in">
				<div class="img">
					<form action="">
						<div class="form_in">
							<input type="text" placeholder="이메일 주소를 입력하세요" class="email">
							<input type="submit" value="시작해보세요" class="btn">
						</div>
					</form>
				</div>
			</div>
		</div>

		<div class="con_slide">
			<div class="con_txt">
				<h2>트리플 최저가 예약</h2>
			</div>

			<div class="lowprice_slider">
				<div class="swiper-wrapper">

					<div class="swiper-slide img1">
						<a href="1">
							<div class="lowprice_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="lowprice_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.price}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>10,000</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img2">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/bobopool.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img3">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/chosun3.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img4">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/jeju.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>


					<div class="swiper-slide img5">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/jeju13.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img6">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/jeju5.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>


					<div class="swiper-slide img7">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/pool2.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img8">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img"
									style="background: url('../../resources/img/uban1.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>



				</div>
			</div>
		</div>



		<div class="con_slide con2">
			<div class="con_txt">
				<h2>트리플 추천순위</h2>
			</div>

			<div class="unknown_slider">
				<div class="swiper-wrapper">

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>

					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img"
									style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%; background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>


				</div>
			</div>
		</div>

	</section>

	<div class="mobilApp">
		<div class="appIn">
			<h2>핸드폰으로 접속하셨네요.</h2>
			<h2>어플리케이션으로 다운받아보시겠습니까?</h2>
			<div class="appDown">
				<div>
					<a
						href="https://apps.apple.com/kr/app/%ED%8A%B8%EB%A6%AC%ED%94%8C-%EC%B5%9C%EC%A0%80%EA%B0%80-%EC%98%88%EC%95%BD%EB%B6%80%ED%84%B0-%EC%97%AC%ED%96%89%EA%B3%84%ED%9A%8D%EA%B9%8C%EC%A7%80/id1225499481">
						IOS 다운로드 </a>
				</div>

				<div>
					<a
						href="https://play.google.com/store/apps/details?id=com.titicacacorp.triple">
						Aandroid </a>
				</div>
			</div>
			<div class="closeBtn">
				<span id="check"><input type="checkbox" value="checkbox"
					name="chkbox" id="chkday" /><label for="chkday">오늘하루 보지않기</label></span>
				<span id="close">닫기</span>
			</div>
		</div>
	</div>
	<div class="mobilAppCover"></div>

	<%@ include file="footer.jsp"%>
</body>
</html>