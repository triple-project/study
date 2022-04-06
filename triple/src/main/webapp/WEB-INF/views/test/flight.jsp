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
				const element2 = $("#teatable");
				element2.html('');
				element2.append("<tr>"+
						"<th>출발시간</th>"+
						"<th>출발공항</th>"+
						"<th>도착시간</th>"+
						"<th>도착공항</th>"+
						"<th>항공사</th>"+
					"</tr>");
				
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
									+"</tr>");
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
			readonly="readonly" /><br> 출발공항 <select name="depAirportId"
			id="depAirportId">
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
</BODY>
</HTML>
