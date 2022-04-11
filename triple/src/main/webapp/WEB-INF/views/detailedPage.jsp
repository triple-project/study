<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='security' uri='http://www.springframework.org/security/tags'%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1300">
    <title>Triple</title>
    <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/resources/css/mobiscroll.jquery.min.css">
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
    <link rel="stylesheet" href="/resources/css/common.css">
    <link rel="stylesheet" href="/resources/css/detaile.css">
    <link rel="stylesheet" href="/resources/css/kakaomap.css">


    <script src="/resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="/resources/js/mobiscroll.jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
    <script src="/resources/js/main.js"></script>

    <link rel="shortcut icon" href="#">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">
    <style type="text/css">
  .star {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star2 {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .star span {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
  
  .star2 span {
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
    </style>
<script type="text/javascript">
	var c = '${heart}';
	function heart() {
		var h = '${pvo.product_id}';		
		var he = $("#ffh");
		//var c = '${heart}';
		console.log(c);
		$.ajax({
			type : "POST",
			url : "/rest/hearton",
				dataType : "json",
				async:false,
				data : {
					mem_id : $("#sat").text(),
					heart_id : h,
					cheart : c
				},
				success : function(data) {
	           		 // C에서 받아온 데이터로 새로 뿌려주기
	           		//console.log(data);
	           		//window.location.reload();
	           		if (data=='hearton') {
						c = 'solid';
					}else {
						c = 'regular'
					}
	           		$('#ffhd').load(location.href+' #ffhd');

				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
	function heart2() {
		alert("로그인을 해주세요")		
	}
</script>
<script type="text/javascript">
function intra() {
	$.ajax({
		type : "POST",
		url : "/rest/ftravel",
		dataType : "json",
		data : {
			mem_id : $("#sat").text()
		},
		success : function(data) {
        // C에서 받아온 데이터로 새로 뿌려주기
		//console.log(data);
		$("#plusListIn").html("");
			for (var i = 0; i < data.length; i++) {
				$("#plusListIn").append(
                    "<div onclick='travel_insert(this)'>" +
                        "<span style='display:none'>" + data[i].plan_id + "</span>" +
                        "<p>" + data[i].plan_name + "</p>" +
                        "<p>" + data[i].startdate + "</p>" +
						"<p>" + data[i].enddate + "</p>" +
						'<h5><i class="fa-solid fa-xmark"></i></h5>' +
					"</div>"
                );
			}  	
		},
		error : function(a){
			console.log(a);
        }
	});
}
	
	function travel_insert(insert) {
		//console.log(insert.children.item(0).innerText);
		var tra_in = insert.children.item(0).innerText;
		var tra_pid = "${pvo.product_id}";
		//console.log(tra_pid);
		//location.href="";
		$.ajax({
			type : "POST",
			url : "/rest/travin",
				dataType : "json",
				async:false,
				data : {
					product_id : tra_pid,
					plan_id : tra_in
				},
				success : function(data) {
	           		 // C에서 받아온 데이터로 새로 뿌려주기
	           		//console.log(data);
					alert("추가완료");
					$(".plusList, .plusListCover, body").removeClass("on");
				},
				error : function(a){
					console.log(a);
	            }
			});
	}
	
</script>
<script type="text/javascript">
	 const drawStar = (target) => {
		var ss = target.value*10;
		console.log(target.value*10);
		$('#star_r').css('width',ss+'%')
	    //document.querySelector('.star span').style.width = '${target.value*10}%';
		
	  } 

</script>

<script type="text/javascript">
	function rs() {
		var r_contentd = document.getElementById('r_contentd')
		document.getElementById('r_comment').value = r_contentd.innerHTML;
		var today = new Date();
		var hours = ('0' + today.getHours()).slice(-2);
		var minutes = ('0' + today.getMinutes()).slice(-2);
		var seconds = ('0' + today.getSeconds()).slice(-2);
		var ti = hours + minutes + seconds;
		var fileValue = $("#rimage_file_name").val().split("\\");
		var fileName = fileValue[fileValue.length - 1]; // 파일명
		/* console.log(fileName); image_file_name_h */
		const a = $('#rimg_h').val(ti+fileName);
		const b = $('#rimage_file_name_h').val(ti+fileName);
	}
	
	function rreadURL(input) {
	      var file = input.files[0] //파일에 대한 정보
	     /*  console.log(file) */
	      if (file != '') {
	         var reader = new FileReader();
	         reader.readAsDataURL(file); //파일의 정보를 토대로 파일을 읽고 
	         reader.onload = function (e) { // 파일 로드한 값을 표현한다
	          //e : 이벤트 안에 result값이 파일의 정보를 가지고 있다.
	/*             console.log(e)
	            console.log(e.target)
	            console.log(e.target.result) */
	           $('#rpreview').attr('src', e.target.result);
	          }
	      }
	  } 
</script>
</head>

<body>
    <jsp:include page="header.jsp" flush="true"/>
<!-- <button onclick="jal()">테스트</button> -->
    <section id="sec">
        <div class="main">
            <div class="main_in">
                <div class="tapName tapTop">
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>상품정보</h2>
                            </li>
                            <li>
                                <h2>상세보기</h2>
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
                                                <h2>${pvo.product_name}</h2>
                                                <h3>${pvo.product_shortword}</h3>
                                                <h3>${pvo.product_address}</h3>

                                                <!-- 로그인안한경우 -->
                                                <security:authorize access="isAnonymous()">
                                                    <div class="heartBox">
                                                        <div onclick="heart2()" class="heartIcon">
                                                            <i class="fa-regular fa-heart"></i>
                                                            <div class="heartNum">${heartcount}</div>
                                                        </div>
                                                    </div>
                                                </security:authorize>
                                                <!-- 로그인한경우 -->
                                                <security:authorize access="isAuthenticated()">
                                                    <div class="heartBox">
                                                        <div class="proaddbtn probtn_com" onclick="heart()">
                                                            <div id="ffhd" class="heartIcon">
                                                                <div>
                                                                    <i class="fa-${heart} fa-heart" style="color:red" id="ffh"></i>
                                                                </div>
                                                                <div class="heartNum">${heartcount}</div>
                                                            </div>
                                                        </div>
        
                                                        <div class="proaddbtn probtn_com onePlusBtn" onclick="intra()">
                                                            <i class="fa-regular fa-bookmark"></i>
                                                        </div>
                                                    </div>
                                                </security:authorize>
                                            </div>

                                            <div class="context">
                                                <ul><!-- 이 아래로 태그 포문으로 꺼내기 -->
                                                    <c:forEach items="${tList}" var="tl">
                                                    <li>                     
                                                        <div class="img">
                                                            <img src="/resources/img/tag_final/${tl.tag_tag}.png" id="icon">
                                                        </div>
                                                        <div class="txt">
                                                            <h2>${tl.tag_tag}</h2>
                                                        </div>
                                                    </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>

                                        <div class="right">
                                            <div class="swiper mySwiper2">
                                                <div class="swiper-wrapper">
                                                	<!-- 이아래로 이미지5개까지 꺼내기 -->
                                                    <div class="swiper-slide">
                                                        <div class="img" style=" background: blue url(/resources/img/upload/${pvo.product_img1}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(/resources/img/upload/${pvo.product_img2}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(/resources/img/upload/${pvo.product_img3}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(/resources/img/upload/${pvo.product_img4}) no-repeat 50% 50%; background-size:cover;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(/resources/img/upload/${pvo.product_img5}) no-repeat 50% 50%; background-size:cover;"></div>
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
                                                        <div class="img" style="background: blue url(/resources/img/upload/${pvo.product_img1}) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(/resources/img/upload/${pvo.product_img2}) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(/resources/img/upload/${pvo.product_img3}) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: skyblue url(/resources/img/upload/${pvo.product_img4}) no-repeat 50% 50%;"></div>
                                                    </div>
                                                    <div class="swiper-slide">
                                                        <div class="img" style="background: blue url(/resources/img/upload/${pvo.product_img5}) no-repeat 50% 50%;"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tow">
                                    <div class="towIn">
                                        <h2>${pvo.product_subcontent}</h2>
                                        <!-- 히든텍스트의 경우 pvo.product_subcontent을 따로 model에 넣고
                                        글자수로 잘라서 반은 이곳에 반은 히든으로 하면 효과를 볼수있지만
                                        현재 pvo.product_subcontent의 길이가 적합하지 못합니다 -->
                                        <!-- <h2 class="hiddenText">히든텍스트내용<br>히든두줄히든두줄</h2>
                                        <div class="hiddenBtn on">
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                        </div>
                                        <div class="plus btnHidden on">더보기<i class="fa-solid fa-angle-right"></i></div>
                                        <div class="down btnHidden">숨기기<i class="fa-solid fa-xmark"></i></div> -->
                                    </div>
                                </div>

								<!--2종태그의 경우 현재 주석처리입니다 -->
                                <div class="three" style="display: none;">
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

                                        <div class="map_wrap">
										    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
										    <ul id="category">
										        <li id="BK9" data-order="0"> 
										            <span class="category_bg bank"></span>
										            은행
										        </li>       
										        <li id="MT1" data-order="1"> 
										            <span class="category_bg mart"></span>
										            마트
										        </li>  
										        <li id="PM9" data-order="2"> 
										            <span class="category_bg pharmacy"></span>
										            약국
										        </li>  
										        <li id="OL7" data-order="3"> 
										            <span class="category_bg oil"></span>
										            주유소
										        </li>  
										        <li id="CE7" data-order="4"> 
										            <span class="category_bg cafe"></span>
										            카페
										        </li>  
										        <li id="CS2" data-order="5"> 
										            <span class="category_bg store"></span>
										            편의점
										        </li>      
										    </ul>
										</div>
                                    </div>
                                </div>
                                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6325d6dc315ae205e4c0d801d1732810&libraries=services"></script>
								<script type="text/javascript" src="/resources/js/kakaoMap.js"></script> 
								<script type="text/javascript">
										window.onload = function real() {
										var setA = 1;
										var setB = 2;
										setA = ${pvo.product_locationx};
										setB = ${pvo.product_locationy};
										console.log(setA);
										console.log(setB); 
										
										 // 이동할 위도 경도 위치를 생성합니다 
									    var moveLatLon = new kakao.maps.LatLng(setA, setB);
									    
									    // 지도 중심을 이동 시킵니다
									    map.setCenter(moveLatLon);
									    
									 	// 마커가 표시될 위치입니다 
									    var markerPosition  = new kakao.maps.LatLng(setA, setB); 
									    
										 // 마커를 생성합니다
									    var marker = new kakao.maps.Marker({
									        position: markerPosition
									    });
									    
									 	// 마커가 지도 위에 표시되도록 설정합니다
									    marker.setMap(map);
									}
								</script>
								<!-- 리뷰시작 -->
                                <div class="six">
                                    <div class="sixIn">
                                        <div class="tit">
                                            <h2>리뷰</h2>
                                        </div>
										<div>
											<form method="post" action="/review" onclick="rs()" enctype="multipart/form-data">
										       <div contenteditable="true" id="r_contentd">
													내용을 입력해주세요!
												</div>
										      별점 <span class="star">
												  ★★★★★
												  <span id="star_r" >★★★★★</span>
												  <input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10" name="r_star">
												</span>
										      	
												<br>
												<input type="hidden" id="r_comment" name="r_comment"> 
												이미지
												<div class="preview">
								            		<img id="rpreview" src="#" width=200 height=200 alt="선택된 이미지가 없습니다" />
									            </div>
												<input type="file" name="rimage_file_name" id="rimage_file_name" onchange="rreadURL(this);" /> 
									            <input type="hidden" name="r_img1" id="rimg_h">
									            <input type="hidden" name="rimage_file_name_h" id="rimage_file_name_h">
										      <input type="hidden" value="${pvo.product_id}" name="product_id">
										      <input type="submit" value="리뷰등록" >										      
										   </form>
										   
										</div>
                                        <div class="sixCon">
                                            
                                            <ul>
                                            <!-- 리뷰꺼내기 시작 -->
                                            <c:forEach items="${reviewList}" var="rl">
                                            	<li>
                                            		
                                            		
                                                    <div class="info">
                                                        <h2>${rl.r_comment}</h2>
														
                                                        <div class="user">
                                                            <img src="/resources/img/upload/${rl.mem_img}">
																<div class="userIn">
																	<h3>${rl.mem_id}</h3>
																	<h4>${rl.r_date}</h4>
																	<span class="star2"> ★★★★★ <span id="star_r"
																		style="width: ${rl.r_star*10}%">★★★★★</span></span>
																</div>
																<div class="close" style="display: none;">
                                                                <i class="fa-solid fa-xmark"></i>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="img">
                                                        <img src="/resources/img/upload/${rl.r_img1}">
                                                    </div>
                                                </li>
                                                </c:forEach>
                                                <!-- <li>
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
                                                </li> -->
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
							<!-- 꺼내기시작 -->
							<c:forEach items="${dList}" var="dl">
                            <div class="room">
                                <div class="roomIn">
                                    <div class="left">
                                        <div class="swiper detailedSlider">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide" style="background: skyblue url(/resources/img/upload/${dl.pd_img1}) no-repeat 50% 50%; background-size:cover;"></div>
                                                <div class="swiper-slide" style="background: pink url(/resources/img/upload/${dl.pd_img2} no-repeat 50% 50%; background-size:cover;"></div>
                                                <div class="swiper-slide" style="background: green url(/resources/img/upload/${dl.pd_img3}) no-repeat 50% 50%; background-size:cover;"></div>
                                            </div>
                                            <div class="arrowBtn">
                                                <div class="swiper-button-prev">
                                                    <i class="fa-solid fa-angle-left"></i>
                                                </div>
                                                <div class="swiper-pagination"></div>
                                                <div class="swiper-button-next">
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="right">
                                    	
                                        <div class="tit">
                                            <h2>${dl.pd_name}<span style="display: none;"><i class="fa-solid fa-user-group"></i>기준 {??} ~ 최대 {??}</span>
                                            </h2>
                                            <h3>${dl.pd_contents}</h3>
                                        </div>

                                        <div class="tag" style="display: none;">
                                            <ul>
                                                <li>
                                                    <div class="img">
                                                        <img src="" alt="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>태그네임</h3>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="money" >
                                        	<div>
                                        		${dl.pd_price}원
                                        	</div>
                                            <table style="display: none;">
                                                <tbody>
                                                    <tr>
                                                        <th>시즌</th>
                                                        <th>주중</th>
                                                        <th>금요일</th>
                                                        <th>주말</th>
                                                    </tr>
                                                    <tr>
                                                        <td>비수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                    <tr>
                                                        <td>성수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                    <tr>
                                                        <td>준성수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
										<security:authorize access="isAnonymous()">
                                        <div class="re" onclick="heart2()">
                                            <h2>예약하기</h2>
                                        </div>
                                        </security:authorize>
                                        <security:authorize access="isAuthenticated()">
                                        <div class="re" onclick="">
                                            <h2>예약하기</h2>
                                        </div>
                                        </security:authorize>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                            <!-- 꺼내기종료 -->

                            <!-- <div class="room" style="display: none;">
                                <div class="roomIn">
                                    <div class="left">
                                        <div class="swiper detailedSlider">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide" style="background: skyblue url(??.jpg) no-repeat 50% 50%;"></div>
                                                <div class="swiper-slide" style="background: pink url(??.jpg) no-repeat 50% 50%;"></div>
                                                <div class="swiper-slide" style="background: green url(??.jpg) no-repeat 50% 50%;"></div>
                                            </div>
                                            <div class="arrowBtn">
                                                <div class="swiper-button-prev">
                                                    <i class="fa-solid fa-angle-left"></i>
                                                </div>
                                                <div class="swiper-pagination"></div>
                                                <div class="swiper-button-next">
                                                    <i class="fa-solid fa-angle-right"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="right">
                                        <div class="tit">
                                            <h2>객실이름<span><i class="fa-solid fa-user-group"></i>기준 {??} ~ 최대 {??}</span>
                                            </h2>
                                            <h3>침대룸+화장실1 / 27평</h3>
                                        </div>

                                        <div class="tag">
                                            <ul>
                                                <li>
                                                    <div class="img">
                                                        <img src="" alt="">
                                                    </div>
                                                    <div class="txt">
                                                        <h3>태그네임</h3>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="money">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th>시즌</th>
                                                        <th>주중</th>
                                                        <th>금요일</th>
                                                        <th>주말</th>
                                                    </tr>
                                                    <tr>
                                                        <td>비수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                    <tr>
                                                        <td>성수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                    <tr>
                                                        <td>준성수기</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                        <td>요금</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="re">
                                            <h2>예약하기</h2>
                                        </div>
                                    </div>
                                </div>
                            </div> -->

                        </div>

                    </div>
                </div>

                <div class="tapName tapBottom">
                    <div class="nameIn">
                        <ul>
                            <li class="on">
                                <h2>상품정보</h2>
                            </li>
                            <li>
                                <h2>상세보기</h2>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <div class="plusList">
        <div class="tit">
            <div class="travelName">
                <h2>여행리스트를 선택해주세요</h2>
                <span>여행이름</span>
                <span>여행시작</span>
                <span>여행종료</span>
            </div>
        </div>
        <div class="plusListIn" id="plusListIn"></div>
    </div>
    <div class="plusListCover"></div>

    <%@ include file="footer.jsp"%>
</body>

</html>