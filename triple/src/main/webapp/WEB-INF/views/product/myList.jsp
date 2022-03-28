<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>업주의 상품목록 리스트입니다</h1>
	<a href="pr">상품등록</a>
	<table border="1">
		<tr>
			<th>상품사진</th>
			<th>상품이름</th>
			<th>상품디테일등록</th>
		</tr>
		<c:forEach items="${myList}" var="pro">
			<tr>
				<td>${pro.product_id}</td>
				<td>${pro.pro_category}</td>
				<td>${pro.product_address}</td>
				<td>${pro.product_city}</td>
				<td>${pro.product_name}</td>
				<td><a href="pdr/${pro.product_id}">상품디테일등록</a></td>
				<!-- 수정필요 -->
			</tr>
		</c:forEach>
	</table>
</body>
</html>