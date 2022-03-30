<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
<script type="text/javascript">
	function login() {
		if($("#remember_me").is(":checked") == true){
			$("#remember_me").val('on');
		}else {
			
		}
		$.ajax({
			url : "/login",
			type : "POST",
			dataType : "json",
			data : {
				mem_id : $("#mem_id").val(),
				mem_pw : $("#mem_pw").val(),
				remember_me : $("#remember_me").val()
			},
			
			success : function(response) {
				if (response.code == "200") {
					// 정상 처리 된 경우
					//window.location = response.item.url; //이전페이지로 돌아가기
					/* alert("됨?"); */
					sessionStorage.setItem("code2", response.item.login_id);
 					function alogc() {
						var c = sessionStorage.getItem("code2");
							/* document.getElementById("join").style.display = "none";
							 $("#header_ch").load(window.location.href+" #header_ch");  */
							/*   $("#header_in").load(window.location.href+" #header_in"); */
							 location.reload(); 
					}
					alogc(); 
					console.log(response);
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
		/* var c = sessionStorage.getItem("code2"); */
		var s = $("#sat").text();
		sessionStorage.setItem("code2", s);
		/* location.href = "/"+s; */
	}

	
	function logout() {
		sessionStorage.removeItem("code2");
		location.href="/logout";
	}
	
	function mtest() {
		var mt = "dd";
		console.log(mt);
		$.ajax({
			type : "POST",
			url : "/rest/info",
				dataType : "json",
				data : {
					mem_id : $("#sat").text()
				},
				success : function(data) {
	           		 // C에서 받아온 데이터로 새로 뿌려주기
					console.log(data);
					$("#heart_num").html(data.heart)
					$("#plan_num").html(data.plan)
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
</script>
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', { "pluginKey": "1e213c36-73e2-41d9-9cdb-722f2d2c697f" });
</script>
<!-- End Channel Plugin -->

<script type="text/javascript">
   function readURL(input) {
      var file = input.files[0] //파일에 대한 정보
      console.log(file)
      if (file != '') {
         var reader = new FileReader();
         reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
         reader.onload = function (e) { // 파일 로드한 값을 표현한다
          //e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
            console.log(e)
            console.log(e.target)
            console.log(e.target.result)
           $('#preview').attr('src', e.target.result);
          }
      }
  }  
</script>
<script type="text/javascript">
   function amu() {
      //const a = $('#img').val();
      //console.log(a);
      var fileValue = $("#image_file_name").val().split("\\");
      var fileName = fileValue[fileValue.length-1]; // 파일명
      console.log(fileName);
      const a = $('#img_h').val(fileName);
      console.log(a);
   }
</script>

<header id="header">
	<div class="header_in" id="header_in">
		<h1><a href="/">TRIPLE</a></h1>
		<security:authorize access="isAnonymous()">
		<div class="menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
		</security:authorize>
		<security:authorize access="isAuthenticated()">
		<div class="menu" onclick="mtest()">
			<span></span>
			<span></span>
			<span></span>
		</div>
		</security:authorize>
	</div>

	<div class="header_ch" id="header_ch">
		<div class="ch_in">
			<form action="/top_search" id="ch_form" method="post">
				<div class="ch_title">
					<h2>Triple 트리플</h2>
					<div class="tit_cover"></div>
				</div>

				<div class="ch_btn">
					<div class="btn" onclick="$('#ch_form').submit()">
						<i class="fa-solid fa-magnifying-glass"></i>
					</div>
				</div>

				<div class="ch_context ch_tot">
					<select name="cate_search" id="cate_search">
						<option value="전체" selected="selected" hidden="hidden">여행상품 검색</option>
						<option value="전체">전체</option>
						<option value="호텔">호텔</option>
						<option value="리조트">리조트</option>
						<option value="펜션">펜션</option>
						<option value="모텔">모텔</option>
						<option value="게스트하우스">게스트하우스</option>					
						<option value="캠핑">캠핑</option>
						<option value="맛집">맛집</option>
						<option value="패키지여행">패키지여행</option>
						<option value="티켓">티켓</option>
					</select>
				</div>

				<div class="ch_local ch_tot">
					<select name="city_search" id="city_search">
						<option value="전체" selected="selected" hidden="hidden">여행지를 선택하세요</option>
						<option value="전체">전체</option>
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
					</select>
				</div>

				<div class="ch_search ch_tot">
					<select name="main_search" id="main_search">
						<option value="여행지 검색">여행지 검색</option>
						<option value="매거진 검색">매거진 검색</option>
					</select>
				</div>

				<!-- <div class="ch_date">
					<label>
						<input id="range" mbsc-input placeholder="여행날짜를 선택해주세요." readonly/>
					</label>
				</div> -->
			</form>
		</div>
	</div>
</header>

<div id="cover"></div>
<div id="s_menu">
	<div class="menu_in" id="menu_in">
		<div class="menu_top">
			<div class="close">
				<div class="close_btn">
					<span></span>
					<span></span>
				</div>
			</div>
		</div>

		<div class="menu_login" id="menu_login">
			<div class="login_in">
				<security:authorize access="isAnonymous()">
					<div class="top" id="ml_top">
						<a href="javascript:;">
							<h3>로그인/회원가입</h3>
						</a>
					</div>
				</security:authorize>
				
				<security:authorize access="isAuthenticated()">
					<div class="top2" id="ml_top2">
						<a href="javascript:;">
							<h3 id="sat"><security:authentication property="principal.username"/></h3>
							<h3>님 반갑습니다.</h3>
						<img alt="" src="">
						</a>
						<p onclick="logout()">로그아웃</p>
					</div>
				</security:authorize>

				<div class="bottom">
					<ul>
						<li>
							<a href="javascript:;">
								<div class="num">
									<!-- jsp코드 -->
									<security:authorize access="isAnonymous()">
									<p></p>
									</security:authorize>
									<security:authorize access="isAuthenticated()">
									<span id="plan_num"></span>
									</security:authorize>
								</div>
								<div class="txt">
									<h4>내 여행</h4>
								</div>
							</a>
						</li>

						<li>
							<a href="javascript:;">
								<div class="num">
									<!-- jsp코드 -->
									<p></p>
								</div>
								<div class="txt">
									<h4>리뷰</h4>
								</div>
							</a>
						</li>

						<li>
							<a href="javascript:;">
								<div class="num">
									<!-- jsp코드 -->
									<img id="wicon" src="">
								</div>
								<div class="txt">
									<h4 class="wb_r">날씨 : </h4><h4 id="wename"></h4>
								</div>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="list_menu">
			<div class="l_menu_in">
				<ul>
					<li>
						<a href="javascript:;">
							<h3>내 저장</h3>
							<div class="l_wrap">
								<div class="num" id="heart_num">
									<!-- jsp코드 -->
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<h3>내 예약</h3>
							<div class="l_wrap">
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<h3>쿠폰함</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> 개</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>

					<!-- <li>
						<a href="javascript:;">
							<h3>트리플 캐시</h3>
							<div class="l_wrap">
								<div class="num">
									jsp코드
									0
									<span> 원</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li> -->

					<li>
						<a href="javascript:;">
							<h3>여행자 클럽</h3>
							<div class="l_wrap">
								<div class="num">
									<!-- jsp코드 -->
									0
									<span> P</span>
								</div>
								<div class="arrow_btn">
									<i class="fa-solid fa-chevron-right"></i>
								</div>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="padding"></div>

		<div class="tip">
			<div class="tip_in">
				<ul>
					<li>
						<a href="javascript:;">
							<div class="img">
								<i class="fa-solid fa-bullhorn"></i>
							</div>

							<div class="txt">
								<h3>공지사항</h3>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<div class="img">
								<i class="fa-solid fa-book"></i>
							</div>

							<div class="txt">
								<h3>오프라인가이드</h3>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<div class="img">
								<i class="fa-solid fa-user"></i>
							</div>

							<div class="txt">
								<h3>회원정보수정</h3>
							</div>
						</a>
					</li>

					<li>
						<a href="javascript:;">
							<div class="img">
								<i class="fa-solid fa-headset"></i>
							</div>

							<div class="txt">
								<h3>고객센터</h3>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="menu_pop">
			<div class="pop_in">
				<div class="pop_slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide img1"><a href="1"></a></div>
						<div class="swiper-slide img2"><a href="2"></a></div>
						<div class="swiper-slide img3"><a href="3"></a></div>
						<div class="swiper-slide img4"><a href="4"></a></div>
						<div class="swiper-slide img5"><a href="5"></a></div>
						<div class="swiper-slide img6"><a href="6"></a></div>
						<div class="swiper-slide img7"><a href="7"></a></div>
					</div>
					<div class="swiper-pagination pop_pagi"></div>
				</div>
			</div>
		</div>

	</div>
</div>

<div id="join_cover1"></div>
<div id="join_cover2"></div>
<div id="join">
	<div class="join_in">
		<!-- <div class="img">
			<img src="resources/img/join/1.jpg" alt="">
		</div> -->
		<div class="login_layout">
			<div class="login_form">
				<div class="form_in">
					<h3>
					
					</h3>
					<div class="login_frame1">
						<form action="login" method="post" id="login">
							<div class="login_in">
								<div class="login_id_input id_pw_input">
									<span>아이디</span>
									<input type="text" name="mem_id" id="mem_id" placeholder="아이디" autofocus>
								</div>
								<div class="login_pw_input id_pw_input">
									<span>비밀번호</span>
									<input type="password" name="mem_pw" id="mem_pw"  placeholder="패스워드">
								</div>
							</div>
							<div class="login_btn">
								<input type="button" onclick="login()" value="로그인">
							</div>
							<!-- 이안에 체크박스? -->
						</form>
					</div>
					<div class="login_frame2">
						<div class="login_frame2_in">
							<span>자동로그인</span>
							<input type="checkbox" name="remember_me" id="remember_me" value="off">
							<div class="join_info">
								<P><a href="javascript:;">아이디/비밀번호 찾기</a></P>
								<P><a href="javascript:;" id="gotombs">회원가입</a></P>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div class="info">
			<div class="info_in">

			</div>
		</div>
	</div>
</div>

	 <div id="join_mbs">
      <div class="join_mbs_in">
         <h3>회원가입</h3>
         <div class="mbs_form">
            <form id="mbs" method="post" enctype="multipart/form-data" action="/join" onsubmit="amu()">
               <div class="mbs_id mbs_con mbs_id_pw">
                  <span>아이디</span>
                  <input type="text" name="mem_id" placeholder="아이디 입력">
               </div>
               <div class="mbs_pw1 mbs_con">
                  <span>비밀번호</span>
                  <input type="password" name="mem_pw" id="pw1" placeholder="비밀번호 입력">
               </div>
               <div class="mbs_pw2 mbs_con mbs_id_pw">
                  <span>비밀번호 확인</span>
                  <input type="password" name="mem_pw2" id="pw2" placeholder="비밀번호 확인">
                  <p class="pwMsg_ok">비밀번호가 맞습니다.</p>
                  <p class="pwMsg_no">비밀번호가 틀립니다.</p>
                  <p id="pwMsg" class="at">비밀번호 를 입력해주세요.</p>
               </div>
               <div class="email">
                  <span>이메일</span>
                  <input type="text" name="e_mail" placeholder="메일주소 클릭해서 맞춰주세요">
                  <select name="" id="">
                     <option value="@naver.com">@naver.com</option>
                     <option value="@daum.net">@daum.net</option>
                     <option value="@google.com">@google.com</option>
                     <option value="@nate.com">@nate.com</option>
                  </select>
               </div>
               <div class="mbs_name mbs_con">
                  <span>이름</span>
                  <input type="text" name="name" placeholder="이름 입력">
               </div>
               <div class="mbs_phone mbs_con">
                  <span>전화번호</span>
                  <input type="text" name="tel" placeholder="전화번호 입력">
               </div>
               <div class="mbs_profile">
                  <div class="profile_frame1">
                     <div class="frame1_1">
                        <span>프로필</span>
                        <!-- <input type="text" name="mem_img" placeholder="사진은 꼭 안넣으셔도 됩니다."> -->
                        <input type="file" name="image_file_name" id="image_file_name" onchange="readURL(this);" /> 
                        <input type="hidden" name="mem_img" id="img_h">
                        </div>
                     <!-- <div class="frame1_2">
                        <p>기본 프로필 사용</p>
                        <input type="checkbox" name="">
                     </div> -->
                  </div>
                  <div class="profile_frame2">
                     <div class="preview">
                           <img id="preview" src="#" width=100 height=100 alt="선택된 이미지가 없습니다" />
                     </div>
                  <!--    <span></span> -->
                  </div>
               </div>
               <div class="mbs_btn">
                  <div class="mbs_btn_rt mbs_btn_frame" id="backtologin">
                     뒤로가기
                     <!-- <input type="submit" value="뒤로가기" id="backtologin"> -->
                  </div>
                  <div class="mbs_btn_join mbs_btn_frame" onclick="$('#mbs').submit()">
                     회원가입 
                  </div>
               </div>
            </form>
         </div>
      </div>
   </div>