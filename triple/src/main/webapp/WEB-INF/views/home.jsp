<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<html>
<head>
	<title></title>
</head>
<script type="text/javascript">

	const text2 = "네이버(http://www.naver.com)";
	console.log(text2.substring(text2.indexOf("(")+1,text2.indexOf(")")));
	
	function test() {
		var text3 = document.getElementById("divid").innerHTML;
		console.log(text3);
		console.log(text3.substring(text3.indexOf("resources/img/")+14,text3.indexOf("g\"")+1));
		var text4 = document.getElementById("divid").innerHTML;
		text4.replace(/resources/img/gi,"<div ><img src=\"resources/img")
		//text4.replace(/g\"/gi,"g\"></div>")
		console.log(text4);
	}
	
</script>
<body>
<h1>
	테스트용 jsp입니다 
</h1>
<%-- <table border="1">
	<c:forEach items="${testlist}" var="test">
		<tr>
			<td>${test.id12}</td>
			<td>${test.name12}</td>
		</tr>
	</c:forEach>
</table>
	<div id="divid"><c:out value="${testlist[0].name12}" escapeXml="false"></c:out></div>
	<p><c:out value="${testlist[1].name12}"></c:out></p>
	<div>
		<p>${testlist[1].name12}</p>
		<p>내용들이 나옴</p>
		<p>${testlist[1].name12}</p>
		<p>다시 내용들</p>
		<p>why?</p>
		<p >${testlist[0].name12}</p>
	</div> --%>
	<!-- resources/img/testimg.jpg"></div> -->
	<!-- <img src="resources/img/testimg.jpg"> -->
	
	<script type="text/javascript">
	function jjjtest() {
		//var jjj = document.getElementById("jtest").value
	//var jjj = ($('#jtest').innerHTML)
		//alert(jjj);
		//console.log(jjj);
		const element = document.getElementById('jtest');
		document.getElementById('name12').value = element.innerHTML;
		const jj2 = document.getElementById('name12');
		console.log(element.innerHTML);
		console.log(jj2);
	}
		
	</script>
	<button onclick="jjjtest()">ttttttt</button>
	<form method="post" action="write" onsubmit="jjjtest()">
		<input type="text" name="id12" id="id12">
		<div contentEditable="true" id="jtest">
			<p><p>${testlist[1].name12}</p></p>
		</div>
		<input type="hidden" name="name12" id="name12">
		<input type="submit" value="가자">
	</form>
</body>
</html>
