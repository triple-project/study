<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  .star {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .star span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
</style>
<script src="/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	 const drawStar = (target) => {
		var ss = target.value*10;
		console.log(target.value*10);
		$('#star_r').css('width',ss+'%')
	    //document.querySelector('.star span').style.width = '${target.value*10}%';
		
	  } 

</script>
</head>
<body>
   <form method="post" action="review">
      댓글 <input type="text" id="comment" name="comment">
      별점<input type="text" id="star_ranking" name="star_ranking">
      이미지1<input type="file" id= "r_img1" name="r_img1">
      이미지2<input type="file" id= "r_img2" name="r_img2">
      이미지3<input type="file" id= "r_img3" name="r_img3">
      
      <input type="submit" value="리뷰등록" > 
      <input type="reset" value="취소">
   </form>
   <hr>
   <table border="1">
      <c:forEach items="${reviewList}" var="re">
      <tr>
         <td>${re.mem_id}</td>
         <td>${re.comment}</td>
         <td>${re.star_ranking}</td>
         <td>${re.r_img1}</td>
         <td>${re.r_img2}</td>
         <td>${re.r_img3}</td>
      </tr>
   </c:forEach>
   </table>
   <hr>
   
<span class="star">
  ★★★★★
  <span id="star_r" >★★★★★</span>
  <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10">
</span>


</body>
</html>