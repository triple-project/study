<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Triple</title>
<link rel="stylesheet" href="/resources/css/reset.css">
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
<link rel="stylesheet" href="/resources/css/myReservation.css">


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
      <div class="myReservation_in">
         <h3>내 예약</h3>
         <div class="myrv_main">
            <div class="myrv_title">
               <div class="myrn_date">
                  <p>구매일</p>
               </div>
               <div class="myrn_prname">
                  <p>상품명</p>
               </div>
               <div class="myrn_rvdate">
                  <p>예약일</p>
               </div>
               <div class="myrn_uniquenum">
                  <p>고유번호</p>
               </div>
               <div class="myrn_sellernum">
                  <p>판매자번호</p>
               </div>
               <div class="myrn_amount">
                  <p>결제금액</p>
               </div>
               <div class="myrn_approval">
                  <p>카드승인번호</p>
               </div>
               <div class="myrn_btn">
                  
               </div>
            </div>

            <!-- for문 시작 -->
             <c:forEach items="${mpl}" var="ml"> 
            <div class="myrv_content">
               <div class="myrv_date">
                   <p>${ml.flex_day}</p> 
                  <!-- <p>2022-04-13</p> -->
               </div>
               <div class="myrv_prname">
                   <p>${ml.name}</p> 
                 <!--  <p>상품이름 - 삼천원</p> -->
               </div>
               <div class="myrv_rvdate">
                   <p>${ml.start_day}</p> 
                 <!--  <p>20220413</p> -->
               </div>
               <div class="myrv_uniquenum">
                   <p>${ml.imp_uid}</p> 
                 <!--  <p>imp_928534763095</p> -->
               </div>
               <div class="myrv_sellernum">
                   <p>${ml.merchant_uid}</p> 
              <!--     <p>triple_1649792534068</p> -->
               </div>
               <div class="myrv_amount">
                   <p>${ml.paid_amount}</p> 
                 <!--  <p>3000</p> -->
               </div>
               <div class="myrv_approval">
                   <p>${ml.apply_num}</p> 
                 <!--  <p>44155870</p> -->
               </div>
               <div class="myrv_conbtn">
                  <div class="myrv_viewbtn myrv_btncom" onclick="location.href='/category/${ml.product_id}'">
                     <p>상품보기</p>
                  </div>
                  <!-- <div class="myrv_delbtn myrv_btncom">
                     <p>예약취소</p>
                  </div> -->
               </div>
            </div>
             </c:forEach> 
            <!-- for문 끝 -->


         </div>
      </div>
   </section>
   
   <%@ include file="footer.jsp"%>

</body>
</html>