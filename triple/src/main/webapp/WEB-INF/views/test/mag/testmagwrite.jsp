<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	var count = 0;
	var filename = new Array();
   function readURL(input) {
	   var file = input.files[0] //파일에 대한 정보
	   filename.push(file.name);
      console.log(file.name)
      if (file != '') {
         var reader = new FileReader();
         reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
         reader.onload = function (e) { // 파일 로드한 값을 표현한다
          //e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
            console.log(e)
            console.log(e.target)
            console.log(e.target.result)
           $('#preview'+count).attr('src', e.target.result);
         // 이미지 실험
            const element = document.getElementById('magwrite');
     	   // new div 생성
     	   const newImg = document.createElement('img');
     	   newImg.setAttribute("src",e.target.result);
     	   newImg.setAttribute("id","img"+(count++));	//이미지를 넣을때마다 식별가능한 id를 입력
     	   element.appendChild(newImg);
     	  const element2 = document.getElementById('writeform');
     	  const newInput = document.createElement('input');
     	 newInput.setAttribute("type","file");
     	  newInput.setAttribute("onchange","readURL(this);");
       	const newInput2 = document.createElement('img');
       	newInput2.setAttribute("src","#");
       	newInput2.setAttribute("id","preview"+count);
       	newInput2.setAttribute("width",100);
       	newInput2.setAttribute("height",100);
       	newInput2.setAttribute("alt","선택한게 없는걸?"); 
       	element2.appendChild(newInput);
       	element2.appendChild(newInput2);
          }
      }
  }


   function jjjtest() {
   	const element = document.getElementById('magwrite');
   	// for id 어디까지? var count 까지
   	// + file name 도 count까지
   	
   	 for (var i = 0; i < count; i++) {
   		var img = document.getElementById('img'+i);	//위에서 생성된 이미지의 id들
   		var fnn = filename[i]
   		img.setAttribute("src","resources/img/"+fnn)	//id별로 서버에 저장되는 img경로
   	} 
   	document.getElementById('mgz_content').value = element.innerHTML;
   	const jj2 = document.getElementById('mgz_content');
   	console.log(element.innerHTML);
   	console.log(jj2);
   	console.log(count)
   	 console.log(filename)
   }
   


   
</script>
<body>
	<h1>매거진 작성 페이지</h1>
	매거진은 사이트관리자가 게시할수있는 기능이지만
	생각한대로의 구현을 위해 미리 만드는중입니다.
	도시와 종류는 드롭박스형태로 선택하게 변경
	<p>이미지업로드시 내용div에 바로 보이게</p>
	<form action="writesave" onsubmit="jjjtest()" method="post" id="writeform" enctype="multipart/form-data">
	<!-- enctype="multipart/form-data" -->
		<input type="text" value="제목" name="mgz_title">
		<input type="text" value="소제목" name="mgz_smalltitle">
		<input type="text" value="도시" name="mgz_city">
		<input type="text" value="종류" name="mgz_category">
		<hr>
		<div contentEditable="true" id="magwrite" >
		<p>내용을 입력해주세요</p>
		</div> 
		<!-- <iframe src="test/mag/magiframe"></iframe> -->
		<hr>
		<b>이미지파일 첨부</b><br>
      	
      	<input type="hidden" name="mgz_content" id="mgz_content">
		<input type="submit" value="작성하기">
		<input type="file" id="image_file_name" name="image_file_name" onchange="readURL(this);" /> 
      	<img id="preview0" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
      	
	</form>
    <button onclick="jjjtest()">댐?</button>
    
</body>

</html>