<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=1300">
	<title>Triple</title>
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
		function pro_readURL(input) {
			var file = input.files[0]; //파일에 대한 정보
			console.log(input.name);
			var pn = input.name;
			var pn2 = pn.split("product_img")[1];
			console.log(pn2);
			/*  console.log(file)  product_img*/
			if (file != '') {
				var reader = new FileReader();
				reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
				reader.onload = function (e) { // 파일 로드한 값을 표현한다
					$('#ppreview' + pn2).attr('src', e.target.result);
				}
			}
		}



		function ups() {

			//이미지이름
			var today = new Date();
			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var fArray = new Array();
			for (var i = 0; i < 5; i++) {
				var pfile = $('#pro_image_file_name' + (i + 1));
				var ti = hours + minutes + seconds;

				console.log(pfile.val());
				if (!pfile.val()) {
					//파일이 없다면

				} else {
					//파일이 들어있다면
					var fileValue = $("#pro_image_file_name" + (i + 1)).val().split("\\");
					var fileName = fileValue[fileValue.length - 1]; // 파일명
					var fnh = ti + i + fileName;
					$('#product_img' + (i + 1)).val(fnh);
					fArray.push(fnh);
					$("#img_name_up").val(fArray);
					console.log(fArray);
				}


			}

		}

		function fd(data) {
			location.href = "/admin/updateProD/" + data.name;
		}
	</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section id="sec">
		<div class="sec_in">
			<h1>상품수정</h1>

			<!-- <button onclick="ups()">테스트</button> -->

			<form action="/admin/updatePro" method="post" enctype="multipart/form-data" onsubmit="ups()">
				<input type="hidden" name="product_id" value="${pvo.product_id }">
				<ul>
					<li>
						<h2>상품이름</h2>
						<input type="text" name="product_name" value="${pvo.product_name }">
					</li>

					<li>
						<h2>소제목</h2>
						<input type="text" name="product_shortword" value="${pvo.product_shortword }">
					</li>

					<li>
						<h2>짧은소개</h2>
						<input type="text" name="product_subcontent" value="${pvo.product_subcontent }">
					</li>

					<li>
						<h2>카테고리</h2>
						<select name="product_category" id="product_category" onchange="change_tag()">
							<option selected="selected" hidden="hidden" value="${pvo.product_category }">
								${pvo.product_category}
							</option>
							<option value="호텔">호텔</option>
							<option value="리조트">리조트</option>
							<option value="펜션">펜션</option>
							<option value="모텔">모텔</option>
							<option value="게스트하우스">게스트하우스</option>
							<option value="캠핑">캠핑</option>
							<option value="맛집">맛집</option>
							<option value="패키지여행">패키지여행</option>
							<option value="티켓">티켓</option>
						</select>
					</li>

					<li>
						<h2>주소</h2>
						<input type="text" name="product_address" value="${pvo.product_address }">
					</li>

					<li>
						<h2>도시</h2>
						<select name="product_city" id="product_city">
							<option selected="selected" hidden="hidden" value="${pvo.product_city}">${pvo.product_city}
							</option>
							<option value="서울">서울</option>
							<option value="대전">대전</option>
							<option value="대구">대구</option>
							<option value="부산">부산</option>
							<option value="울산">울산</option>
							<option value="인천">인천</option>
							<option value="광주">광주</option>
							<option value="제주">제주</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청도">충청도</option>
							<option value="전라도">전라도</option>
							<option value="경상도">경상도</option>
						</select>
					</li>

					<li class="liFloat">
						<h2>좌표x</h2>
						<input type="text" name="product_locationx" value="${pvo.product_locationx }">
					</li>

					<li class="liFloat">
						<h2>좌표y</h2>
						<input type="text" name="product_locationy" value="${pvo.product_locationy }">
					</li>
				</ul>

				<div class="imgWrap">
					<div class="preview">
						<h2>이미지1</h2>
						<img id="ppreview1" src="/resources/img/upload/${pvo.product_img1}" />
						<input type="file" name="aproduct_img1" id="pro_image_file_name1"
							onchange="pro_readURL(this);" />
					</div>
					<div class="preview">
						<h2>이미지2</h2>
						<img id="ppreview2" src="/resources/img/upload/${pvo.product_img2}">
						<input type="file" name="aproduct_img2" id="pro_image_file_name2"
							onchange="pro_readURL(this);" />
					</div>
					<div class="preview">
						<h2>이미지3</h2>
						<img id="ppreview3" src="/resources/img/upload/${pvo.product_img3}">
						<input type="file" name="aproduct_img3" id="pro_image_file_name3"
							onchange="pro_readURL(this);" />
					</div>
					<div class="preview">
						<h2>이미지4</h2>
						<img id="ppreview4" src="/resources/img/upload/${pvo.product_img4}">
						<input type="file" name="aproduct_img4" id="pro_image_file_name4"
							onchange="pro_readURL(this);" />
					</div>
					<div class="preview">
						<h2>이미지5</h2>
						<img id="ppreview5" src="/resources/img/upload/${pvo.product_img5}">
						<input type="file" name="aproduct_img5" id="pro_image_file_name5"
							onchange="pro_readURL(this);" />
					</div>
				</div>

				<input type="hidden" name="product_img1" id="product_img1" value="${pvo.product_img1}">
				<input type="hidden" name="product_img2" id="product_img2" value="${pvo.product_img2}">
				<input type="hidden" name="product_img3" id="product_img3" value="${pvo.product_img3}">
				<input type="hidden" name="product_img4" id="product_img4" value="${pvo.product_img4}">
				<input type="hidden" name="product_img5" id="product_img5" value="${pvo.product_img5}">
				<input type="hidden" name="img_name_up" id="img_name_up">

				<div class="submit">
					<input type="submit" value="상품수정하기">
				</div>
			</form>

			<div class="soList">
				<div class="left">
					<h2>태그수정</h2>

					<c:set var="i" value="0" />
					<form action="/admin/updatetag" method="post" onsubmit="at()">
						<div onclick="newt()" class="tagName">태그추가</div>
						<div id="tf">
							<c:forEach items="${tList}" var="tl">
								<select id="utp${i}">
									<option value="${tl.tag_tag}" selected="selected">${tl.tag_tag}</option>
									<c:forEach items="${tcl}" var="t">
										<option value="${t.tag_name}">${t.tag_name}</option>
									</c:forEach>
									<option value="삭제하기">삭제하기</option>
								</select>
								<c:set var="i" value="${i+1}" />
							</c:forEach>
						</div>
						<input type="hidden" name="utag" id="utag">
						<div class="submit"><input type="submit" value="수정하기"></div>
						<input type="hidden" value="${pvo.product_id}" name="tpid">
					</form>
					<script type="text/javascript">
						var ti = '<c:out value="${i}"/>';
						const tj = '<c:out value="${i}"/>';

						function newt() {

							console.log(ti);
							if (ti >= 5) {
								alert("5개까지 추가가능!");
							} else {
								$.ajax({
									url: "/rest/tagList",
									dataType: "json",
									type: "POST",
									data: {
										tag_cate: "${stc}"
									},
									success: function (data) {
										//오브젝트값 포문으로 뽑아내기
										arr = [];
										$("#tag_cate_h").val(Object.keys(data));
										for (var i = 0; i < (data[Object.keys(data)]).length; i++) {
											//console.log(data[Object.keys(data)][i]);
											arr.push(data[Object.keys(data)][i]);
										}
										console.log(arr);
										var tdl = $('#tf');
										tdl.append('<select id="utp' + ti + '">');
										var d = $('#utp' + ti);
										for (var i = 0; i < arr.length; i++) {
											d.append("<option>" + arr[i] + "</option>");
										}
										d.append("<option>삭제하기</option>");
										ti++
									}
								})

							}
						}

						var tuarr = [];

						function at() {
							for (var j = 0; j < ti; j++) {
								var tost = $('#utp' + j).val();
								tuarr.push(tost);
								//console.log(tuarr[j]);
								//console.log(tost);
							}
							console.log(tuarr);
							$('#utag').val(tuarr);
						}
					</script>
				</div>

				<div class="right">
					<h2>상세상품수정</h2>
					<c:forEach items="${dList}" var="dL">
						<div>
							<p>상품 상세명 : <span>${dL.pd_name}</span></p> <button onclick="fd(this)" name="${dL.pd_id}">수정하기</button>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</section>


	<%@ include file="/WEB-INF/views/footer.jsp"%>
</body>

</html>