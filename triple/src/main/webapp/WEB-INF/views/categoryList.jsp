<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1300">
    <title>Document</title>
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
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
    <link rel="stylesheet" href="resources/css/categoryList.css">

    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="resources/js/mobiscroll.jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
    <script src="resources/js/main.js"></script>
    <script src="resources/js/categoryList.js"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
</head>
<body>

    <jsp:include page="header.jsp" flush="true"/>

    <section id="sec">
        <div class="cate">
            <div class="cate_in">
                <div class="txt">
                    <h2>매거진검색</h2>
                </div>

                <div class="con">
                    <div class="con_in">
                        <div class="list">
                            <div class="list_in">
                                <div class="list_txt">
                                    <h2>전체지역 검색</h2>
                                </div>

                                <div class="list_con">
                                    <div class="con_in">
                                        <div class="left">
                                            <div class="m_img" style="background: gray url(../resources/img/??/??.jpg);"></div>
                                        </div>

                                        <div class="right">
                                            <div class="top">
                                                <div class="txt">
                                                    <h2>매거진 제목</h2>
                                                    <h3>매거진 소제목 소제목은 대체로 많이 길어질수 있습니다 예를들면 이런것이죠</h3>
                                                    <h4>매거진 무언가</h4>
                                                    <h4>매거진 무언가</h4>
                                                    <h4>매거진 무언가</h4>
                                                    <h4>매거진 무언가</h4>
                                                </div>
                                                <!-- 슬라이드 -->
                                                <div class="slide">
                                                    <div class="list_slider">
                                                        <div class="swiper-wrapper">
                                                            <div class="swiper-slide"></div>
                                                            
                                                            <div class="swiper-slide"></div>
            
                                                            <div class="swiper-slide"></div>
            
                                                            <div class="swiper-slide"></div>
            
                                                            <div class="swiper-slide"></div>
                                                        </div>

                                                        <div class="txt">
                                                            <span>매거진 이미지</span>
                                                        </div>

                                                        <div class="util">
                                                            <div class="swiper-button-prev list_prev">
                                                                <i class="fa-solid fa-angle-left"></i>
                                                            </div>
                                                            <div class="swiper-pagination list_pagi"></div>
                                                            <div class="swiper-button-next list_next">
                                                                <i class="fa-solid fa-angle-right"></i>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 슬라이드 끝 -->
                                            <div class="bot">
                                                <!-- 멀 넣어야할지 모르겠어서 임시로 남겨요 -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="footer.jsp" flush="true"/>

</body>
</html>

