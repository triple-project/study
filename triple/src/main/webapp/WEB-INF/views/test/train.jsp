<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
				element2.append("<tr>"+
						"<th>출발시간</th>"+
						"<th>출발역</th>"+
						"<th>도착시간</th>"+
						"<th>도착역</th>"+
						"<th>열차</th>"+
					"</tr>");
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
	}
</script>
</HEAD>
<BODY>
	<!-- <button onclick="test()">제발</button> -->
	<table border="1" id="teatable">

	</table>
	<hr>
	<form action="" method="post" id="teaapi">
		출발일 <input type="text" id="depPlandTime" name="depPlandTime"
			readonly="readonly" /><br> 출발역 <select name="depPlaceId"
			id="depPlaceId">
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
</BODY>
</HTML>
