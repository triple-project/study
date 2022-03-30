<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function amu() {
		//const a = $('#img').val();
		//console.log(a);
		var fileValue = $("#img").val().split("\\");
		var fileName = fileValue[fileValue.length-1]; // 파일명
		console.log(fileName);
		 $('#img_h').val(fileName);
		const a =  $('#img_h');
		console.log(a.val());
	}
</script>
</head>
<body contenteditable="false">
	<h1>아이프레임창입니다</h1>
	<button onclick="amu()">파일이름</button>
	<a href="/logout">로그아웃경로테스트</a>
	<form action=""	 onsubmit="amu()">
		<input type="file" name="img" id="img">
		<input type="hidden" name="mem_img" id="img_h">
	</form>
</body>
</html>