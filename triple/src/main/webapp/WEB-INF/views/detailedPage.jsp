<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1300">
    <title>Triple</title>
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="resources/css/mobiscroll.jquery.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
        integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/brands.min.css"
        integrity="sha512-BglNUJaVmT9HacZ2AsbVQxjswBmIf3AJj9hhXr/Yre33qU+A1p8gXUcavzcHYkWf5bIvLMIiEbdMrEVqb5h2Rg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/fontawesome.min.css"
        integrity="sha512-KVdV5HNnN1f6YOANbRuNxyCnqyPICKUmQusEkyeRg4X0p8K1xCdbHs32aA7pWo6WqMZk0wAzl29cItZh8oBPYQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/regular.min.css"
        integrity="sha512-op8gZY0YqKAatlnYvmUvSqK4sBJQWYA0APRKExBXaTR1SyHHY/Pw4vtfw+L5VMXbVQb/Xvz4xE5d5U3E0wLz/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/solid.min.css"
        integrity="sha512-LUxUs00S05YspUb2HCuUTBqTqbjJm2uNvwRXVTcl/jkr9ygYZptXhfknc52iBnPUNgHHHC9ivU4RV6UFxLxhfg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/svg-with-js.min.css"
        integrity="sha512-OiNHhQwzS1LlbvAM+EbRs/LeCL5RhAkv2pvr432TxTFGcxNcG6I8VVII7s4dUVwJJG7HtHKvsR7zzD5vuSlAlA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-font-face.min.css"
        integrity="sha512-RiiIeQoUxWFBj0r8eZ49ooAfgtvwzW2pUMpxsWPYwn7u39JzHYxN8Bmb3AwXjnvjoFf4n4TQNgmB+BLYTZChVw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/v4-shims.min.css"
        integrity="sha512-UtgpaUQPTevIy6walAy8W82eDxOdZJqKS0w2vf0eTItGubnT6TKkbM1GoNyoNvlM4DKhbl45kOK+Z4EhtuK2RA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="resources/css/common.css">
    <link rel="stylesheet" href="resources/css/detaile.css">


    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="resources/js/mobiscroll.jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
    <script src="resources/js/main.js"></script>

    <link rel="shortcut icon" href="#">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
</head>

