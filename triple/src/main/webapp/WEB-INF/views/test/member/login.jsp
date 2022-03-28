<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	function login() {
		$.ajax({
			url : "/login",
			type : "POST",
			dataType : "json",
			data : {
				mem_id : $("#mem_id").val(),
				mem_pw : $("#mem_pw").val()
			},
			
			success : function(response) {
				if (response.code == "200") {
					// 정상 처리 된 경우
					//window.location = response.item.url; //이전페이지로 돌아가기
					alert("됨?");
					sessionStorage.setItem("code2", response.item.login_id);
					function alogc() {
						var c = sessionStorage.getItem("code2");

							document.getElementById("a_id1").innerHTML = '';
							document.getElementById("a_id2").innerHTML = c + '님 반갑습니다';
							document.getElementById("a_id1").style.display = "none";
							document.getElementById("a_id2").style.display = "block";

							document.getElementById("r_1").style.display = "block";
							document.getElementById("r_1").setAttribute("onclick", "logout()");
							document.getElementById("r_1").innerHTML = '로그아웃';
					}
					alogc();
					console.log(response)
				} else {
					alert(response.message);
				}
			},
			error : function(a, b, c) {
				console.log(a, b, c);
				alert("아이디 혹은 비밀번호를 확인하세요");
			}

		})

	}
	
	window.onload = function () {
		var c = sessionStorage.getItem("code2");
		if (!c) {
			c = "";
			document.getElementById("a_id1").innerHTML = '로그인을 해주세요';
			document.getElementById("a_id2").innerHTML = '';
			document.getElementById("a_id1").style.display = "block";
			document.getElementById("a_id2").style.display = "none";
		} else {
			document.getElementById("a_id1").innerHTML = '';
			document.getElementById("a_id2").innerHTML = c + '님 반갑습니다';
			document.getElementById("a_id1").style.display = "none";
			document.getElementById("a_id2").style.display = "block";

			document.getElementById("r_1").style.display = "block";
			document.getElementById("r_1").setAttribute("onclick", "logout()");
			document.getElementById("r_1").innerHTML = '로그아웃';
		}
	}
	
	function logout() {
		sessionStorage.removeItem("code2");
		//document.getElementById("r_1").style.display = "none";
		window.location.reload()
	}
</script>
</head>
<body>
	<form action="login" method="post" id="ajl">
	아이디 : <input type="text" name="mem_id" id="mem_id">
	비밀번호 : <input type="password" name="mem_pw" id="mem_pw">
	<input type="submit" value="확인">
	<input type="button" value="ajax테스트" onclick="login()">
	</form>

	<a href="tj">회원가입</a>
	<hr>
	<div class="right_tap">
		<ul>
			<li id="a_id1"></li>
			<li id="a_id2"></li>
			<li id=r_1 style="display: none"></li>
		</ul>
	</div>


</body>
</html>