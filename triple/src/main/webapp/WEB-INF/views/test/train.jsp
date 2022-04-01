<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="/resources/js/jquery.ajax-cross-origin.min.js"></script>
	<script type="text/javascript">
	function test() {
		
		$.ajax({
			url : "http://openapi.tago.go.kr/openapi/service/TrainInfoService/getStrtpntAlocFndTrainInfo?=50kpvF4A6C3KKNrHUp%2BQYGPE8qlyf8mDIe2IICEh5eJDVivH5O%2F2mjOVnSYhDOP%2B5gekbjk9iWeryiVMciLd4g%3D%3D",
			dataType : "json",
			data : {
				depPlaceId : "NAT010000",
				arrPlaceId : "NAT011668",
				depPlandTime : "20201201"
			},
			responseType:'application/json',
			crossOrigin : true,
			success : function(response) {
				if (response.code == "200") {
					console.log(response);
				}
			},
			error : function(a, b, c) {
				console.log(a, b, c);
				
			}

		});

	}
	
	function test2() {
		console.log(window.location.origin);
	}

	</script>
</HEAD>
<BODY>

<button onclick="test()">제발</button>
<button onclick="test2()">dksk</button>

</BODY>
</HTML>
