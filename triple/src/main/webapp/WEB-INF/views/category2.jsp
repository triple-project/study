<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1300">
    <title>Triple</title>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/category.css">

    <script src="/resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="/resources/js/mobiscroll.jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
    <script src="/resources/js/main.js"></script>
    <script src="/resources/js/category.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
	
	<script type="text/javascript">
		function result4(data) {
			var mid = data.children.item(0).id;
			location.href="/mv/"+mid;
		}
		
		
	</script>
</head>

<body>

    <%@ include file="header.jsp"%>

    <section id="sec">
        <div class="cate">
            <div class="cate_in">
                <div class="txt">
                    <h2>${main_search}</h2>
                </div>

                <div class="con">
                    <div class="con_in">
                        <div class="list">
                            <div class="list_in">
                                <div class="list_txt">
                                    <h2>${city_search}지역</h2>
                                    <h2>${cate_search}</h2>
                                </div>
								<!-- ps에서처리 -->
                                <div class="list_con" style="display: none;">
                                    <div class="con_txt">추천도, 즐겨찾기 순</div>
                                    <div class="list_con_in">
                                        <div class="hart_list list_slider">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                	<div class="slide_in">
                                                        <div class="slide_img" style="background: gray ;"></div>
                                                		<div class="slide_cover">
                                                            <div class="txt">
                                                                <h2 class="cover_txt">제목</h2>
                                                			    <h3 class="cover_txt">소제목</h3>
                                                            </div>
                                                		</div>
                                                        <div class="slide_txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                	</div>
                                                </div>
                                                <div class="swiper-slide"> </div>
                                                <div class="swiper-slide"> </div>
                                                <div class="swiper-slide"> </div>
                                                <div class="swiper-slide"> </div>
                                                <div class="swiper-slide"> </div>
                                                <div class="swiper-slide"> </div>
                                            </div>

                                            <div class="swiper-button-prev hart_prev">
                                                <i class="fa-solid fa-angle-left"></i>
                                            </div>
                                            <div class="swiper-button-next hart_next">
                                                <i class="fa-solid fa-angle-right"></i>
                                            </div>

                                            <div class="swiper-pagination hart_pagi"></div>
                                        </div>
                                    </div>
                                </div>

                                <!-- ps에서처리끝 -->
                                <!-- 일단 꺼내 보았다 -->
                                
								<c:forEach items="${magS}" var="ms">
									<div class="list_con">
										<div class="con_txt">${ms.key}</div>
										<div class="list_con_in">
											<div class="hart_list list_slider">
												<div class="swiper-wrapper">
												
													<c:forEach items="${ms.value}" var="mv">

														<div class="swiper-slide" onclick="result4(this)">
															<div class="slide_in" id="${mv.mgz_id}">
																<div class="slide_img" style="background: gray url(/resources/img/upload/${mv.mgz_thub}) no-repeat 50% 50%;background-size: cover;"></div>
																<div class="slide_cover">
																	<div class="txt">
																		<h2 class="cover_txt">${mv.mgz_title}</h2>
																		<h3 class="cover_txt">${mv.mgz_smalltitle}</h3>
																	</div>
																</div>
																<div class="slide_txt">
																	<h2>${mv.mgz_title}</h2>
																</div>
															</div>
														</div>

													</c:forEach>
												</div>
												<div class="swiper-button-prev hart_prev">
													<i class="fa-solid fa-angle-left"></i>
												</div>
												<div class="swiper-button-next hart_next">
													<i class="fa-solid fa-angle-right"></i>
												</div>
												<div class="swiper-pagination hart_pagi"></div>
											</div>
										</div>
									</div>
									
								</c:forEach>

								
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="footer.jsp"%>

</body>

</html>