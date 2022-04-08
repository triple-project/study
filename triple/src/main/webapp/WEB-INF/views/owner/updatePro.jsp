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

	function pro_readURL(input) {
		var file = input.files[0]; //파일에 대한 정보
		console.log(input.name);
		var pn = input.name;
		var pn2 = pn.split("product_img")[1];
		console.log(pn2);
		/*  console.log(file)  product_img*/
		if (file != '') {
			var reader = new FileReader();
			reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
			reader.onload = function(e) { // 파일 로드한 값을 표현한다
				$('#ppreview'+pn2).attr('src', e.target.result);
			}
		}
	}
	
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
	/* var filename = new Array();
    var pfcount = 0;
    var arr = [];
    var c = 0;
	var tarr = [];
	function ups() {
		for (var i = 0; i < c; i++) {
			var tost = $('#tag_s'+i).val();
			tarr.push(tost);
			console.log(tarr[i]);
		}
		$('#tag_list_h').val(tarr);
		var ttt = $('#tag_list_h').val();
		console.log(ttt);
		//이미지이름
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var fArray = new Array();
		for (var i = 0; i < pfcount; i++) {
			var ti = hours + minutes + seconds;
			var fnn = i + ti + filename[i];
			fArray.push(fnn);
			$('#product_img'+(i+1)).val(fnn);				
			console.log(fArray);
		}
		var pid = year + month + day + hours + minutes + seconds
		$('#product_id').val(pid);
		$('#image_h').val(fArray);
		console.log($('#image_h').val());
	} */
</script>
</head>
<body>

<h1>상품수정</h1>

     <form action="/admin/updatePro" method="post" >
     <input type="hidden" name="product_id" value="${pvo.product_id }"> 
       상품이름 <input type="text" name="product_name" value="${pvo.product_name }"><br>
       소제목 <input type="text" name="product_shortword" value="${pvo.product_shortword }"><br>
        짧은소개 <input type="text" name="product_subcontent" value="${pvo.product_subcontent }"><br>
         카테고리 <select name="product_category" id="product_category" onchange="change_tag()" >
         <option value="" selected="selected" hidden="hidden" value="${pvo.product_category }">${pvo.product_category }</option>
         <option value="호텔">호텔</option>
         <option value="리조트">리조트</option>
         <option value="펜션">펜션</option>
         <option value="모텔">모텔</option>
         <option value="게스트하우스">게스트하우스</option>
         <option value="캠핑">캠핑</option>
         <option value="맛집">맛집</option>
         <option value="패키지여행">패키지여행</option>
         <option value="티켓">티켓</option>
      </select><br>
      주소 <input type="text" name="product_address" value="${pvo.product_address }"><br>
       도시 <select name="product_city" id="product_city">
            <option value="" selected="selected" hidden="hidden" value= "${pvo.product_city}">${pvo.product_city}</option>
            <option value="서울">서울</option>
         <option value="대전">대전</option>
         <option value="대구">대구</option>
         <option value="부산">부산</option>
         <option value="울산">울산</option>
         <option value="인천">인천</option>
         <option value="광주">광주</option>
         <option value="제주">제주</option>
         <option value="경기도">경기도</option>
         <option value="강원도">강원도</option>
         <option value="충청도">충청도</option>
         <option value="전라도">전라도</option>
         <option value="경상도">경상도</option>
      </select><br>
      좌표x <input type="text" name="product_locationx" value="${pvo.product_locationx }"><br>
        좌표y <input type="text" name="product_locationy" value="${pvo.product_locationy }">  <br>
        <div style="display: inline-block;">
        	        이미지1<input type="file" name="product_img1" id="pro_image_file_name1" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지2<input type="file" name="product_img2" id="pro_image_file_name2" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지3<input type="file" name="product_img3" id="pro_image_file_name3" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지4<input type="file" name="product_img4" id="pro_image_file_name4" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지5<input type="file" name="product_img5" id="pro_image_file_name5" onchange="pro_readURL(this);" style="width: 190px"/>
        
        </div>
        <div style="display: inline-block;">
			<div class="preview" style="display: inline-block;">
				<img id="ppreview1" src="/resources/img/upload/${pvo.product_img1}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="ppreview2" src="/resources/img/upload/${pvo.product_img2}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="ppreview3" src="/resources/img/upload/${pvo.product_img3}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="ppreview4" src="/resources/img/upload/${pvo.product_img4}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="ppreview5" src="/resources/img/upload/${pvo.product_img5}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
		</div>
		<br>
		<input type="submit" value="상품수정하기"><br>
     </form> 
   <!-- 상세 상품 수정 ㄴ -->
   <hr>
   <h2>상품상세</h2>
	<c:forEach items="${dList}" var="dL">
		<span>객실이름 : <input type="text" name="pd_name" value="${dL.pd_name}"></span> 
		<br>
		 <div style="display: inline-block;">
        	        이미지1<input type="file" name="pd_img1" id="prod_image_file_name1" onchange="prod_readURL(this);" style="width: 190px"/>
        			이미지2<input type="file" name="pd_img2" id="prod_image_file_name2" onchange="prod_readURL(this);" style="width: 190px"/>
        			이미지3<input type="file" name="pd_img3" id="prod_image_file_name3" onchange="prod_readURL(this);" style="width: 190px"/>       
        </div>
        <div style="display: inline-block;">
			<div class="preview" style="display: inline-block;">
				<img id="dpreview1" src="/resources/img/upload/${dL.pd_img1}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="dpreview2" src="/resources/img/upload/${dL.pd_img2}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
			<div class="preview" style="display: inline-block;">
				<img id="dpreview3" src="/resources/img/upload/${dL.pd_img3}" width=250 height=250 alt="선택된 이미지가 없습니다" />
			</div>
		</div>
		<br>
		<span>객실가격 : <input type="text" name="pd_price" value="${dL.pd_price}"></span>
		<br>
		<span>객실설명 : <input type="text" name="pd_contents" value="${dL.pd_contents}"></span>
		<hr>
	</c:forEach>
</body>
</html>