<body>
    <jsp:include page="header.jsp" flush="true"/>

    <section id="sec">
        <div class="main">
            <div class="main_in">
                <div class="tapName tapTop">
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>숙소정보</h2>
                            </li>
                            <li>
                                <h2>객실보기</h2>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="tapCon">
                    <div class="conIn">

                        <div class="tapMenu">
                            <div class="menuIn">
                                <div class="one">
                                    <div class="oneIn">
                                        <div class="left">
                                            <div class="tit">
                                                <h2>숙소이름</h2>
                                                <h3>소제목</h3>
                                            </div>

                                            <div class="context">
                                                <ul>
                                                    <li>
                                                        <div class="img">
                                                            <img src="" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="img">
                                                            <img src="" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="img">
                                                            <img src="" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="img">
                                                            <img src="" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                    </li>

                                                    <li>
                                                        <div class="img">
                                                            <img src="" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>제목</h2>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="right">
                                            <div class="swiper mySwiper2">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                </div>
                                                <div class="btn">
                                                    <div class="swiper-button-prev">
                                                        <i class="fa-solid fa-angle-left"></i>
                                                    </div>

                                                    <div class="swiper-pagination"></div>
                                                    
                                                    <div class="swiper-button-next">
                                                        <i class="fa-solid fa-angle-right"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div thumbsSlider="" class="swiper mySwiper">
                                                <div class="swiper-wrapper">
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(../resources/??/??.jpg) no-repeat 50% 50%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tow">
                                    <div class="towIn">
                                        <h2>내용내용내용내용<br>두줄내용두줄내용</h2>
                                        <h2 class="hiddenText">히든텍스트내용<br>히든두줄히든두줄</h2>
                                        <div class="hiddenBtn on">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                        <div class="plus btnHidden on">더보기<i class="fa-solid fa-angle-right"></i></div>
                                        <div class="down btnHidden">숨기기<i class="fa-solid fa-xmark"></i></div>
                                    </div>
                                </div>

                                <div class="three">
                                    <div class="threeIn">
                                        <div class="tit">
                                            <h2>태그 등록</h2>
                                        </div>

                                        <div class="threeCon">
                                            <ul>
                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>제목</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>제목</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>제목</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>제목</h3>
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>제목</h3>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="four">
                                    <div class="fourIn">
                                        <div class="tit">
                                            <h2>펜션정책</h2>
                                        </div>

                                        <div class="fourCon">
                                            <div class="left">
                                                <div class="info1">
                                                    <h2>이용수칙</h2>
                                                    <ul>
                                                        <li>
                                                            <h2>추가요금</h2>
                                                            <h3>1인당 15,000원</h3>
                                                        </li>
                                                        <li>
                                                            <h2>체크인</h2>
                                                            <h3>체크인 15:00 이후</h3>
                                                        </li>
                                                        <li>
                                                            <h2>체크아웃</h2>
                                                            <h3>체크아웃 12:00 이전</h3>
                                                        </li>
                                                        <li>
                                                            <h2>미성년자</h2>
                                                            <h3>보호자 동반</h3>
                                                        </li>
                                                        <li>
                                                            <h2>반려동물</h2>
                                                            <h3>동반 불가</h3>
                                                        </li>
                                                        <li>
                                                            <h2>흡연여부</h2>
                                                            <h3>흡연 불가</h3>
                                                        </li>
                                                        <li>
                                                            <h2>실내취식</h2>
                                                            <h3>구이 불가</h3>
                                                        </li>
                                                    </ul>
                                                </div>

                                                <div class="info2">
                                                    <h2>방역 및 안전</h2>
                                                    <ul>
                                                        <li>
                                                            <h2>방역</h2>
                                                            <h3>방역수칙 준수</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>주 1회 소독</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>어메니티 제공</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>웰컴슬리퍼 제공</h3>
                                                        </li>
                                                        <li>
                                                            <h2>안전</h2>
                                                            <h3>일산화탄소 경보기</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>화재경보기</h3>
                                                        </li>
                                                        <li>
                                                            <h2></h2>
                                                            <h3>소화기</h3>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="right">
                                                <div class="txt">
                                                    <h2>환불규정</h2>
                                                    <h3>- 기준인원 초과예약 후 취소 시에는 환불 위약금이 있습니다.</h3>
                                                    <h3>- 예약 후 날짜변경, 객실변경은 예약취소 수 다시 예약하셔야 합니다.</h3>
                                                    <h3>- 예약 취소 시에는 10%의 위약금이 있습니다.</h3>
                                                </div>

                                                <div class="table">
                                                    <table>
                                                        <tbody>
                                                            <tr>
                                                                <th>이용 7일 전</th>
                                                                <th>이용 6일 전</th>
                                                                <th>이용 5일 전</th>
                                                                <th>이용 4일 전</th>
                                                                <th>이용 3일 전</th>
                                                                <th>이용 2일 전</th>
                                                                <th>이용 1일 전</th>
                                                                <th>이용 당일</th>
                                                            </tr>
                                                            <tr>
                                                                <td>90% 환불</td>
                                                                <td>80% 환불</td>
                                                                <td>70% 환불</td>
                                                                <td>60% 환불</td>
                                                                <td>50% 환불</td>
                                                                <td>40% 환불</td>
                                                                <td>30% 환불</td>
                                                                <td>환불 불가능</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="five">
                                    <div class="fiveIn">
                                        <div class="tit">
                                            <h2>지도</h2>
                                        </div>

                                        <div class="map">
                                            
                                        </div>
                                    </div>
                                </div>

                                <div class="six">
                                    <div class="sixIn">
                                        <div class="tit">
                                            <h2>리뷰</h2>
                                        </div>

                                        <div class="sixCon">
                                            
                                            <ul>
                                                <li>
                                                    <div class="info">
                                                        <h2>리뷰내용이들어갈공간입니다.......... 무언가 내용이 얼마나들어갈지 모르니 일단 최대한 두줄과 세줄처리가 가능할 만큼의 내용을 집어넣어보겠습니다. 그러므로 내용은 조금 줄바꿈처리가 어찌 될지 모르고 내용이 얼마나 들어갈지 몰라서 ...그냥 막 써지는대로 써보고 아무렇게나 이어보고 글을 작성해보고 지금 머리를 쥐어짜내는 중입니다. 하지만 아직도 두줄이네요 최소 세줄은 보여줘야할거같은데 .. 어 세줄이 될거같네요 이제 ! 오아아아아아아아 !!! 진짜의미없이 글을 쓰고잇어요 .... 나 대단해 </h2>

                                                        <div class="user">
                                                            <img src="">
                                                            <div class="userIn">
                                                                <h3>닉네임</h3>
                                                                <h4>작성날짜</h4>
                                                            </div>
                                                            <div class="close">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="info">
                                                        <h2>아버님은 말하셨지 인생을 즐겨라</h2>

                                                        <div class="user">
                                                            <img src="">
                                                            <div class="userIn">
                                                                <h3>닉네임</h3>
                                                                <h4>작성날짜</h4>
                                                            </div>
                                                            <div class="close">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                </li>

                                                <li>
                                                    <div class="info">
                                                        <h2>아모르파티</h2>

                                                        <div class="user">
                                                            <img src="">
                                                            <div class="userIn">
                                                                <h3>닉네임</h3>
                                                                <h4>작성날짜</h4>
                                                            </div>
                                                            <div class="close">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="img">
                                                        <img src="">
                                                    </div>
                                                </li>
                                            </ul>

                                            <div class="plusBtn">
                                                <h2>더보기<i class="fa-solid fa-arrow-down"></i></h2>
                                                
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                        <div class="tapMenu">
                    
                        </div>

                    </div>
                </div>

                <div class="tapName tapBottom">
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>숙소정보</h2>
                            </li>
                            <li>
                                <h2>객실보기</h2>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%@ include file="footer.jsp"%>
</body>

</html>