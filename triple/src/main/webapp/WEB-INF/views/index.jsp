<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=1300">
	<title>Document</title>
	<link rel="stylesheet" href="resources/css/reset.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
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
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="resources/js/mobiscroll.jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
	<script src="resources/js/main.js"></script>
	
	<link rel="shortcut icon" href="#">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
	<script type="text/javascript">
		function bcate(data) {
			var bdata = data.children.item(1).innerText;
			location.href="/cate_button/"+bdata;
		}
	</script>
</head>
<body>
	
	
	<%-- <%@ include file="header.jsp"%> --%>
	<jsp:include page="header.jsp" flush="true"/>
	
	<section id="sec">
		<div class="main">
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
			</div>
		</div>



		<div class="swiper kcategory">
			<div class="kcategory_head">
				<div class="kcategory_text">
					<h2>국내여행 카테고리</h2>
					<div class="kcategorybtn">
						<div class="kcategorybtn1 kcategorybtn_com">
							<i class="fa-solid fa-angle-left"></i>
						</div>
						<div class="kcategorybtn2 kcategorybtn_com">
							<i class="fa-solid fa-angle-right"></i>
						</div>
					</div>
				</div>
			</div>
			<div class="swiper-wrapper">
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg1"></div>
					<p>호텔</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg2"></div>
					<p>리조트</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg3"></div>
					<p>펜션</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg4"></div>
					<p>모텔</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg5"></div>
					<p>게스트하우스</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg6"></div>
					<p>캠핑</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg7"></div>
					<p>맛집</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg8"></div>
					<p>패키지여행</p>
				</div>
				<div class="swiper-slide" onclick="bcate(this)">
					<div class="kimg9"></div>
					<p>티켓</p>
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
									<%-- <div class="content" style="background: url('../../resources/img/<%=${.product_img1}%>.jpg');"></div> --%>
									<div class="content" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<%-- <<p>${.product_name}</p> --%>
												<%-- <p>${.product_swordword}</p> --%>
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<%-- <p>${.heart_id}</p> --%>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>


							<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/jeju.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>


<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/bobopool.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/chosun3.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>
							
							<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/jeju13.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/jeju5.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>


<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/pool2.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/baenewgi.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
									</div>
								</a>
							</li>

							<li>
								<a href="javascript:;">
									<div class="content" style="background: url('../../resources/img/uban1.jpg') no-repeat 50% 50%;background-size: cover;">
										<div class="contentheadcover">
											<div class="contenthead">
												<p>우리집이였으면 좋겟다</p>
												<p>바다가 잘보이고 집에서 가까운 호텔</p>
											</div>
										</div>
										<!-- <img src="../../resources/img/jeju.jpg" /> -->
										<div class="contentfootercover">
											<div class="contentfooter">
												<div class="contentheart">
													<p><i class="fa-solid fa-heart"></i></p>
													<p>100</p>
												</div>
											</div>
										</div>
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

			<div class="lowprice_slider">
				<div class="swiper-wrapper">
				
					<div class="swiper-slide img1">
						<a href="1">
							<div class="lowprice_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="lowprice_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.price}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>10,000</p>
								</div>
							</div>
						</a>
					</div>
					
					<div class="swiper-slide img2">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/bobopool.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					<div class="swiper-slide img3">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/chosun3.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					<div class="swiper-slide img4">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/jeju.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
										
					<div class="swiper-slide img5">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/jeju13.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					<div class="swiper-slide img6">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/jeju5.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					
					<div class="swiper-slide img7">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/pool2.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					<div class="swiper-slide img8">
						<a href="1">
							<div class="lowprice_in">
								<div class="lowprice_img" style="background: url('../../resources/img/uban1.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="lowprice_text">
									<p>제목</p>
									<p>가격</p>
								</div>
							</div>
						</a>
					</div>
					
					
					
				</div>
			</div>
		</div>



		<div class="con_slide con2">
			<div class="con_txt">
				<h2>트리플 추천순위</h2>
			</div>

			<div class="unknown_slider">
				<div class="swiper-wrapper">
				
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
									
					<div class="swiper-slide img1">
						<a href="1">
							<div class="unknown_in">
								<%-- <div class="lowprice_img" style="background-image: url('../../resources/img/<%=${.product.img1%>.jpg') no-repeat <%= {}%> 50%;;"></div> --%>
								<div class="unknown_img" style="background: url('../../resources/img/baenewgi.jpg') no-repeat 50% 50%;background-size: cover;"></div>
								<div class="unknown_text">
									<%-- <p>${.product.name}</p> --%>
									<%-- <p>${.product.}</p> --%>
									<p>우리집 거실 사진 찍어봄봄봄봄봄봄봄봄봄</p>
									<p>unknown</p>
								</div>
							</div>
						</a>
					</div>
					

				</div>
			</div>
		</div>
			
	</section>
	
	<%@ include file="footer.jsp"%>
</body>
</html>