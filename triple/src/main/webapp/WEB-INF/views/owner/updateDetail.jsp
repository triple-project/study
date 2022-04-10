<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>상품수정페이지</title>

	<link rel="stylesheet" href="/resources/css/reset.css">

	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
	<link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
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
	<link rel="stylesheet" href="/resources/css/common.css">
	<link rel="stylesheet" href="/resources/css/updatePro.css">


	<script src="/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="/resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="/resources/js/main.js"></script>

	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
		rel="stylesheet">

	<script type="text/javascript">
		function prod_readURL(input) {
			var file = input.files[0] //파일에 대한 정보
			var dn = input.name;
			var dn2 = dn.split("pd_img")[1];
			/*  console.log(file) pd_img*/
			if (file != '') {
				var reader = new FileReader();
				reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
				reader.onload = function (e) { // 파일 로드한 값을 표현한다
					$('#dpreview' + dn2).attr('src', e.target.result);
				}
			}
		}



		function upsd() {

			//이미지이름
			var today = new Date();
			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var fArray = new Array();
			for (var i = 0; i < 3; i++) {
				var pfile = $('#prod_image_file_name' + (i + 1));
				var ti = hours + minutes + seconds;
				console.log(pfile.val());
				if (!pfile.val()) {
					//파일이 없다면

				} else {
					//파일이 들어있다면
					var fileValue = $("#prod_image_file_name" + (i + 1)).val().split("\\");
					var fileName = fileValue[fileValue.length - 1]; // 파일명
					var fnh = ti + i + fileName;
					$('#pd_img' + (i + 1)).val(fnh);
					fArray.push(fnh);
					$("#img_name_upd").val(fArray);
					console.log(fArray);
				}


			}

		}
	</script>
</head>

<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section id="sec">
		<div class="sec_in">
			<h1>상품상세수정</h1>

			<form action="/admin/updateProD" method="post" enctype="multipart/form-data" onclick="upsd()">

				<ul>
					<li><h2>객실이름</h2><input type="text" name="pd_name" value="${pdvo.pd_name}"></li>
				</ul>

				<div class="imgWrap wrapBorder">
					<div class="preview">
						<h2>이미지1</h2>
						<img id="dpreview1" src="/resources/img/upload/${pdvo.pd_img1}"  />
						<input type="file" name="apd_img1" id="prod_image_file_name1" onchange="prod_readURL(this);"/>
					</div>
					<div class="preview">
						<h2>이미지2</h2>
						<img id="dpreview2" src="/resources/img/upload/${pdvo.pd_img2}" />
						<input type="file" name="apd_img2" id="prod_image_file_name2" onchange="prod_readURL(this);" />
					</div>
					<div class="preview">
						<h2>이미지3</h2>
						<img id="dpreview3" src="/resources/img/upload/${pdvo.pd_img3}" />
						<input type="file" name="apd_img3" id="prod_image_file_name3" onchange="prod_readURL(this);" />
					</div>
				</div>

				<input type="hidden" value="${pdvo.pd_img1}" name="pd_img1" id="pd_img1">
				<input type="hidden" value="${pdvo.pd_img2}" name="pd_img2" id="pd_img2">
				<input type="hidden" value="${pdvo.pd_img3}" name="pd_img3" id="pd_img3">
				<input type="hidden" name="img_name_upd" id="img_name_upd">
				<input type="hidden" name="pd_id" value="${pdvo.pd_id}">

				<ul>
					<li>
						<h2>객실가격</h2>
						<input type="text" name="pd_price" value="${pdvo.pd_price}">
					</li>
					<li>
						<h2>객실설명</h2>
						<input type="text" name="pd_contents" value="${pdvo.pd_contents}">
					</li>
				</ul>
				
				<div class="submit bottomSubmit">
					<input type="submit" value="상품수정하기">
				</div>

			</form>

		</div>
	</section>

	<%@ include file="/WEB-INF/views/footer.jsp"%>

</body>

</html>