<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<body>
	<h1>이곳은 조회결과 테스트 페이지 이다</h1>
	<h1>조회한 것은 ${main}이다</h1>
	
	<table border="1">
	<c:forEach items="${mainlist}" var="test">
		<tr>
			<td>${test.product_id}</td>
			<td>${test.pro_category}</td>
			<td>${test.product_address}</td>
			<td>${test.product_city}</td>
			<td>${test.product_name}</td>
		</tr>
	</c:forEach>
</table>
	
</body>
</html>