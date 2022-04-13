<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Triple</title>
<link rel="stylesheet" href="../../resources/css/reset.css">
<link rel="stylesheet"
   href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
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
<link rel="stylesheet" href="/resources/css/mySave.css">


<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
<script src="https://kit.fontawesome.com/8d1d3d3a2e.js"crossorigin="anonymous"></script>
<script src="/resources/js/main.js"></script>

<link rel="shortcut icon" href="#">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
   rel="stylesheet">
</head>
<body>
   
   <jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

   <section id="sec">
      <div class="mySave_in">
         <h3>내 저장</h3>
         <div class="ms_main">
            <div class="ms_title">
               <div class="ms_num">
                  <p>번호</p>
               </div>
               <div class="ms_img">
                  <p>이미지</p>
               </div>
               <div class="ms_name">
                  <p>상품명</p>
               </div>
               <div class="ms_addr">
                  <p>주소</p>
               </div>
               <div class="ms_city">
                  <p>도시</p>
               </div>
               <div class="ms_category">
                  <p>종류</p>
               </div>
               <div class="ms_btn">
                  <!-- <p>뭐라하지</p> -->
               </div>
            </div>
            
            <!-- for문 시작 -->
            <c:set var="num" value="${page.pageS+1}"/>
            <c:forEach items="${mhl}" var="ml" begin="${page.pageS}" end="${page.pageE}">
            <div class="ms_content">
               <div class="ms_connum">
                  <p>${num}</p>
               </div>
               <div class="ms_conimg">
                  <img src="/resources/img/upload/${ml.mgz_thub}">
               </div>
               <div class="ms_conname">
                  <p>${ml.mgz_title}</p>
               </div>
               <div class="ms_conaddr">
                  <p>${ml.mgz_date}</p>
               </div>
               <div class="ms_concity">
                  <p>${ml.mgz_city}</p>
               </div>
               <div class="ms_concate">
                  <p>${ml.mgz_category}</p>
               </div>
               <div class="ms_conbtn">
                  <div class="ms_viewbtn ms_btncom" onclick="location.href='/mv/${ml.mgz_id}'">
                     <p>보러가기</p>
                  </div>
                  <!-- <div class="ms_delbtn ms_btncom" onclick="">
                     <p>삭제하기</p>
                  </div> -->
               </div>
            </div>
            <c:set var="num" value="${num+1}"/>
            </c:forEach>
            <!-- for문 끝 -->
            
            <div class="own_bottom">
               <div class="bottom_search" >
                  <!-- <form id="search" method="" action="">
                     <input type="text" class="search_input" placeholder="상품검색">
                     <div class="search_sub" onclick="$('#search').submit()">
                        <i class="fa-solid fa-magnifying-glass"></i>
                     </div>
                  </form> -->
               </div>

               <div class="paging">
                  <div class="leftbtn btn_com hoverbtn">
                     <i class="fa-solid fa-chevron-left"></i>
                  </div>
                  <c:forEach var="i" begin="1" end="${page.pageC}">
                     <div class="pagenum">
                   <a href="/mySave/${i}">${i}</a>
                  </div>
                  </c:forEach>
                  <div class="rightbtn btn_com hoverbtn">
                     <i class="fa-solid fa-chevron-right"></i>
                  </div>
               </div>

               <div class="bottom_reg" style="display: none;">
                  <div class="gotoReg">
                     상품등록 하러가기
                  </div>
               </div>

         </div>
      </div>
   </section>
   
   <%@ include file="footer.jsp"%>

</body>
</html>