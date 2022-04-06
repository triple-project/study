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

	<h1>(업주등록)선택한상품불러올거임</h1>
	<table border="1">
		<tr>
			<th>상품사진</th>
			<th>상품이름</th>
		</tr>
		<tr>
			<td>${fp.product_id}</td>
			<td>${fp.product_category}</td>
			<td>${fp.product_address}</td>
			<td>${fp.product_city}</td>
			<td>${fp.product_name}</td>
			<!-- 수정필요 -->
		</tr>
	</table>
	<form action="proDetailRegister" method="post">
		<!-- 	<form action="product/pdr" method="post"> -->
		<div>
			상품이름 :<input type="text" name="pd_name">
		</div>

		<div>
			내용 <input type="text" cols="50" rows="10" name="pd_contents">
		</div>
		<div>
			상품이미지 1 : <input type="file" name="pd_img1">
		</div>
		<div>
			상품가격 :<input type="text" name="pd_price">
		</div>

		<div>
			<input type="submit" value="상품디테일등록">
		</div>
		<div>
			<input type="reset" value="취소">
		</div>
	</form>

</body>
</html>