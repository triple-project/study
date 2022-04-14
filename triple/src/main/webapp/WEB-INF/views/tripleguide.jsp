<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1300">
    <title>Triple</title>
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css" integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css" integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css" integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css" integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css" integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css" integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css" integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="  crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="resources/css/common.css">
    <link rel="stylesheet" href="resources/css/tripleguide.css">

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
</head>

<body>

    <jsp:include page="header.jsp" flush="true" />

    <section id="sec">
        <div class="secIn">

            <div class="con guide">
                <div class="conIn">
                    <div class="left">
                        <div class="tit">
                            <h2>트리플가이드</h2>
                        </div>
                        <div class="tapName">
                            <ul>
                                <li class="on"><h2>로그인 및 회원 가입 가이드</h2></li>
                                <li><h2>내 여행, 리뷰, 날씨확인</h2></li>
                                <li><h2>상품,매거진 검색 방법</h2></li>
                                <li><h2>항공/기차표 조회</h2></li>
                                <li><h2>객실예약방법</h2></li>
                                <li><h2>결제방법</h2></li>
                                <li><h2>인기트립 보기</h2></li>
                            </ul>
                        </div>
                    </div>

                    <div class="right">

                        <div class="tap">
                            <div class="tapIn">
                                <h2>우측 상단 메뉴버튼 클릭</h2>
                                <img src="/resources/img/guide/1/1.jpg">

                                <h2>메뉴가 나오면 로그인/회원가입 클릭</h2>
                                <img src="/resources/img/guide/1/2.jpg">

                                <h2>로그인창이 나타나면 하단 회원가입 클릭</h2>
                                <img src="/resources/img/guide/1/3.jpg">

                                <h2>회원가입창이 나오면 내용에맞게 작성</h2>
                                <img src="/resources/img/guide/1/4.jpg">

                                <h2>회원가입 작성 예시 입니다</h2>
                                <img src="/resources/img/guide/1/5.jpg">

                                <h2>가입이 완료되었다면 아이디와 비밀번호를 쳐서 로그인 해주세요</h2>
                                <img src="/resources/img/guide/1/6.jpg">

                                <h2>다시 우측상단 메뉴버튼을 클릭하면<br>로그인/회원가입 부분이 로그인한 아이디로 변경되어있는 것을 확인하실수 있습니다</h2>
                                <img src="/resources/img/guide/1/7.jpg">

                                <br>

                                <h2>회원정보 수정은 로그인 되어있는 상태에서 메뉴창 하단에 회원정보 수정을 클릭하면<br>해당 회원정보수정 칸이 활성화 되는것을 확인하실수 있습니다</h2>
                                <img src="/resources/img/guide/1/8.jpg">

                                <h2>회원정보수정 예시<br>회원정보에서 비밀번호 수정과 하단 이메일, 전화번호, 프로필 수정은 따로 작동하오니 이점 유의해주시길 바랍니다.</h2>
                                <img src="/resources/img/guide/1/9.jpg">

                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>우측상단 메뉴버튼 클릭후 메뉴활성화 한 후<br>
                                    내 여행 클릭하여 여행이름 작성 후 여행 만들기 버튼 클릭</h2>
                                    <img src="/resources/img/guide/2/1.jpg">
    
                                    <h2>여행만들기 클릭하면 내가만든 여행리스트에<br>방금만든 여행목록이 추가됨을 확인할수 습니다</h2>
                                    <img src="/resources/img/guide/2/2.jpg">
                                    
                                    <br>
    
                                    <h2>리뷰에 목록으로 이동하게되면 좌측에 내가 리뷰를 달았던 상품이 나오고<br>
                                    상품을 클릭하면 클릭한 상품에 달았던 리뷰를 확인할수있습니다.<br>
                                    <span>리뷰 단 상품 정보 아래 상품정보를 클릭하게되면 해당 상품 상세보기 칸으로 이동합니다.</span></h2>
                                    <img src="/resources/img/guide/2/3.jpg">
                                    
                                    <br>

                                    <h2>s날씨 탭을 클릭하게 되면 현재 위치 날씨가 나오게 됩니다.</h2>
                                    <img src="/resources/img/guide/2/4.jpg">
    
                                    <h2>우측 하단 보고싶은 지역을 클릭해서 설정한 후 날씨 검색을 하게되면<br>선택한 지역의 날씨를 보여줍니다</h2>
                                    <img src="/resources/img/guide/2/5.jpg">
    
                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>여행지 검색방법<br>여행지검색, 매거진검색 중 보고자 하는 내용을 클릭해준 후<br>지역과 보고자 하는 상품 정보를 클릭 한 후 검색</h2>
                                <img src="/resources/img/guide/3/1.jpg">
                                <br>
                                <img src="/resources/img/guide/3/2.jpg">
                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>메인화면에서 기차표 > 출발일 클릭하여 날짜 선택
                                    <br><span>기차표는 최대 7일 이전까지의 표만 조회가 가능합니다</span>
                                </h2>
                                <img src="/resources/img/guide/4/1.jpg">

                                <h2>출발일, 출발역, 도착역 선택 조회 후 조회하기</h2>
                                <img src="/resources/img/guide/4/3.jpg">

                                <h2>메인화면에서 항공권 > 출발일 클릭하여 날짜 선택
                                    <br><span>항공권은 최대 31일 이전까지의 표만 조회가 가능합니다</span>
                                </h2>
                                <img src="/resources/img/guide/4/4.jpg">

                                <h2>출발일, 출발공항, 도착공항, 항공사 선택 후 조회하기</h2>
                                <img src="/resources/img/guide/4/5.jpg">
                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>상품목록에서 요금 아래 보러가기 클릭</h2>
                                <img src="/resources/img/guide/5/1.jpg">

                                <h2>상단 상품정보, 상세보기 탭에서 상세보기 탭으로 이동해주세요</h2>
                                <img src="/resources/img/guide/5/2.jpg">

                                <h2>상단 예약하실 날짜 선택에서 이용하실 날짜를 클릭한후 예약하기 누르면<br>
                                결제를 하실수 있습니다</h2>
                                <img src="/resources/img/guide/5/3.jpg">
                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>KG 이니시스 결제창이 연결이 됩니다. 이용하실 상품을 결제 해주세요</h2>
                                <img src="/resources/img/guide/6/1.jpg">
                            </div>
                        </div>

                        <div class="tap">
                            <div class="tapIn">
                                <h2>메인화면 인기트립 을 내리면 더보기 버튼이 나옵니다<br>더보기 버튼을 클릭하면 인기트립 리스트를 볼수 있습니다</h2>
                                <img src="/resources/img/guide/7/1.jpg">
                                <br>
                                <img src="/resources/img/guide/7/2.jpg">
                                <br>
                                <img src="/resources/img/guide/7/3.jpg">
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
        <script>
            $('.guide .tapName li').click(function() {
                var num = $(this).index();
                $(this).addClass('on').siblings().removeClass('on');
                $('.guide .tap').eq(num).show().siblings().hide();
            });
            $('.guide .tap:gt(0)').hide();
        </script>
    </section>

    <%@ include file="footer.jsp"%>

</body>

</html>