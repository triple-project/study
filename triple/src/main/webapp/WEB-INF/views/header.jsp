<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header">
	<div class="header_in">
		<h1><a href="/">TRIPLE</a></h1>
		<div class="menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>

	<div class="header_ch">
		<div class="ch_in">
			<form action="" id="ch_form">
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
					<select name="" id="" >
						<option value="" selected="selected" hidden="hidden">여행상품 검색</option>
						<option value="모텔">모텔</option>
						<option value="펜션">펜션</option>
						<option value="풀빌라">풀빌라</option>
						<option value="호텔">호텔</option>
						<option value="게스트하우스">게스트하우스</option>
					</select>
				</div>
	
				<div class="ch_local ch_tot">
					<select name="" id="" >
						<option value="" selected="selected" hidden="hidden">여행지를 선택하세요</option>
						<option value="서울">서울</option>
						<option value="대전">대전</option>
						<option value="대구">대구</option>
						<option value="부산">부산</option>
						<option value="제주">제주</option>
					</select>
				</div>
	
				<div class="ch_search ch_tot">
					<select name="" id="" >
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
		<div class="menu_in">
			<div class="menu_top">
				<div class="close">
					<div class="close_btn">
						<span></span>
						<span></span>
					</div>
				</div>
			</div>

			<div class="menu_login">
				<div class="login_in">
					<div class="top">
						<a href="javascript:;">
							<h3>로그인/회원가입</h3>
						</a>
					</div>

					<div class="bottom">
						<ul>
							<li>
								<a href="javascript:;">
									<div class="num">
										<!-- jsp코드 -->
										<p></p>
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
										<p></p>
									</div>
									<div class="txt">
										<h4>공유 일정</h4>
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
									<div class="num">
										<!-- jsp코드 -->
										0
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

						<li>
							<a href="javascript:;">
								<h3>트리플 캐시</h3>
								<div class="l_wrap">
									<div class="num">
										<!-- jsp코드 -->
										0
										<span> 원</span>
									</div>
									<div class="arrow_btn">
										<i class="fa-solid fa-chevron-right"></i>
									</div>
								</div>
							</a>
						</li>

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
									<i class="fa-solid fa-comment-dots"></i>
								</div>

								<div class="txt">
									<h3>1:1 채팅</h3>
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
			<div class="img">
				<img src="resources/img/join/1.jpg" alt="">
			</div>

			<div class="info">
				<div class="info_in">

				</div>
			</div>
		</div>
	</div>