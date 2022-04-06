<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=1300">
        <title>owner Detail page</title>
        <link rel="stylesheet" href="../../resources/css/reset.css">
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
        <link rel="stylesheet" href="/resources/css/ownerRoom.css">
        
    
        <script src="/resources/js/jquery-3.6.0.min.js"></script>
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script src="/resources/js/mobiscroll.jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/8d1d3d3a2e.js" crossorigin="anonymous"></script>
        <script src="/resources/js/main.js"></script>
        
        <link rel="shortcut icon" href="#">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    </head>
<body>

	<jsp:include page="../header.jsp" flush="true"/>

    <section id="sec_reg">
        <div class="oReg">
            <div class="oReg_in">
                <div class="roomhead">
                    <h3>객실등록</h3>
                    <!-- <div class="roomadd">
                        <div class="roomp pm_com" onclick="roomclone()">
                            <i class="fa-solid fa-plus"></i>
                        </div>
                        <div class="roomm pm_com" onclick="roomdel()">
                            <i class="fa-solid fa-minus"></i>
                        </div>
                    </div> -->
                </div>

                <!-- 객실등록 부분 -->
                <div id="roomregistration">
                    <div class="oReg_room">
                        <div class="reg_room">
                            <div class="rname r_com">
                                <p>객실이름</p>
                            </div>
                            <div class="rword r_com">
                                <p>객실설명</p>
                            </div>
                            <div class="rimg r_com">
                                <div class="rimg"><p>이미지</p></div>
                            </div>
                            <div class="rprice r_com">
                                <p>가격</p>
                            </div>
                        </div>

                        <!-- 객실 등록 폼-->
                        <div class="room_form">
                            <form action="/proDetailRegister" method="post" id="room" enctype="multipart/form-data" onclick="ros()">
                                <div class="rfname rf_com">
                                    <input type="text" placeholder="객실이름을 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='객실이름을 입력해 주세요.'" name="pd_name">
                                </div>
                                <div class="rfword rf_com">
                                    <input type="text" placeholder="객실설명을 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='객실설명을 입력해 주세요.'" name="pd_contents">
                                </div>

                                <div class="rfimgframe">
                                    <div class="rfimg rf_com">
                                        <div class="rfimg1 rfimg_com" id="rf_img1"></div>
                                        <!-- <div class="rfimg2 rfimg_com" id="rf_img2"></div>
                                        <div class="rfimg3 rfimg_com" id="rf_img3"></div> -->
                                    </div>
                                
                                    <div class="rfinputframe">
                                        <div class="rfimginput" id="rfimginput">
                                            <input type="file" id="orimage_file_name0"  accept="image/*" onchange="rfpreview(event);" name="orimage_file_name0">
                                        </div>
                                    </div>
                                </div>

                                <div class="rfprice rf_com">
                                    <input type="text" placeholder="객실가격을 입력해 주세요." onfocus="this.placeholder=''" onblur="this.placeholder='객실가격을 입력해 주세요.'" onkeypress="checkNumber(event);" class="pricecomma" name="pd_price"> 원
                                </div>
                                
                                <input type="hidden" name="rimage_h" id="rimage_h">
								<input type="hidden" name="pd_img1" id="pd_img1" value="def">
								<input type="hidden" name="pd_img2" id="pd_img2" value="def">
								<input type="hidden" name="pd_img3" id="pd_img3" value="def">
								<input type="hidden" name="product_id" id="product_id" value="${product_id}">
								
                            </form>
                        </div>
                        <!-- 객실 등록 폼 끝 -->
                    </div>
                </div>
                <!-- 객실등록 부분 끝 -->

            

                <div class="bottombtn">
                    <div class="backbtn btn_com" onclick="location.href='ownerList.html'">
                        <span>뒤로가기</span>
                    </div>
                    <div class="regbtn btn_com" onclick="$('#room').submit()">
                        <span>등록하기</span>
                    </div>
                </div>


            </div>
        </div>
    </section>

    <%@ include file="../footer.jsp"%>

    <script type="text/javascript">

        // 객실가격 숫자만 입력되게 하기
        function checkNumber(event){
            if(event.key >= 0 && event.key <=9){
                return true;
            }
            return false;
        }

        // 객실가격 , 찍기
        const inputcomma = 
            document.querySelector("#sec_reg .pricecomma");
            inputcomma.addEventListener('keyup', function(ee){
                let value = ee.target.value;
                value = Number(value.replaceAll(',',''));
                if(isNaN(value)){
                    inputcomma.value = '';
                }else {
                    const formatValue = value.toLocaleString('ko-KR');
                    inputcomma.value = formatValue;
                }
            })

        // 객실등록 이미지 프리뷰
        var filename = new Array();
        var rfcount = 0;
        function rfpreview(event) { 
        	var file = event.target.files[0]; //파일에 대한 정보
    		filename.push(file.name);
        	console.log(file);
        	
            for (var rfimgpreview of event.target.files) { 
	                var reader = new FileReader(); 
	                reader.onload = function(event) { 
	                    var img = document.createElement("img"); 
	                    img.setAttribute("src", event.target.result); 
	                    img.setAttribute("id", "roomimg"+rfcount); 
	                    document.querySelector("#rf_img1").appendChild(img);
	                    
	                    rfcount++;
	                    if(rfcount <= 2){
	                    const element2 = document.getElementById('rfimginput');
	                    const newInput = document.createElement('input');
	    				newInput.setAttribute("type", "file");
	    				newInput.setAttribute("id", "orimage_file_name" + rfcount);
	    				newInput.setAttribute("name", "orimage_file_name" + rfcount);
	    				newInput.setAttribute("onchange", "rfpreview(event);");
	    				element2.appendChild(newInput);
	                    }
	                }; 
                    
                } 
                if(rfcount > 3){
                    alert("이미지는 최대 3개까지 등록 가능합니다.");
                } else{
                    reader.readAsDataURL(rfimgpreview);  
                }
            }

        // 이미지 클릭 시 삭제
        $('#rf_img1').click(function(e){
        var rfdel = e.target.getAttribute('id');
            console.log(rfdel);
            e.target.remove();
            var re = rfcount-1;
            $("#orimage_file_name"+re).val("");
            $("input").remove("#orimage_file_name"+rfcount);
            rfcount--;
        });

        function ros() {

			//이미지이름
			var today = new Date();
			var hours = ('0' + today.getHours()).slice(-2);
			var minutes = ('0' + today.getMinutes()).slice(-2);
			var seconds = ('0' + today.getSeconds()).slice(-2);
			var fArray = new Array();
			for (var i = 0; i < rfcount; i++) {
				var ti = hours + minutes + seconds;
				var fnn = i + ti + filename[i];
				fArray.push(fnn);
				$('#pd_img'+(i+1)).val(fnn);
				console.log(fArray);
			}
			$('#rimage_h').val(fArray);
			console.log($('#rimage_h').val());
		}


        // 객실등록 개수 늘리기
        let raddcount = 0;
        let roomdiv = "";
        let newdiv = "";
        let didarray = new Array();
        function roomclone(){
            raddcount++;
            roomdiv = document.getElementById('roomregistration');
            // 노드복사
            newdiv = roomdiv.cloneNode(true);
            document.getElementById('roomregistration').appendChild(newdiv);
            // 복사된 노드 id 변경
            newdiv.id = 'roomregistration' + raddcount;   
                    
            if(newdiv.id == 'roomregistration1'){
                didarray[0] = 'roomregistration1';
            }else {
                for(var i = 1 ; i < raddcount; i++){
                    for(var j = i; j < i+1 ; j++){
                        j++;
                        didarray[i] = 'roomregistration' + j;
                    }
                }
            }

            // 복사한 노드 붙여넣기
            roomdiv.after(newdiv);
        }

        // 객실등록 개수 줄이기
        function roomdel(){
            let lastdiv = didarray[didarray.length -1];
            const arrdel = document.getElementById(lastdiv);
            arrdel.remove();
            didarray.pop();
            raddcount--;
        }
    
    </script>

</body>
</html>