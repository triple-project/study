<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
<!DOCTYPE html>
<html style="height: 100%;">
<head>
<meta charset="UTF-8">
<title>Triple</title>
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
<link rel="stylesheet" href="/resources/css/qnaShow.css">


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
		function qos() {
			var repd = document.getElementById('repd')
			document.getElementById('rep').value = repd.innerHTML;
		}	
	</script>
</head>
<body>

	<jsp:include page="/WEB-INF/views/header.jsp" flush="true" />

	<section id="sec">
		<div class="qnaShow_in">
			<div class="qnaShow_aside">
				<aside>
					<jsp:include page="/WEB-INF/views/qna/qnaAside.jsp" flush="true" />
				</aside>
			</div>
			<div class="qnaShow_main">
				<div class="qnaShow_title">
					<p>제목 : ${qvo.q_title}</p>
					<p>작성자 : ${qvo.mem_id}</p>
					<p>문의번호 : ${qvo.q_id}</p>
				</div>
				<div class="qnaShow_content">
					<div>${qvo.q_content}</div>
				</div>
				<div class="qnaShow_img">
					<img src="/resources/img/upload/${qvo.q_img}">
				</div>

					<h4>문의 답변</h4>

					<c:forEach items="${qrVoList}" var="rep">
							<div class="qscomment">
								<p>관리자 : </p> 
								<div class="qsdiv">${rep.rep}</div>
							</div>
					</c:forEach>

					<security:authorize access="hasRole('ROLE_ADMIN')">
						<div class="qsadmin">
							<h5>문의글 답변하기. 관리자 전용</h5>
							<form method="post" action="/qna/qnaShow" id="qnacommentwrite" onsubmit="qos()">
								<div class="qsadmin_comment">
									<div class="qsa_cominput" contenteditable="true" id="repd">
										매크로 답변입니다.
									</div>

									<input type="hidden" name="rep" id="rep">
									<input type="hidden"
										name="q_id" value="${qvo.q_id}">

									<div class="qscommentbtn">
										<p onclick="$('#qnacommentwrite').submit()">댓글 작성</p>
									</div>
								</div>
							</form>
						</div>
					</security:authorize>
					<br>
					<!-- <button onclick="gh()">고객센터 홈으로</button> -->

				</div>
			</div>
		</div>
	</section>
	<div>
		<%@ include file="../footer.jsp"%>
	</div>



</body>
</html>