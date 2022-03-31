<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>뭔데?</h1>
<table border="1">
	<c:forEach items="${maglist}" var="test">
		<tr>
			<td>${test.mgz_id}</td>
			<td>${test.mgz_content}</td>
			<td>${test.mgz_title}</td>
			<td>${test.mgz_smalltitle}</td>
			<td>${test.mgz_category}</td>
			<td>${test.mgz_city}</td>
		</tr>
	</c:forEach>
	</table>
	<p>${maglist[125].mgz_id}</p>
	<p>${maglist[125].mgz_content}</p>
</body>
</html>