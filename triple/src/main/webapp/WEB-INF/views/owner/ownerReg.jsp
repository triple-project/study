<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=1300">
        <title>owner Detail page</title>
        <link rel="stylesheet" href="/resources/css/reset.css">
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
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
        <link rel="stylesheet" href="/resources/css/ownerReg.css">
        
    
        <script src="/resources/js/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="/resources/js/mobiscroll.jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
        <script src="/resources/js/main.js"></script>
        
        <link rel="shortcut icon" href="#">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        
        <script type="text/javascript">
        
        
       	
        </script>
    </head>
<body>

	<jsp:include page="../header.jsp" flush="true"/>

    <section id="sec_reg">
        <div class="oReg">
            <div class="oReg_in">
                <!-- 상품등록 시작 -->
                <h3>상품등록</h3>
                <div class="oReg_reg">
                    <div class="reg_product">
                    	<!-- <div class="pname p_com">
                            <p>상품아이디</p>
                        </div> -->
                        <div class="pname p_com">
                            <p>상품이름</p>
                        </div>
                        <div class="pword p_com">
                            <p>한줄소개</p>
                        </div>
                        <div class="pword p_com">
                            <p>상품소개</p>
                        </div>
                        <div class="pcategory p_com">
                            <p>카테고리</p>
                        </div>
                        <div class="paddr p_com">
                            <p>주소</p>
                        </div>
                        <div class="pcity p_com">
                            <p>지역</p>
                        </div>
                        <div class="pxy p_com">
                            <p>좌표</p>
                        </div>
                        <div class="pimg p_com">
                            <p>이미지</p>
                        </div>
                    </div>

                    <!-- 상품등록 폼 -->
                    <div class="product_form">
                        <form action="/proRegister" method="post" id="product" onsubmit="tos()" enctype="multipart/form-data">
                            <!-- <div class="pfname pf_com">
                                <input type="text" placeholder="상품아이디 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='상품아이디 입력해 주세요.'" name="product_id">
                            </div> -->
                            <div class="pfname pf_com">
                                <input type="text" placeholder="상품이름 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='상품이름 입력해 주세요.'" name="product_name">
                            </div>
                            <div class="pfword pf_com">
                                <input type="text" placeholder="한줄소개 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='한줄소개를 입력해 주세요.'" name="product_shortword">
                            </div>
                            <div class="pfword pf_com">
                                <input type="text" placeholder="상품소개 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='한줄소개를 입력해 주세요.'" name="product_subcontent">
                            </div>
							<div class="pfcategory pf_com">
								<select name="product_category" id="product_category"
									onchange="change_tag()">
									<option value="" selected="selected" hidden="hidden">카테고리를
										선택해 주세요.</option>
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
							<div class="pfaddr pf_com">
                                <input type="text" placeholder="주소를 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='주소를 입력해 주세요.'" name="product_address">
                            </div>
                            <div class="pfcity pf_com">
                                <select name="product_city" id="">
                                    <option value="" selected="selected" hidden="hidden">도시를 선택해 주세요.</option>
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
                            <div class="pfxy pf_com">
                                <span>X </span>
                                <input type="text" placeholder="값을 입력해 주세요."onfocus="this.placeholder=''" onblur="this.placeholder='값을 입력해 주세요.'" name="product_locationx">
                                <span>Y </span>
                                <input type="text" placeholder="값을 입력해 주세요."onfocus="this.placeholder=''" onblur="this.placeholder='값을 입력해 주세요.'" name="product_locationy">
                                <div class="mapbtn">
                                    <i class="fa-solid fa-location-dot"></i>
                                </div>
                            </div>

                            <div class="pfimgframe">
                                <div class="pfimg pf_com" id="pfimglist">
                                    <div class="pfimg1 pfimg_com" id="pf_img1"></div>
                                    <!-- <div class="pfimg2 pfimg_com" id="pf_img2"></div>
                                    <div class="pfimg3 pfimg_com" id="pf_img3"></div>
                                    <div class="pfimg4 pfimg_com" id="pf_img4"></div>
                                    <div class="pfimg5 pfimg_com" id="pf_img5"></div> -->
                                </div>
                                <div class="pfinputframe" id="pfinputframe">
                                    <input type="file" id="oimage_file_name0"  accept="image/*" onchange="pfpreview(event);" name="oimage_file_name0">
                                </div>
                            </div>
                            <input type="hidden" name="product_id" id="product_id">
							<input type="hidden" name="tag_list_h" id="tag_list_h">
							<input type="hidden" name="tag_cate_h" id="tag_cate_h">
							<input type="hidden" name="image_h" id="image_h">
							<input type="hidden" name="product_img1" id="product_img1" value="def">
							<input type="hidden" name="product_img2" id="product_img2" value="def">
							<input type="hidden" name="product_img3" id="product_img3" value="def">
							<input type="hidden" name="product_img4" id="product_img4" value="def">
							<input type="hidden" name="product_img5" id="product_img5" value="def">
                        </form>
                    </div>
                    <!-- 상품등록 폼 끝 -->
                    
                </div>
                <!-- 상품등록 끝 -->
				
				<hr>
				<div id="tag_div">
					<button onclick="tag_p()">태그추가</button>
					
				</div>
					<button onclick="dt()">태그삭제</button>
					<button onclick="tos()">태그테스트</button>
					<button onclick="filetest()">파일테스트</button>
				<div>
				<c:forEach items="${tnList}" var="tl">
					${tl.key}
					<c:forEach items="${tl.value}" var="tk">
						${tk}
					</c:forEach>
				</c:forEach>
				</div>	
				
                <div class="bottombtn">
                    <div class="backbtn btn_com" onclick="location.href='/admin/oL'">
                        <span>뒤로가기</span>
                    </div>
                    <div class="regbtn btn_com" onclick="$('#product').submit()">
                        <span>등록하기</span>
                    </div>
                </div>


            </div>
        </div>
    </section>


    <%@ include file="../footer.jsp"%>

	<script type="text/javascript">
			
        // 상품등록 이미지 프리뷰
        var filename = new Array();
        var pfcount = 0;
        let pfarr = new Array();
        var arr = [];
        var c = 0;
        function pfpreview(event) { 
        	
        	var file = event.target.files[0]; //파일에 대한 정보
    		filename.push(file.name);
        	console.log(file);
        	
            for (var pfimgpreview of event.target.files) { 
                var reader = new FileReader(); 
                reader.onload = function(event) { 
                    var img = document.createElement("img"); 
                    img.setAttribute("src", event.target.result); 
                    img.setAttribute("id", "productimg"+pfcount); 
                    //document.querySelector("#pf_img"+pfcount).appendChild(img);
                    document.querySelector("#pf_img1").appendChild(img);
                    
                    pfcount++;
                    if(pfcount <= 4){
                    //document.write(event.target.result);
                    const element2 = document.getElementById('pfinputframe');
                    const newInput = document.createElement('input');
    				newInput.setAttribute("type", "file");
    				newInput.setAttribute("id", "oimage_file_name" + pfcount);
    				newInput.setAttribute("name", "oimage_file_name" + pfcount);
    				newInput.setAttribute("onchange", "pfpreview(event);");
    				element2.appendChild(newInput);
                    }
    				
                };  
                    
                } 
                if(pfcount > 4){
                    alert("이미지는 최대 5개까지 등록 가능합니다.")
                }else{
                    reader.readAsDataURL(pfimgpreview);  
                }
            }

       
    
        // 좌표 옆에 있는 버튼 눌렀을시
        $('#sec_reg .mapbtn').click(function(){
            window.open("ownerRoom.html","popup01","width=300","height=300");
        });
        
        function filetest() {
			var ftest = $('#pfimgpreview').val();
			console.log(ftest);
		}
        
	    var tarr = [];
	    //등록하기 눌렀을떄
	    function tos() {
			for (var i = 0; i < c; i++) {
				var tost = $('#tag_s'+i).val();
				tarr.push(tost);
				console.log(tarr[i]);
			}
			$('#tag_list_h').val(tarr);
			var ttt = $('#tag_list_h').val();
			console.log(ttt);
			//이미지이름
			var today = new Date();
			var year = today.getFullYear();
			var month = ('0' + (today.getMonth() + 1)).slice(-2);
			var day = ('0' + today.getDate()).slice(-2);
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var fArray = new Array();
			for (var i = 0; i < pfcount; i++) {
				var ti = hours + minutes + seconds;
				var fnn = i + ti + filename[i];
				fArray.push(fnn);
				$('#product_img'+(i+1)).val(fnn);				
				console.log(fArray);
			}
			var pid = year + month + day + hours + minutes + seconds
			$('#product_id').val(pid);
			$('#image_h').val(fArray);
			console.log($('#image_h').val());
		}
		
	    // 이미지 클릭 시 삭제
        $('#pf_img1').click(function(e){
            var pfdel = e.target.getAttribute('id');
            console.log(pfdel);
            e.target.remove();
            var re = pfcount-1;
            $("#oimage_file_name"+re).val("");
            $("input").remove("#oimage_file_name"+pfcount);
            pfcount--;
        });
	    //태그----------------------------------------------
       
        	function tag_p() {
        		const a = $('#tag_div');
        		var ta = $("#product_category").val();
        		if (ta == "") {
        			alert("카테고리를 선택해주세요")
				}else {
					a.append('<div id="tdl'+c+'">');
					if(c<5){
	    				var tdl = $('#tdl'+c);
	    				tdl.append('<select id="tag_s'+c+'">');
	    				var d = $('#tag_s'+c);
	    				for (var i = 0; i < arr.length; i++) {	    					
	    					d.append("<option>"+arr[i]+"</option>");
	    				}
	    				c++;
	    				//console.log(c);
	        		}else{
	        			alert("그만 눌러주세요 ㅠ");
	        		}
				}		      						
			}
       
        	function dt() {
        		if (c==0) {
					alert("태그를 추가해주세요");
				}else {
					var dtc = c-1;
	        		var ths = $('#tag_s'+dtc);
	        		ths.remove();
	        		c--;
				}
        		
			}
        	
        	
        function change_tag() {
        	$.ajax({
				url : "/rest/tagList",
				dataType : "json",
				type : "POST",
				data : {
					tag_cate : $("#product_category").val(),
				},
				success : function(data) {
						//오브젝트값 포문으로 뽑아내기
						arr = [];
						$("#tag_cate_h").val(Object.keys(data));
						for (var i = 0; i < (data[Object.keys(data)]).length; i++) {
							//console.log(data[Object.keys(data)][i]);
							arr.push(data[Object.keys(data)][i]);							
						}
						//console.log(arr);
						//console.log(c);
						//console.log(Object.keys(data));	//오브젝트의 키
						//console.log(data[Object.keys(data)]);	//오브젝트의 값						
				}
			})
		}
    </script>

</body>
</html>