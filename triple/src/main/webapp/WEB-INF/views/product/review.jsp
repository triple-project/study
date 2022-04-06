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
</body>
</html>