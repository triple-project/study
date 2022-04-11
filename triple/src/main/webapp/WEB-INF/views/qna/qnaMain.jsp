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
<link rel="stylesheet" href="/resources/css/qnaMain.css">


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
		<div class="qna_in">
			<div class="qna_aside">
				<aside>
					<jsp:include page="/WEB-INF/views/qna/qnaAside.jsp" flush="true" />
				</aside>
			</div>
	
			<div class="qna_main ">
				<h3>고객센터</h3>
				<h4>공지사항</h4>
				<div class="qna_more">
					<a href="/qna/noticeList">공지사항 전체보기</a>
				</div>
				<div class="qna_notice">
					<c:forEach items="${nList}" var="nl">
						<div class="qna_noticeword">
							<span>공지</span>
							<span>
								<a href="/qna/nlist/${nl.n_id}">${nl.n_title}</a>
							</span>
							<span>${nl.n_date}</span>
						</div>
					</c:forEach>
				</div>
				<h4>자주묻는질문</h4>
				<div class="qna_faq">
					<div class="qna_faq1 qna_faq_com">
						<p>BEST</p>
						<a href="">계정을 잊어버렸어요</a> 
						<a href="">숙소 예약 내역은 어디서 확인하나요?</a> 
						<a href="">기상 악화 결항시 국내 항공원 취소 방법 및 취소 수수료가 궁금해요</a> 
						<a href="">투어/티켓 취소/환불 신청은 어떻게 하나요?</a> 
					</div>
					<div class="qna_faq2 qna_faq_com">
						<p>항공</p>
						<a href="">네이버/스카이스캐너를 통해 예약했습니다. 어디서 확인하나요?</a> 
						<a href="">국내 항공 예약을 취소하고 싶어.</a> 
						<a href="">좌석 배정은 언제 받을 수 있나요?</a> 
						<a href="">일부 탑승객만 취소하고 싶어요</a>
					</div>
					<div class="qna_faq3 qna_faq_com">
						<p>숙소</p>
						<a href="">예약을 취소하고 싶어요</a> 
						<a href="">체크인 하려는데 예약 번호 확인이 안돼요</a> 
						<a href="">숙박대전 쿠폰은 어떻게 받나요?</a> 
						<a href="">숙박대전 쿠폰 적용이 안돼요</a> 
					</div>
					<div class="qna_faq4 qna_faq_com">
						<p>투어/티켓</p>
						<a href="">예약번호는 어디서 확인하나요?</a> 
						<a href="">바우처/바코드가 안왔어요</a> 
						<a href="">아직 예약 확정 알림을 받지 못했습니다</a> 
						<a href="">바우처를 수령까지 얼마나 걸리나요?</a> 
					</div>
					<div class="qna_faq5 qna_faq_com">
						<p>서비스 일반</p>
						<a href="">새로운 장소를 추가하고 싶어요</a> 
						<a href="">계정을 잊어버렸어요</a> 
						<a href="">휴대폰 변경, 재로그인 후 일정이 사라졌어요</a> 
						<a href="">간편 로그인 계정을 탈퇴한 경우는 어떻게 해야 하나요?</a> 
					</div>
					<div class="qna_faq6 qna_faq_com">
						<p>공통</p>
						<a href="">예약은 어디서 볼 수 있나요?</a> 
						<a href="">환불은 언제 되나요?</a> 
						<a href="">결제 영수증은 어디서 확인할 수 있나요?</a> 
						<a href="">결제 수단은 어떻게 되나요?</a> 
					</div>
				</div>
			</div>
		</div>
	</section>

		<%@ include file="../footer.jsp"%>
</body>
</html>