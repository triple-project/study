<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="proRegister" method="post">
		<div>
			제목 <input type='text' name="product_name">
		</div>
		<div>
			카테고리<select id="pro_category" name="pro_category">
				<option value="none" selected="selected" disabled="disabled">=== 선택 ===</option>
				<option value="펜션">펜션</option>
				<option value="풀빌라">풀빌라</option>
				<option value="호텔">호텔</option>
				<option value="게스트하우스">게스트하우스</option>
				<option value="모텔">모텔</option>
			</select>
		</div>
		<div>
			도시 <select id="product_city" name="product_city">
				<option value="none" selected="selected" disabled="disabled">=== 선택 ===</option>
				<option value="서울">서울</option>
				<option value="대전">대전</option>
				<option value="대구">대구</option>
				<option value="부산">부산</option>
				<option value="제주">제주</option>
			</select>
		</div>
		<div>
			상품이미지 1 : <input type="file" name="product_img1">
		</div>
	<!-- <div>
			상품이미지 2 :<input type="file" name="pimg2">
		</div>
		<div>
			상품이미지 3 :<input type="file" name="pimg3">
		</div>
		<div>
			상품이미지 4 :<input type="file" name="pimg4">
		</div>
		<div>
			상품이미지 5 :<input type="file" name="pimg5">
		</div> -->	
		<div>
			주소 :<input type="text" name="product_address">
		</div>
		<div>
			좌표 :<input type="text" name="product_location">
		</div>
		<input type="submit" value="상품등록" > 
		<input type="reset" value="취소">
	</form>
</body>
</html>