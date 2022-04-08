<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>MyList page</title>
	<link rel="stylesheet" href="/resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="/resources/css/common.css">
	<link rel="stylesheet" href="/resources/css/ownerList.css">
	

	<script src="/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="/resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="/resources/js/main.js"></script>
	
	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>


    <section id="sec_owner">
        <div class="own">
			<div class="own_in">
				<h3>상품리스트</h3>

				<div class="own_tbox">
					<div class="box_num box_com">
						<p>번호</p>
						<div class="array">
							<span>
								<i class="fa-solid fa-chevron-up"></i>
							</span>
							<span>
								<i class="fa-solid fa-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="box_img">
						<p>상품이미지</p>
					</div>
					<div class="box_name box_com">
						<p>상품이름</p>
						<div class="array">
							<span>
								<i class="fa-solid fa-chevron-up"></i>
							</span>
							<span>
								<i class="fa-solid fa-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="box_add box_com">
						<p>주소</p>
						<div class="array">
							<span>
								<i class="fa-solid fa-chevron-up"></i>
							</span>
							<span>
								<i class="fa-solid fa-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="box_city box_com">
						<p>도시</p>
						<div class="array">
							<span>
								<i class="fa-solid fa-chevron-up"></i>
							</span>
							<span>
								<i class="fa-solid fa-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="box_cate box_com">
						<p>종류</p>
						<div class="array">
							<span>
								<i class="fa-solid fa-chevron-up"></i>
							</span>
							<span>
								<i class="fa-solid fa-chevron-down"></i>
							</span>
						</div>
					</div>
					<div class="box_mod">
						<p>수정</p>
					</div>
				</div>
				
				<c:set var="num" value="${page.pageS+1}"/>
				<c:forEach items="${myList}" var="ml" begin="${page.pageS}" end="${page.pageE}">
				<div class="own_list">
					
					<div class="list_num .list_com">
						<p>${num}</p>
					</div>
					<div class="list_img .list_com">
						<!-- <td>${pro.product_img1}</td> -->
						<img src="/resources/img/upload/${ml.product_img1}">
					</div>
					<div class="list_name">
						<!-- <td>${pro.product_name}</td> -->
						<p>${ml.product_name}</p>
					</div>
					<div class="list_add">
						<!-- <td>${product_address}</td> -->
						<p>${ml.product_address}</p>
					</div>
					<div class="list_city">
						<!-- <td>${product_city}</td> -->
						<p>${ml.product_city}</p>
					</div>
					<div class="list_cate .list_com">
						<!-- <td>${product_category}</td> -->
						<p>${ml.product_category}</p>
					</div>
					<div class="list_mod .list_com">
						<div class="mod_btn">
							<a href="/admin/updatePro/${ml.product_id}">수정하기</a>
						</div>
						<div class="mod_btn">
							확인하기
						</div>
						<div class="mod_btn">
							<a href="/admin/oRm/${ml.product_id}">상세등록</a>
						</div>
					</div>
				</div>
				<c:set var="num" value="${num+1}"/>
				</c:forEach>
				
				<div class="own_bottom">
					<div class="bottom_search">
						<form id="search" method="" action="">
							<input type="text" class="search_input" placeholder="상품검색">
							<div class="search_sub" onclick="$('#search').submit()">
								<i class="fa-solid fa-magnifying-glass"></i>
							</div>
						</form>
					</div>

					<div class="paging">
						<div class="leftbtn btn_com hoverbtn">
							<i class="fa-solid fa-chevron-left"></i>
						</div>
						<c:forEach var="i" begin="1" end="${page.pageC}">
							<div class="pagenum"><a href="/admin/oL/${i}">${i}</a></div>
						</c:forEach>
						<div class="rightbtn btn_com hoverbtn">
							<i class="fa-solid fa-chevron-right"></i>
						</div>
					</div>

					<div class="bottom_reg">
						<div class="gotoReg" onclick="location.href='/admin/oR'">
							상품등록 하러가기
						</div>
					</div>
				</div>
			</div>	
		</div>
    </section>

    <%@ include file="../footer.jsp"%>

</body>
</html>