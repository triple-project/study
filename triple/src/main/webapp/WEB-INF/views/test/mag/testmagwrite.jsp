<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var count = 0;
	var filename = new Array();

	function readURL(input) {
		var file = input.files[0] //파일에 대한 정보
		filename.push(file.name);

		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
				//e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
				
				$('#preview' + count).attr('src', e.target.result);
				// 이미지 실험
				const element = document.getElementById('magwrite');
				// new div 생성
				const newImg = document.createElement('img');
				newImg.setAttribute("src", e.target.result);
				newImg.setAttribute("id", "img" + (count++)); //이미지를 넣을때마다 식별가능한 id를 입력
				element.appendChild(newImg);

				$("#writeform").append("<br>");
				const element2 = document.getElementById('writeform');
				const newInput = document.createElement('input');
				newInput.setAttribute("type", "file");
				newInput.setAttribute("id", "image_file_name" + count);
				newInput.setAttribute("name", "image_file_name" + count);
				newInput.setAttribute("onchange", "readURL(this);");
				element2.appendChild(newInput);

				const newInput2 = document.createElement('img');
				newInput2.setAttribute("src", "#");
				newInput2.setAttribute("id", "preview" + count);
				newInput2.setAttribute("width", 100);
				newInput2.setAttribute("height", 100);
				newInput2.setAttribute("alt", "선택한게 없는걸?");
				element2.appendChild(newInput2);
			}
		}
	}

	function jjjtest() {
		const element = document.getElementById('magwrite');
		// for id 어디까지? var count 까지
		// + file name 도 count까지
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var fArray = new Array();
		for (var i = 0; i < count; i++) {
			var img = document.getElementById('img' + i); //위에서 생성된 이미지의 id들			
			var ti = hours + minutes + seconds;
			var fnn = i + ti + filename[i];
			img.setAttribute("src", "/resources/img/upload/" + fnn); //id별로 서버에 저장되는 img경로
			fArray.push(fnn);
		}
		document.getElementById('mgz_content').value = element.innerHTML;
		$("#image_file_name_h").val(fArray);

	}
</script>

<script type="text/javascript">

function select() {
	const element = document.getElementById('pro_category');	
	const a = document.getElementById('h_category');
	const b = element.options[element.selectedIndex].value;
	document.getElementById('h_category').value = b;
	
	console.log(a)
	}
</script>
<script type="text/javascript">
	/* function cookie() {
		 var x = getCookie("remember-me");
		console.log(x);
		
		var c = getCookie("JSESSIONID");
		console.log(c);
	} */
</script>
<body>
	<h1>매거진 작성 페이지</h1>
	<!-- 시큐리티 태그사용 authorize access="hasRole('admin')해당 권한이 있다면 
			isAnonymous() 아무나			isAuthenticated() 로그인을 했다면-->
	<security:authorize access="isAuthenticated()">
		<h2><security:authentication property="principal.username"/></h2>
	</security:authorize>
	
	<form action="/writesave" onsubmit="jjjtest()" method="post" id="writeform" enctype="multipart/form-data">
	<!-- enctype="multipart/form-data" -->
		<input type="text" value="제목" name="mgz_title">
		<input type="text" value="소제목" name="mgz_smalltitle">
		<input type="text" value="도시" name="mgz_city">
		<input type="text" value="종류" name="mgz_category">
		<hr>
		<div contentEditable="true" id="magwrite" >
		<p>내용을 입력해주세요</p>
		</div> 
		<!-- <iframe src="test/mag/magiframe"></iframe> -->
		<hr>
		<input type="submit" value="작성하기"><br>
		<b>이미지파일 첨부</b><br>
      	
      	<input type="hidden" name="mgz_content" id="mgz_content">
      	<input type="hidden" name="image_file_name_h" id="image_file_name_h">
		
		<input type="file" id="image_file_name0" name="image_file_name0" onchange="readURL(this);" /> 
      	<img id="preview0" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
      	
	</form>
   <!--  <button onclick="jjjtest()">댐?</button> -->
   
   	<form action="액션" method="post">
		<select id="pro_category" onchange="select()">
				<option value="none" selected="selected" disabled="disabled">=== 선택 ===</option>
				<option value="서울">서울</option>
				<option value="대전">대전</option>
				<option value="daegu">대구</option>
				<option value="busan">부산</option>
				<option value="jeju">제주</option>
		</select>
		<input type="hidden" id="h_category">
		<input type="hidden" id="h2_category">
	</form>
	
	<button onclick="select()">셀?</button>
	<a href="logout">로그아웃경로테스트</a>
	<button onclick="">쿠키테스트</button>
    
</body>

</html>