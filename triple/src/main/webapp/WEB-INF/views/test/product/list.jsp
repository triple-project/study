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
	<h1>고객이보는 리스트페이지</h1>
	<table border="1">
		<tr>
			<th>상품사진</th>
			<th>상품이름</th>
		</tr>
		<c:forEach items="${pList}" var="product" >
			<tr>
				<th>${product.product_img1} </th>
				<th><a href="list/${product.product_id}" >${product.product_name}</a></th>
			</tr>
		</c:forEach>
	</table>
</body>
</html>