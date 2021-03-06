<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>Triple</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
		integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css"
		integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css"
		integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css"
		integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css"
		integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css"
		integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css"
		integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css"
		integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="
		crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/main.css">


	<script src="resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
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
		$(function () {
			$('.depPlandTime').daterangepicker({
					"locale": {
						"format": "YYYYMMDD",
						"separator": " ~ ",
						"applyLabel": "??????",
						"cancelLabel": "??????",
						"fromLabel": "From",
						"toLabel": "To",
						"customRangeLabel": "Custom",
						"weekLabel": "W",
						"daysOfWeek": ["???", "???", "???", "???", "???", "???", "???"],
						"monthNames": ["1???", "2???", "3???", "4???", "5???", "6???",
							"7???", "8???", "9???", "10???", "11???", "12???"
						],
					},
					"singleDatePicker": true,
					"startDate": new Date(),
					"endDate": new Date(),
					"drops": "down",
					"opens": "center"
				},
				function (start, end, label) {
					console.log('New date range selected: ' +
						start.format('YYYY-MM-DD') + ' to ' +
						end.format('YYYY-MM-DD') + ' (predefined range: ' +
						label + ')');
				});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(
				function apitra2() {
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
							element2.append("<tr>" + "<th>????????????</th>"
									+ "<th>?????????</th>" + "<th>????????????</th>"
									+ "<th>?????????</th>" + "<th>??????</th>" + "</tr>");
							var train = data.response.body.items;
							for (var i = 0; i < train.item.length; i++) {
								let jjn = JSON.stringify(train.item[i].depplandtime);
								let yy = jjn.substring(0,4);
								let mm = jjn.substring(4,6);
								let dd = jjn.substring(6,8);
								let ss = jjn.substring(8,10);
								let qq = jjn.substring(10,12);

								let jjn2 = JSON.stringify(train.item[i].arrplandtime);
								let yy2 = jjn2.substring(0,4);
								let mm2 = jjn2.substring(4,6);
								let dd2 = jjn2.substring(6,8);
								let ss2 = jjn2.substring(8,10);
								let qq2 = jjn2.substring(10,12);

								element2.append(
									"<tr>"
										+ "<td>" + yy + "???" + mm + "???" + dd + "???" + ss + "???" + qq + "???" + "</td>"
										+ "<td>" + train.item[i].depplacename + "</td>"
										+ "<td>" + yy2 + "???" + mm2 + "???" + dd2 + "???" + ss2 + "???" + qq2 + "???" + "</td>"
										+ "<td>" + train.item[i].arrplacename + "</td>"
										+ "<td>" + train.item[i].traingradename + "</td>"
									+"</tr>"
								);
							}
						},
						error : function(a, b, c) {
							console.log(a, b, c);
						}
					});
				})
				function apitra() {
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
							element2.append("<tr>" + "<th>????????????</th>"
									+ "<th>?????????</th>" + "<th>????????????</th>"
									+ "<th>?????????</th>" + "<th>??????</th>" + "</tr>");
							var train = data.response.body.items;
							//console.log(data.response.body.totalCount);
							if (data.response.body.totalCount==0) {
								alert("?????? ????????? ?????? ????????? ????????????.")
							}else{
								for (var i = 0; i < train.item.length; i++) {
									let jjn = JSON.stringify(train.item[i].depplandtime);
									let yy = jjn.substring(0,4);
									let mm = jjn.substring(4,6);
									let dd = jjn.substring(6,8);
									let ss = jjn.substring(8,10);
									let qq = jjn.substring(10,12);

									let jjn2 = JSON.stringify(train.item[i].arrplandtime);
									let yy2 = jjn2.substring(0,4);
									let mm2 = jjn2.substring(4,6);
									let dd2 = jjn2.substring(6,8);
									let ss2 = jjn2.substring(8,10);
									let qq2 = jjn2.substring(10,12);
									element2.append(
										"<tr>"
											+ "<td>" + yy + "???" + mm + "???" + dd + "???" + ss + "???" + qq + "???" + "</td>"
											+ "<td>" + train.item[i].depplacename + "</td>"
											+ "<td>" + yy2 + "???" + mm2 + "???" + dd2 + "???" + ss2 + "???" + qq2 + "???" + "</td>"
											+ "<td>" + train.item[i].arrplacename + "</td>"
											+ "<td>" + train.item[i].traingradename + "</td>"
										+"</tr>"
									);
								}
							}
						},
						error : function(a, b, c) {
							console.log(a, b, c);
						}
					});
				}
	</script>
	<script type="text/javascript">
		$(document).ready(
				function apiair2() {
					$.ajax({
						type : "POST",
						url : "/rest/flightInfo",
						dataType : "json",
						data : {
							depPlandTime : $("#depPlandTimea").val(),
							depAirportId : $("#depAirportId").val(),
							arrAirporrtId : $("#arrAirporrtId").val(),
							airlineId : $("#airlineId").val()
						},
						responseType : 'application/json',
						success : function(data) {
							const element2 = $("#fteatable");
							element2.html('');
							element2.append("<tr>" + "<th>????????????</th>"
									+ "<th>????????????</th>" + "<th>????????????</th>"
									+ "<th>????????????</th>" + "<th>?????????</th>" + "</tr>");
							//console.log(data);
							var flight = data.response.body.items;
							for (var i = 0; i < flight.item.length; i++) {
								let jjn3 = JSON.stringify(flight.item[i].depPlandTime);
								let yy3 = jjn3.substring(0,4);
								let mm3 = jjn3.substring(4,6);
								let dd3 = jjn3.substring(6,8);
								let ss3 = jjn3.substring(8,10);
								let qq3 = jjn3.substring(10,12);

								let jjn4 = JSON.stringify(flight.item[i].arrPlandTime);
								let yy4 = jjn4.substring(0,4);
								let mm4 = jjn4.substring(4,6);
								let dd4 = jjn4.substring(6,8);
								let ss4 = jjn4.substring(8,10);
								let qq4 = jjn4.substring(10,12);
								element2.append(
									"<tr>"
										+ "<td>" + yy3 + "???" + mm3 + "???" + dd3 + "???" + ss3 + "???" + qq3 + "???" + "</td>"
										+ "<td>" + flight.item[i].depAirportNm + "</td>"
										+ "<td>" + yy4 + "???" + mm4 + "???" + dd4 + "???" + ss4 + "???" + qq4 + "???" + "</td>"
										+ "<td>" + flight.item[i].arrAirportNm + "</td>"
										+ "<td>" + flight.item[i].airlineNm + "</td>"
									+ "</tr>"
								);
							}
						},
						error : function(a, b, c) {
							console.log(a, b, c);
						}
					});
				});
		function apiair() {
			$.ajax({
				type : "POST",
				url : "/rest/flightInfo",
				dataType : "json",
				data : {
					depPlandTime : $("#depPlandTimea").val(),
					depAirportId : $("#depAirportId").val(),
					arrAirporrtId : $("#arrAirporrtId").val(),
					airlineId : $("#airlineId").val()
				},
				responseType : 'application/json',
				success : function(data) {
					const element2 = $("#fteatable");
					element2.html('');
					element2.append("<tr>" + "<th>????????????</th>"
							+ "<th>????????????</th>" + "<th>????????????</th>"
							+ "<th>????????????</th>" + "<th>?????????</th>" + "</tr>");
					//console.log(data);
					var flight = data.response.body.items;
					if (data.response.body.totalCount==0) {
						alert("?????? ????????? ?????? ????????? ????????????.")
					}else{
						for (var i = 0; i < flight.item.length; i++) {
							let jjn3 = JSON.stringify(flight.item[i].depPlandTime);
							let yy3 = jjn3.substring(0,4);
							let mm3 = jjn3.substring(4,6);
							let dd3 = jjn3.substring(6,8);
							let ss3 = jjn3.substring(8,10);
							let qq3 = jjn3.substring(10,12);

							let jjn4 = JSON.stringify(flight.item[i].arrPlandTime);
							let yy4 = jjn4.substring(0,4);
							let mm4 = jjn4.substring(4,6);
							let dd4 = jjn4.substring(6,8);
							let ss4 = jjn4.substring(8,10);
							let qq4 = jjn4.substring(10,12);
		
							element2.append(
								"<tr>"
									+ "<td>" + yy3 + "???" + mm3 + "???" + dd3 + "???" + ss3 + "???" + qq3 + "???" + "</td>"
									+ "<td>" + flight.item[i].depAirportNm + "</td>"
									+ "<td>" + yy4 + "???" + mm4 + "???" + dd4 + "???" + ss4 + "???" + qq4 + "???" + "</td>"
									+ "<td>" + flight.item[i].arrAirportNm + "</td>"
									+ "<td>" + flight.item[i].airlineNm + "</td>"
								+ "</tr>"
							);
						}
					}
				},
				error : function(a, b, c) {
					console.log(a, b, c);
				}
			});
		}
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
							<a href="/category/admin120220413201506"></a>
						</div>
						<div class="swiper-slide img2">
							<a href="/category/admin120220413193113"></a>
						</div>
						<div class="swiper-slide img3">
							<a href="/category/admin120220413204316"></a>
						</div>
						<div class="swiper-slide img4">
							<a href="/category/admin120220413195521"></a>
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
					<h2>???????????? ??????</h2>
					<h2>???????????? ???????????????.</h2>
				</div>

				<div class="about_btn">
					<div class="left on">
						<h2>
							<a href="javascript:;">?????????</a>
						</h2>
					</div>

					<div class="right">
						<h2>
							<a href="javascript:;">?????????</a>
						</h2>
					</div>
				</div>

				<div class="about_tab">
					<div class="tab_in tab">
						<div class="wrap">
							<div class="box left">
								<table id="teatable"></table>
							</div>
							<div class="box right">
								<form action="" method="post" id="teaapi">
									<ul>
										<li>
											<h2>?????????</h2>
											<input type="text" class="depPlandTime" id="depPlandTime" name="depPlandTime" readonly="readonly" />
										</li>

										<li>
											<h2>?????????</h2>
											<select name="depPlaceId" id="depPlaceId">
												<option value="NAT010000" selected="selected">??????</option>
												<option value="NAT110147">??????</option>
												<option value="NAT010032">??????</option>
												<option value="NAT130126">?????????</option>
												<option value="NAT020040">??????</option>
												<option value="NATH10219">??????</option>
												<option value="NAT010091">?????????</option>
												<option value="NATH10960">????????????</option>
												<option value="NAT010415">??????</option>
												<option value="NAT050044">??????</option>
												<option value="NATH20438">??????</option>
												<option value="NAT030057">?????????</option>
												<option value="NAT011668">??????</option>
												<option value="NAT030254">??????</option>
												<option value="NATH12383">????????????</option>
												<option value="NAT030508">??????</option>
												<option value="NAT013189">?????????</option>
												<option value="NAT013271">?????????</option>
												<option value="NAT030879">??????</option>
												<option value="NAT031056">??????</option>
												<option value="NAT040257">??????</option>
												<option value="NAT013395">??????</option>
												<option value="NATH13421">?????????</option>
												<option value="NAT8B0351">??????</option>
												<option value="NAT031314">??????</option>
												<option value="NAT040868">??????</option>
												<option value="NAT013841">??????</option>
												<option value="NAT031638">??????</option>
												<option value="NAT041072">??????</option>
												<option value="NAT880177">??????</option>
												<option value="NAT014281">??????</option>
												<option value="NATH13717">??????(?????????)</option>
												<option value="NAT031857">????????????</option>
												<option value="NAT041285">?????????</option>
												<option value="NAT880281">????????????</option>
												<option value="NAT041595">??????</option>
												<option value="NAT880310">??????</option>
												<option value="NAT014445">??????</option>
												<option value="NAT031998">??????</option>
												<option value="NAT041866">??????</option>
												<option value="NAT880345">??????</option>
												<option value="NAT032563">??????</option>
												<option value="NAT041993">??????EXPO</option>
												<option value="NAT881014">??????</option>
												<option value="NAT020524">??????</option>
												<option value="NAT020864">?????????</option>
												<option value="NAT020947">??????</option>
												<option value="NAT021033">??????</option>
												<option value="NAT021549">??????</option>
												<option value="NATN10230">??????</option>
												<option value="NATN10428">??????</option>
												<option value="NAT021784">??????</option>
												<option value="NATN10625">??????</option>
												<option value="NAT022053">??????</option>
												<option value="NATN10787">??????</option>
												<option value="NAT601936">??????</option>
												<option value="NAT601774">?????????</option>
												<option value="NAT022558">??????</option>
												<option value="NAT601545">??????</option>
												<option value="NAT601485">??????</option>
												<option value="NAT250428">??????</option>
												<option value="NAT280090">??????</option>
												<option value="NAT280212">???????????????</option>
												<option value="NAT280358">????????????</option>
												<option value="NAT050827">??????</option>
											</select>
										</li>

										<li>
											<h2>?????????</h2>
											<select name="arrPlaceId" id="arrPlaceId">
												<option value="NAT010000">??????</option>
												<option value="NAT110147">??????</option>
												<option value="NAT010032">??????</option>
												<option value="NAT130126">?????????</option>
												<option value="NAT020040">??????</option>
												<option value="NATH10219">??????</option>
												<option value="NAT010091">?????????</option>
												<option value="NATH10960">????????????</option>
												<option value="NAT010415">??????</option>
												<option value="NAT050044">??????</option>
												<option value="NATH20438">??????</option>
												<option value="NAT030057">?????????</option>
												<option value="NAT011668">??????</option>
												<option value="NAT030254">??????</option>
												<option value="NATH12383">????????????</option>
												<option value="NAT030508">??????</option>
												<option value="NAT013189">?????????</option>
												<option value="NAT013271">?????????</option>
												<option value="NAT030879">??????</option>
												<option value="NAT031056">??????</option>
												<option value="NAT040257">??????</option>
												<option value="NAT013395">??????</option>
												<option value="NATH13421">?????????</option>
												<option value="NAT8B0351">??????</option>
												<option value="NAT031314">??????</option>
												<option value="NAT040868">??????</option>
												<option value="NAT013841">??????</option>
												<option value="NAT031638">??????</option>
												<option value="NAT041072">??????</option>
												<option value="NAT880177">??????</option>
												<option value="NAT014281">??????</option>
												<option value="NATH13717">??????(?????????)</option>
												<option value="NAT031857">????????????</option>
												<option value="NAT041285">?????????</option>
												<option value="NAT880281">????????????</option>
												<option value="NAT041595">??????</option>
												<option value="NAT880310">??????</option>
												<option value="NAT014445" selected="selected">??????</option>
												<option value="NAT031998">??????</option>
												<option value="NAT041866">??????</option>
												<option value="NAT880345">??????</option>
												<option value="NAT032563">??????</option>
												<option value="NAT041993">??????EXPO</option>
												<option value="NAT881014">??????</option>
												<option value="NAT020524">??????</option>
												<option value="NAT020864">?????????</option>
												<option value="NAT020947">??????</option>
												<option value="NAT021033">??????</option>
												<option value="NAT021549">??????</option>
												<option value="NATN10230">??????</option>
												<option value="NATN10428">??????</option>
												<option value="NAT021784">??????</option>
												<option value="NATN10625">??????</option>
												<option value="NAT022053">??????</option>
												<option value="NATN10787">??????</option>
												<option value="NAT601936">??????</option>
												<option value="NAT601774">?????????</option>
												<option value="NAT022558">??????</option>
												<option value="NAT601545">??????</option>
												<option value="NAT601485">??????</option>
												<option value="NAT250428">??????</option>
												<option value="NAT280090">??????</option>
												<option value="NAT280212">???????????????</option>
												<option value="NAT280358">????????????</option>
												<option value="NAT050827">??????</option>
											</select>
										</li>
									</ul>
								</form>
								<div class="txt">
									<h2>???????????? ?????? 6????????? ????????? ???????????????</h2>
									<button onclick="apitra()">????????????</button>
								</div>
							</div>
						</div>
					</div>

					<div class="tab_in tab">
						<div class="wrap">
							<div class="box left">
								<table id="fteatable"></table>
							</div>
							<div class="box right">
								<form action="" method="post" id="teaapi">
									<ul>
										<li>
											<h2>?????????</h2>
											<input type="text" class="depPlandTime" id="depPlandTimea"
												name="depPlandTimea" readonly="readonly" />
										</li>
										<li>
											<h2>????????????</h2>
											<select name="depAirportId" id="depAirportId">
												<option value="NAARKJB">??????</option>
												<option value="NAARKJJ">??????</option>
												<option value="NAARKJK">??????</option>
												<option value="NAARKJY">??????</option>
												<option value="NAARKNW">??????</option>
												<option value="NAARKNY">??????</option>
												<option value="NAARKPC">??????</option>
												<option value="NAARKPK">??????</option>
												<option value="NAARKPS">??????</option>
												<option value="NAARKPU">??????</option>
												<option value="NAARKSI">??????</option>
												<option value="NAARKSS" selected="selected">??????</option>
												<option value="NAARKTH">??????</option>
												<option value="NAARKTN">??????</option>
												<option value="NAARKTU">??????</option>
											</select>
										</li>

										<li>
											<h2>????????????</h2>
											<select name="arrAirporrtId" id="arrAirporrtId">
												<option value="NAARKJB">??????</option>
												<option value="NAARKJJ">??????</option>
												<option value="NAARKJK">??????</option>
												<option value="NAARKJY">??????</option>
												<option value="NAARKNW">??????</option>
												<option value="NAARKNY">??????</option>
												<option value="NAARKPC" selected="selected">??????</option>
												<option value="NAARKPK">??????</option>
												<option value="NAARKPS">??????</option>
												<option value="NAARKPU">??????</option>
												<option value="NAARKSI">??????</option>
												<option value="NAARKSS">??????</option>
												<option value="NAARKTH">??????</option>
												<option value="NAARKTN">??????</option>
												<option value="NAARKTU">??????</option>
											</select>
										</li>

										<li>
											<h2>?????????</h2>
											<select name="airlineId" id="airlineId">
												<option value="AAR" selected="selected">??????????????????</option>
												<option value="ABL">????????????</option>
												<option value="ASV">????????????</option>
												<option value="ESR">???????????????</option>
												<option value="FGW">???????????????</option>
												<option value="HGG">????????????</option>
												<option value="JJA">????????????</option>
												<option value="JNA">?????????</option>
												<option value="KAL">????????????</option>
												<option value="TWB">???????????????</option>
											</select>
										</li>
									</ul>
								</form>
								
								<div class="txt">
									<h2>???????????? ?????? 30????????? ????????? ???????????????</h2>
									<button onclick="apiair()">????????????</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<div class="swiper kcategory">
			<div class="kcategory_head">
				<div class="kcategory_text">
					<h2>???????????? ????????????</h2>
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
					<p>??????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg2"></div>
					<p>?????????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg3"></div>
					<p>??????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg4"></div>
					<p>??????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg5"></div>
					<p>??????????????????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg6"></div>
					<p>??????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg7"></div>
					<p>??????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg8"></div>
					<p>???????????????</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg9"></div>
					<p>??????</p>
				</div>
			</div>
		</div>



		<div class="hot">
			<div class="hot_in">
				<div class="hot_txt">
					<h2>????????????</h2>
				</div>

				<div class="list">
					<div class="list_in">
						<ul>
						<!-- ???????????? ????????? ?????? -->
						<c:forEach items="${ultListH}" var="uH">
							<li><a href="/category/${uH.product_id}">
									<div class="content"
										style="background: url('/resources/img/upload/${uH.product_img1}') no-repeat 50% 50%; background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>${uH.product_name}</p>
												<p>${uH.product_shortword}</p>
											</div>
										</div>
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
												<div>
													<p>${uH.product_city}</p>
													<p>${uH.product_category}</p>
												</div>
												<div style="float: right; margin-right: 36px;">
													<p style="color: red;">
														<i class="fa-solid fa-heart">
														</i>
													</p>
													<p>${uH.heart_count}</p>
												</div>
												</div>
											</div>
										</div>
									</div>
							</a></li>
							</c:forEach> 
							<!-- ???????????? ????????? ?????? -->
					
							


					</ul>

					<div class="hot_btn">
						<a href="/popList">
							<h2>???????????? ?????????</h2>
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
							<input type="text" placeholder="????????? ????????? ???????????????" class="email">
							<input type="submit" value="??????????????????" class="btn">
						</div>
					</form>
				</div>
			</div>
		</div>

		      <div class="con_slide">
         <div class="con_txt">
            <h2>????????? ????????? ??????</h2>
         </div>

         <div class="lowprice_slider">
            <div class="swiper-wrapper">
               <!-- ????????? ????????? ?????? -->
               <c:forEach items="${ultListL}" var="uL">
               <div class="swiper-slide img1">
                  <a href="/category/${uL.product_id}">
                     <div class="lowprice_in">
                        <div class="lowprice_img"
                           style="background: url('/resources/img/upload/${uL.product_img1}') no-repeat 50% 50%; background-size: cover;">
                        
                        <!-- <div class="lowprice_img"
                           style="background: url('/resources/img/gory/categorycamping.jpg') no-repeat 50% 50%; background-size: cover;"> -->
                           <div class="lowprice_imgcover">
                              <p>${uL.product_name}</p>
                              <p>${uL.product_shortword}</p>
                           </div>
                           
                        </div>
                        <div class="lowprice_text">
                           <div class="lefttext">
                              <p>${uL.pd_price}???</p>
                           </div>
                           <div class="righttext">
                              <p>${uL.product_city}</p>
                              <p>${uL.product_category}</p>
                           </div>
                           <!-- <p>${uL.product_name}</p>
                           <p>${uL.product_city}</p>
                           <p>${uL.product_category}</p>
                           <p>${uL.product_shortword}</p>
                           <p>${uL.pd_price}</p> -->
                        </div>
                     </div>
                  </a>
               </div>
               </c:forEach>
               <!-- ????????? ????????? ?????? -->
            </div>
         </div>
      </div>



		<div class="con_slide con2" style="display: none;">
			<div class="con_txt">
				<h2>????????? ????????????</h2>
			</div>

			<div class="unknown_slider">
				<div class="swiper-wrapper">

					<%-- <!-- ???????????? ????????? ?????? -->
					<c:forEach items="${ultListL}" var="uL">
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<div class="unknown_img"
									style="background: url('/resources/img/upload/') no-repeat 50% 50%; background-size: cover;">
								</div>
								<div class="unknown_text">
									<p>${.product.name}</p>
									<p>${.product.}</p>
									<p>????????? ?????? ?????? ?????????????????????????????????</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
					</c:forEach>
					<!-- ????????? ????????? ?????? --> --%>
				</div>
			</div>
		</div>

	</section>

	<div class="mobilApp">
		<div class="appIn">
			<h2>??????????????? ??????????????????.</h2>
			<h2>???????????????????????? ???????????????????????????????</h2>
			<div class="appDown">
				<div>
					<a
						href="https://apps.apple.com/kr/app/%ED%8A%B8%EB%A6%AC%ED%94%8C-%EC%B5%9C%EC%A0%80%EA%B0%80-%EC%98%88%EC%95%BD%EB%B6%80%ED%84%B0-%EC%97%AC%ED%96%89%EA%B3%84%ED%9A%8D%EA%B9%8C%EC%A7%80/id1225499481">
						IOS ???????????? </a>
				</div>

				<div>
					<a href="https://play.google.com/store/apps/details?id=com.titicacacorp.triple">
						Aandroid </a>
				</div>
			</div>
			<div class="closeBtn">
				<span id="check"><input type="checkbox" value="checkbox" name="chkbox" id="chkday" /><label
						for="chkday">???????????? ????????????</label></span>
				<span id="close">??????</span>
			</div>
		</div>
	</div>
	<div class="mobilAppCover"></div>

	<%@ include file="footer.jsp"%>
</body>

</html>