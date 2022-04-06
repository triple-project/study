<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>Document</title>
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
	<link rel="stylesheet" href="/resources/css/main.css">
	

	<script src="/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="/resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="/resources/js/main.js"></script>
	
	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
	<style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap {position:relative;width:100%;height:350px;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>
	
</head>
<body>
	<jsp:include page="/WEB-INF/views/header.jsp" flush="true"/>

	<h1>고객 상품상세페이지</h1>
	<table border="1">
		<tr>
			<th>상품사진</th>
			<th>상품이름</th>
			<th>상품주소</th>
			<th>상품지역</th>
			<th>상품이름</th>
		</tr>
		<tr>
			<td>${pvo.product_id}</td>
			<td>${pvo.product_category}</td>
			<td>${pvo.product_address}</td>
			<td>${pvo.product_city}</td>
			<td>${pvo.product_name}</td>
		</tr>
	</table>
	<hr>
	<h3>객실목록</h3>
	<table border="1">
		<c:forEach items="${dList}" var="pd">
			<tr>
				<th>${pd.product_id}</th>
				<th>${pd.pd_contents}</th>
				<th>${pd.pd_img1}</th>
				<th><a href="showPro/${pd.product_id}/${pd.pd_name}" >${pd.pd_name}</a></th>
				<th>${pd.pd_price}</th>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<input type="button" value="결제하기">
	<hr>
	<p style="margin-top:-12px">
</p>
<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <ul id="category">
        <li id="BK9" data-order="0"> 
            <span class="category_bg bank"></span>
            은행
        </li>       
        <li id="MT1" data-order="1"> 
            <span class="category_bg mart"></span>
            마트
        </li>  
        <li id="PM9" data-order="2"> 
            <span class="category_bg pharmacy"></span>
            약국
        </li>  
        <li id="OL7" data-order="3"> 
            <span class="category_bg oil"></span>
            주유소
        </li>  
        <li id="CE7" data-order="4"> 
            <span class="category_bg cafe"></span>
            카페
        </li>  
        <li id="CS2" data-order="5"> 
            <span class="category_bg store"></span>
            편의점
        </li>      
    </ul>
</div>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6325d6dc315ae205e4c0d801d1732810&libraries=services"></script>
<script type="text/javascript" src="../../resources/js/kakaoMap.js"></script> 
<script type="text/javascript">
		window.onload = function real() {
		var setA = 1;
		var setB = 2;
		setA = ${pvo.product_locationx};
		setB = ${pvo.product_locationy};
		console.log(setA);
		console.log(setB); 
		
		 // 이동할 위도 경도 위치를 생성합니다 
	    var moveLatLon = new kakao.maps.LatLng(setA, setB);
	    
	    // 지도 중심을 이동 시킵니다
	    map.setCenter(moveLatLon);
	}
</script>
<hr>
<form method="post" action="/review">
      댓글 <input type="text" id="comment" name="comment">
      별점<input type="text" id="star_ranking" name="star_ranking">
      이미지1<input type="file" id= "r_img1" name="r_img1">
      이미지2<input type="file" id= "r_img2" name="r_img2">
      이미지3<input type="file" id= "r_img3" name="r_img3">
      <input type="hidden" value="${pvo.product_id}" name="product_id">
      <input type="submit" value="리뷰등록" > 
      <input type="reset" value="취소">
   </form>

<hr>
   <table border="1">
      <c:forEach items="${reviewList}" var="re">
      <tr>
         <td>${re.mem_id}</td>
         <td>${re.comment}</td>
         <td>${re.star_ranking}</td>
         <td>${re.r_img1}</td>
         <td>${re.r_img2}</td>
         <td>${re.r_img3}</td>
      </tr>
   </c:forEach>
   </table>
</body>
</html>