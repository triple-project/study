<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
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
<link rel="stylesheet" href="/resources/css/common.css">
<link rel="stylesheet" href="/resources/css/noticeShow.css">


<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="/resources/js/mobiscroll.jquery.min.js"></script>
<script src="https://kit.fontawesome.com/8d1d3d3a2e.js"
	crossorigin="anonymous"></script>
<script src="/resources/js/main.js"></script>

<link rel="shortcut icon" href="#">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function nd() {
		location.href = "/qna/deln/"+"${nvo.n_id}";
	}
</script>
<script type="text/javascript">
	function uns() {
		var n_contentd = document.getElementById('n_contentd')
		document.getElementById('n_content').value = n_contentd.innerHTML;
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var ti = hours + minutes + seconds;
		var fileValue = $("#unimage_file_name").val().split("\\");
		var fileName = fileValue[fileValue.length - 1]; // 파일명
		/* console.log(fileName); image_file_name_h */
		const a = $('#unimg_h').val(ti+fileName);
		const b = $('#unimage_file_name_h').val(ti+fileName);
	}
	
	function unreadURL(input) {
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
	           $('#unpreview').attr('src', e.target.result);
	          }
	      }
	  } 
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section id="sec">
		<div class="noticeShow_in">
			<div class="noticeShow_aside">
				<aside>
					<jsp:include page="/WEB-INF/views/qna/qnaAside.jsp" flush="true" />
				</aside>
			</div>
			<div class="noticeShow_main">
				<div class="noticeShow_title">
					<p>제목 : ${nvo.n_title}</p>
					<p>작성일 : ${nvo.n_date}</p>
					<p>문의번호 : ${nvo.n_id}</p>
				</div>
				<div class="noticeShow_content">
					<div>${nvo.n_content}</div>
				</div>
				<div class="noticeShow_img">
					<img src="/resources/img/upload/${nvo.n_img}">
				</div>
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<div class="nsadmin">
						<h3>공지사항 수정</h3>
						<h5>관리자에게만 모이는 부분</h5>

						<form method="post" action="/qna/upno" onsubmit="uns()" enctype="multipart/form-data" id="noticemod">
							<div class="nsadmin_title">
								<p>제목 : </p>
								<input type="text" id="n_title" name="n_title" value="${nvo.n_title}"> 
							</div>
							<div class="nsadmin_content"
							contenteditable="true" id="n_contentd">
								${nvo.n_content}
							</div>
						
						<input type="hidden" id="n_content" name="n_content"> 

						
						<div class="preview">
							<img id="unpreview" src="/resources/img/upload/${nvo.n_img}" alt="" />
							<input type="file" name="unimage_file_name" id="unimage_file_name" onchange="unreadURL(this);" /> 
						</div>
						
							<input type="hidden" name="n_img" id="unimg_h" value="${nvo.n_img}">
							<input type="hidden" name="unimage_file_name_h" id="unimage_file_name_h">
							<input type="hidden" name="n_id" id="n_id" value="${nvo.n_id}">
						</form>
						<div class="nsadmin_btn">
							<div class="nsadmin_modbtn nsadmin_btn_com" onclick="$('#noticemod').submit()">
								<p>수정하기</p>
							</div>
							<div class="nsadmin_delbtn nsadmin_btn_com" onclick="nd()">
								<p>삭제하기</p>
							</div>
						</div>
					</div>
				</security:authorize>

			</div>
		</div>
	</section>

	<%@ include file="../footer.jsp"%>



</body>
</html>