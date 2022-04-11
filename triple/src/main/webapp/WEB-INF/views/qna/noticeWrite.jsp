<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
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
<link rel="stylesheet" href="/resources/css/noticeWrite.css">


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
<script type="text/javascript">
	function ns() {
		var n_contentd = document.getElementById('n_contentd')
		document.getElementById('n_content').value = n_contentd.innerHTML;
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var ti = hours + minutes + seconds;
		var fileValue = $("#nimage_file_name").val().split("\\");
		var fileName = fileValue[fileValue.length - 1]; // 파일명
		/* console.log(fileName); image_file_name_h */
		const a = $('#nimg_h').val(ti+fileName);
		const b = $('#nimage_file_name_h').val(ti+fileName);
	}
	
	function nreadURL(input) {
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
	           $('#npreview').attr('src', e.target.result);
	          }
	      }
	  } 
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section id="sec">
		<div class="noticeWrite_in">

			<div class="noticeWrite_aside">
				<aside>
					<jsp:include page="/WEB-INF/views/qna/qnaAside.jsp" flush="true" />
				</aside>
			</div>

			<div class="noticeWrite_main">
				<h3>공지사항 작성</h3>
				<div class="noticeWrite_title">
					<div class="title1 noticewr_title_com">
						<p>제목</p>
					</div>
					<div class="title2 noticewr_title_com">
						<p>내용</p>
					</div>
					<div class="title3 noticewr_title_com">
						<p>이미지</p>
					</div>
				</div>

				<div class="ntw_form">
					<form action="/qna/noticeWrite" method="post" onclick="ns()" enctype="multipart/form-data" id="noticeWriteform">
						<div class="ntw_title ntw_com">
							<input type="text" id="n_title" name="n_title" placeholder="제목을 입력해주세요."onfocus="this.placeholder=''" onblur="this.placeholder='제목을 입력해주세요.'"> 
						</div>

						<div class="ntw_content ntw_com" contenteditable="true" id="n_contentd">
							<p>내용을 입력해주세요!</p>
						</div>

						<div class="ntw_preview ntw_com">
							<img id="npreview" alt="" />
							<input type="file" name="nimage_file_name" id="nimage_file_name" onchange="nreadURL(this);" /> 
						</div>
						
						<input type="hidden" id="n_content" name="n_content">
						<input type="hidden" name="n_img" id="nimg_h">
						<input type="hidden" name="nimage_file_name_h" id="nimage_file_name_h">
						
						<div class="ntw_bottom">
							<div class="ntw_btn" onclick="ntw_submit()">
								<p>작성하기</p>
							</div>
						</div>
					</form>
				</div>
			</div>

		</div>
	</section>

	<%@ include file="../footer.jsp"%>

	<script type="text/javascript">
		function ntw_submit(){
			var ntw_title = $('#n_title').val();
			if(ntw_title == ""){
				alert("제목을 입력해 주세요.")
			} else(
				$('#noticeWriteform').submit()
			)
		}
	</script>
</body>
</html>