<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/main.css">
	

	<script src="resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="resources/js/mobiscroll.jquery.min.js"></script>
	<script src="resources/js/main.js"></script>
	

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

</head>
<body>
	<!-- <iframe src="https://service.dongledongle.com/triple" frameborder="0" width="100%" height="500" id="cht"></iframe> -->
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


		</div>
	</div>

	<header id="header">
		<h1><a href="index.html">TRIPLE</a></h1>
		<div class="menu">
			<span></span>
			<span></span>
			<span></span>
		</div>
	</header>

	<section id="sec">
		<div class="main">
			<div class="main_ch">
				<div class="ch_in">
					<form action="">
						<div class="ch_title">
							<h2>여행지검색</h2>
						</div>

						<div class="ch_local">
							<select name="" id="" >
								<option value="" selected="selected" hidden="hidden">여행지를 선택하세요</option>
								<option value="서울">서울</option>
								<option value="대전">대전</option>
								<option value="대구">대구</option>
								<option value="부산">부산</option>
								<option value="제주">제주</option>
							</select>
						</div>

						<div class="ch_date">
							<label>
								<input id="range" mbsc-input placeholder="여행날짜를 선택해주세요." readonly/>
							</label>
						</div>

						<div class="ch_p">

						</div>

						<div class="ch_btn">

						</div>
					</form>
				</div>
			</div>

			<div class="main_slide">
				<div class="main_slider">
					<div class="swiper-wrapper">
						<div class="swiper-slide img1"><a href="1"></a></div>
						<div class="swiper-slide img2"><a href="2"></a></div>
						<div class="swiper-slide img3"><a href="3"></a></div>
						<div class="swiper-slide img4"><a href="4"></a></div>
					</div>
					<div class="swiper-pagination main_pagi"></div>
					<div class="slide_cover"></div>
				</div>
			</div>
		</div>

		<div class="about">
			<div class="about_in">
				<div class="txt">
					<h2>그리웠던 여행</h2>
					<h2>트리플로 준비하세요.</h2>
				</div>
				
				<div class="about_btn">
					<div class="left">
						<h2>항공권</h2>
					</div>

					<div class="right">
						<h2>기차표</h2>
					</div>
				</div>

				<div class="about_icon">

				</div>
			</div>
		</div>

		<div class="category">
			<div class="gory_in">
				<div class="gory_txt">
					<h2>국내여행 카테고리</h2>
				</div>

				<div class="gory_con">
					<div class="con_in">
						<ul>
							<li class="li1">
								<a href="testview/펜션">
									<div class="img"></div>
									<div class="cover">
										<h2>펜션</h2>
									</div>
									<h2>펜션</h2>
								</a>
							</li>

							<li class="li2">
								<a href="testview/호텔">
									<div class="img"></div>
									<div class="cover">
										<h2>호텔</h2>
									</div>
									<h2>호텔</h2>
								</a>
							</li>

							<li class="li3">
								<a href="testview/티켓">
									<div class="img"></div>
									<div class="cover">
										<h2>티켓/패스</h2>
									</div>
									<h2>티켓/패스</h2>
								</a>
							</li>

							<li class="li4">
								<a href="testview/렌터카">
									<div class="img"></div>
									<div class="cover">
										<h2>렌터카</h2>
									</div>
									<h2>렌터카</h2>
								</a>
							</li>

							<li class="li5">
								<a href="">
									<div class="img"></div>
									<div class="cover">
										<h2>패키지여행/항공</h2>
									</div>
									<h2>패키지여행/항공</h2>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="hot">
			<div class="hot_in">
				<div class="hot_txt">
					<h2>인기트립</h2>
				</div>

				<div class="list">
					<div class="list_in">
						<ul>
							<li>
								<a href="javascript:;">
									<div class="content">

									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">

									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content">
										
									</div>
								</a>
							</li>
						</ul>

						<div class="hot_btn">
							<a href="javascript:;">
								<h2>인기트립 더보기</h2>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="event">
			<div class="event_in">
				<div class="img">
					<form action="">
						<div class="form_in">
							<input type="text" placeholder="이메일 주소를 입력하세요" class="email">
							<input type="submit" value="시작해보세요" class="btn">
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<div class="con_slide">
			<div class="con_txt">
				<h2>트리플 최저가 예약</h2>
			</div>

			<div class="con_slider">
				<div class="swiper-wrapper">
					<div class="swiper-slide img1">
						<a href="1">
							<h3>테스트</h3>
						</a>
					</div>
					<div class="swiper-slide img2"><a href="2"></a></div>
					<div class="swiper-slide img3"><a href="3"></a></div>
					<div class="swiper-slide img4"><a href="4"></a></div>
					<div class="swiper-slide img5"><a href="5"></a></div>
					<div class="swiper-slide img6"><a href="6"></a></div>
					<div class="swiper-slide img7"><a href="7"></a></div>
					<div class="swiper-slide img8"><a href="8"></a></div>
				</div>
			</div>
		</div>

		<div class="con_slide con2">
			<div class="con_txt">
				<h2>트리플 추천순위</h2>
			</div>

			<div class="con_slider con_slider2">
				<div class="swiper-wrapper">
					<div class="swiper-slide img1">
						<a href="1">
							<h3>테스트</h3>
						</a>
					</div>
					<div class="swiper-slide img2"><a href="2"></a></div>
					<div class="swiper-slide img3"><a href="3"></a></div>
					<div class="swiper-slide img4"><a href="4"></a></div>
					<div class="swiper-slide img5"><a href="5"></a></div>
					<div class="swiper-slide img6"><a href="6"></a></div>
					<div class="swiper-slide img7"><a href="7"></a></div>
					<div class="swiper-slide img8"><a href="8"></a></div>
				</div>
			</div>
		</div>
	</section>

	<footer id="footer">
		<div class="footer_in">
			<ul>
				<li>주식회사 트리플</li>
				<li>대표 김연정, 최휘영</li>
				<li>사업자 등록번호 581-87-00266</li>
				<li>통신판매 신고번호 2017-성남분당-0275</li>
				<li>경기도 성남시 분당구 판교역로 14번길 16, 3층</li>
				<li>항공, 숙소 및 투어 티켓문의 1588-2539</li>
				<li>(주)트리플은 통신판매중개자로서 통신판매의 당사자가 아니며 상품거래정보 및 거래 등에 대해 책임을 지지 않습니다.</li>
				<li><a href="#">서비스 이용약관</a></li>
				<li><a href="#">개인정보 처리방침</a></li>
				<li><a href="#">회사 소개</a></li>
			</ul>
		</div>
	</footer>

	
</body>
</html>