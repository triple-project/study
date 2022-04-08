<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품수정페이지</title>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">

	
	
	function prod_readURL(input) {
		var file = input.files[0] //파일에 대한 정보
		var dn = input.name;
		var dn2 = dn.split("pd_img")[1];
		/*  console.log(file) pd_img*/
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
				$('#dpreview'+dn2).attr('src', e.target.result);
			}
		}
	}

	
	
	function upsd() {
		
		//이미지이름
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var fArray = new Array();
		for (var i = 0; i < 3; i++) {
			var pfile = $('#prod_image_file_name'+(i+1));
			var ti = hours + minutes + seconds;
			console.log(pfile.val());
			if (!pfile.val()) {
				//파일이 없다면
				
			}else {
				//파일이 들어있다면
				var fileValue = $("#prod_image_file_name"+(i+1)).val().split("\\");
				var fileName = fileValue[fileValue.length - 1]; // 파일명
				var fnh = ti+i+fileName;
				$('#pd_img' + (i + 1)).val(fnh);
				fArray.push(fnh);
				$("#img_name_upd").val(fArray);
				console.log(fArray);
			}
			

		}

	}
</script>
</head>
<body>

<h1>상품상세수정</h1>

<!-- <button onclick="upsd()">테스트</button> -->

   <!-- 상세 상품 수정 ㄴ -->

   <h2>상품상세</h2>

	<form action="/admin/updateProD" method="post" enctype="multipart/form-data" onclick="upsd()">
		<span>객실이름 : <input type="text" name="pd_name" value="${pdvo.pd_name}"></span> 
		<br>
		 <div style="display: inline-block;">
        	        이미지1<input type="file" name="apd_img1" id="prod_image_file_name1" onchange="prod_readURL(this);" style="width: 190px"/>
        			이미지2<input type="file" name="apd_img2" id="prod_image_file_name2" onchange="prod_readURL(this);" style="width: 190px"/>
        			이미지3<input type="file" name="apd_img3" id="prod_image_file_name3" onchange="prod_readURL(this);" style="width: 190px"/>       
        </div>
        <div style="display: inline-block;">
			<div class="preview" style="display: inline-block;">
				<img id="dpreview1" src="/resources/img/upload/${pdvo.pd_img1}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="dpreview2" src="/resources/img/upload/${pdvo.pd_img2}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="dpreview3" src="/resources/img/upload/${pdvo.pd_img3}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
		</div>
		<input type="hidden" value="${pdvo.pd_img1}" name="pd_img1" id="pd_img1">
		<input type="hidden" value="${pdvo.pd_img2}" name="pd_img2" id="pd_img2">
		<input type="hidden" value="${pdvo.pd_img3}" name="pd_img3" id="pd_img3">
		<input type="hidden" name="img_name_upd" id="img_name_upd">
		<input type="hidden" name="pd_id" value="${pdvo.pd_id}">
		
		<br>
		<span>객실가격 : <input type="text" name="pd_price" value="${pdvo.pd_price}"></span>
		<br>
		<span>객실설명 : <input type="text" name="pd_contents" value="${pdvo.pd_contents}"></span>
		<input type="submit" value="수정하기">
		<hr>		
	</form>

</body>
</html>