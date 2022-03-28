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
	<h1>객실 상세페이지</h1>
	<table border="1">
			<tr>
				<th>${pdvo.product_id}</th>
				<th>${pdvo.pd_contents}</th>
				<th>${pdvo.pd_img1}</th>
				<th>${pdvo.pd_name}</th>
				<th>${pdvo.pd_price}</th>
			</tr>
	</table>
</body>
</html>