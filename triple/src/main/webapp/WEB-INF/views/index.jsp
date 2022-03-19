<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>Document</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="resources/css/common.css">
	<link rel="stylesheet" href="resources/css/main.css">
	

	<script src="resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="resources/js/main.js"></script>
	

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body>
	
	
	<%@ include file="header.jsp"%>

	<section id="sec">
		<div class="main">
			<div class="main_ch">
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
					<div class="left on">
						<h2>
							<a href="javascript:;">항공권</a>
						</h2>
					</div>

					<div class="right">
						<h2><a href="javascript:;">기차표</a></h2>
					</div>
				</div>

				<div class="about_tab">
					<div class="tab_in tab">
						<div class="wrap">

						</div>
					</div>

					<div class="tab_in tab">
						<div class="wrap">

						</div>
					</div>
				</div>

				<!-- <div class="about_icon">
					<div class="icon_in">
						<ul>
							<li class="icon_t">
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/1.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>제주 여행</h3>
									</div>
								</a>
							</li>

							<li class="icon_t">
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/3.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>항공권</h3>
									</div>
								</a>
							</li>

							<li class="icon_t">
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/5.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>호텔 / 리조트</h3>
									</div>
								</a>
							</li>

							<li class="icon_t">
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/7.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>펜션 / 풀빌라</h3>
									</div>
								</a>
							</li>

							<li class="icon_t">
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/9.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>투어 / 티켓</h3>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/2.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>여행 매거진</h3>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/4.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>혜택 / 렌터카</h3>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/6.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>특가 항공권</h3>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/8.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>부티크 / 모텔</h3>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="img">
										<img src="img/icon/10.jpg" alt="이미지">
									</div>
									
									<div class="txt">
										<h3>특가 숙소</h3>
									</div>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div> -->

		<div class="category">
			<div class="gory_in">
				<div class="gory_txt">
					<h2>국내여행 카테고리</h2>
				</div>

				<div class="gory_con">
					<div class="con_in">
						<ul>
							<li class="li1">
								<a href="">
									<div class="img"></div>
									<div class="cover">
										<h2>펜션/캠핑</h2>
									</div>
									<h2>펜션/캠핑</h2>
								</a>
							</li>

							<li class="li2">
								<a href="">
									<div class="img"></div>
									<div class="cover">
										<h2>호텔/리조트</h2>
									</div>
									<h2>호텔/리조트</h2>
								</a>
							</li>

							<li class="li3">
								<a href="">
									<div class="img"></div>
									<div class="cover">
										<h2>티켓/패스</h2>
									</div>
									<h2>티켓/패스</h2>
								</a>
							</li>

							<li class="li4">
								<a href="">
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
	
	<%@ include file="footer.jsp"%>