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
	


	function ups() {
		
		//이미지이름
		var today = new Date();
		var year = today.getFullYear();
		var month = ('0' + (today.getMonth() + 1)).slice(-2);
		var day = ('0' + today.getDate()).slice(-2);
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var fArray = new Array();
		for (var i = 0; i < 5; i++) {
			var pfile = $('#pro_image_file_name'+(i+1));
			var ti = hours + minutes + seconds;

			console.log(pfile.val());
			if (!pfile.val()) {
				//파일이 없다면
				
			}else {
				//파일이 들어있다면
				var fileValue = $("#pro_image_file_name"+(i+1)).val().split("\\");
				var fileName = fileValue[fileValue.length - 1]; // 파일명
				var fnh = ti+i+fileName;
				$('#product_img' + (i + 1)).val(fnh);
				fArray.push(fnh);
				$("#img_name_up").val(fArray);
				console.log(fArray);
			}
			

		}

	}
	
	function fd(data) {
		location.href="/admin/updateProD/"+data.name;
	}
	
	

</script>
</head>
<body>

<h1>상품수정</h1>

<!-- <button onclick="ups()">테스트</button> -->

     <form action="/admin/updatePro" method="post" enctype="multipart/form-data" onsubmit="ups()">
     <input type="hidden" name="product_id" value="${pvo.product_id }"> 
       상품이름 <input type="text" name="product_name" value="${pvo.product_name }"><br>
       소제목 <input type="text" name="product_shortword" value="${pvo.product_shortword }"><br>
        짧은소개 <input type="text" name="product_subcontent" value="${pvo.product_subcontent }"><br>
         카테고리 <select name="product_category" id="product_category" onchange="change_tag()" >
         <option  selected="selected" hidden="hidden" value="${pvo.product_category }">${pvo.product_category }</option>
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
            <option selected="selected" hidden="hidden" value= "${pvo.product_city}">${pvo.product_city}</option>
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
        	        이미지1<input type="file" name="aproduct_img1" id="pro_image_file_name1" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지2<input type="file" name="aproduct_img2" id="pro_image_file_name2" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지3<input type="file" name="aproduct_img3" id="pro_image_file_name3" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지4<input type="file" name="aproduct_img4" id="pro_image_file_name4" onchange="pro_readURL(this);" style="width: 190px"/>
        			이미지5<input type="file" name="aproduct_img5" id="pro_image_file_name5" onchange="pro_readURL(this);" style="width: 190px"/>
        
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
		<input type="hidden" name="product_img1" id="product_img1" value="${pvo.product_img1}">
		<input type="hidden" name="product_img2" id="product_img2" value="${pvo.product_img2}">
		<input type="hidden" name="product_img3" id="product_img3" value="${pvo.product_img3}">
		<input type="hidden" name="product_img4" id="product_img4" value="${pvo.product_img4}">
		<input type="hidden" name="product_img5" id="product_img5" value="${pvo.product_img5}">
		<input type="hidden" name="img_name_up" id="img_name_up">
		
		<input type="submit" value="상품수정하기"><br>
     </form> 
   <hr>
   <h2>태그수정</h2>

	<div class="pftag pf_com">
		<div id="tag_div">
			<!-- <button onclick="tag_p()">태그추가</button> -->
			<div class="tag_box" onclick="tag_p()">
				<i class="fa-solid fa-tag"></i>
			</div>
			<!-- <div class="tag_frame"></div> -->
			<div id="tag_frame"></div>
			<div class="tag_del" onclick="tagdelete()">
				<i class="fa-solid fa-xmark"></i>
			</div>
		</div>
	</div>
	<c:set var="i" value="0"/>
	<form action="/admin/updatetag" method="post"  onsubmit="at()">
		<div id="tf">
		<c:forEach items="${tList}" var="tl">  		
   			<select id="utp${i}">
   				<option value="${tl.tag_tag}" selected="selected">${tl.tag_tag}</option>
		   		<c:forEach items="${tcl}" var="t">
		   			<option value="${t.tag_name}">${t.tag_name}</option>
		   		</c:forEach>
		   		<option value="삭제하기">삭제하기</option>
	   		</select>
	   	<c:set var="i" value="${i+1}"/>
	   	</c:forEach>
	   	</div>
	   	<div onclick="newt()">태그추가</div>
	   	<input type="hidden" name="utag" id="utag">
	   	<input type="submit" value="수정하기">
	   	<input type="hidden" value="${pvo.product_id}" name="tpid">
   	</form>
   	<script type="text/javascript">
   	var ti = '<c:out value="${i}"/>';
   	const tj = '<c:out value="${i}"/>';
   	function newt() {
		
		console.log(ti);
		if (ti >= 5) {
			alert("5개까지 추가가능!");
		}else{
			$.ajax({
				url : "/rest/tagList",
				dataType : "json",
				type : "POST",
				data : {
					tag_cate : "${stc}"
				},
				success : function(data) {
						//오브젝트값 포문으로 뽑아내기
						arr = [];
						$("#tag_cate_h").val(Object.keys(data));
						for (var i = 0; i < (data[Object.keys(data)]).length; i++) {
							//console.log(data[Object.keys(data)][i]);
							arr.push(data[Object.keys(data)][i]);							
						}
						console.log(arr);
						var tdl = $('#tf');
						tdl.append('<select id="utp'+ti+'">');
	    				var d = $('#utp'+ti);
	    				for (var i = 0; i < arr.length; i++) {	    					
	    					d.append("<option>"+arr[i]+"</option>");
	    				}
	    				d.append("<option>삭제하기</option>");
	    				ti++
				}
			})
			
		}
	}
   	
   	var tuarr = [];
   	function at() {
   		for (var j = 0; j < ti; j++) {
			var tost = $('#utp'+j).val();
			tuarr.push(tost);
			//console.log(tuarr[j]);
			//console.log(tost);
		}
   		console.log(tuarr);
		$('#utag').val(tuarr);
	}
   	</script>
	<button onclick="at()">테스트</button>
   <!-- 상세 상품 수정 ㄴ -->
   <hr>
   <h2>상품상세</h2>
	<c:forEach items="${dList}" var="dL">
		<span>상세명 : ${dL.pd_name}</span> <button onclick="fd(this)" name="${dL.pd_id}">수정하기</button>
	</c:forEach>
	
</body>
</html>