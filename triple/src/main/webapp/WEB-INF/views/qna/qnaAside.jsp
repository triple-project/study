<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='security'
	uri='http://www.springframework.org/security/tags'%>
	
	<a href="/qna/">고객센터 홈으로</a>
	<br>
	<a href="/qna/myQna">나의 문의리스트</a>
	<br>
	<a href="/qna/qnaWrite">문의작성하기</a>
	<br>
	<a href="/qna/noticeList">공지사항</a>
	<br>
	<a href="">오프라인가이드</a>

	<security:authorize access="hasRole('ROLE_ADMIN')">
		<h1><a href="/qna/work">처리중 목록</a></h1>
	</security:authorize>
