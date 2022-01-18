<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<header>
			<h1>통나무 팬션</h1>
		</header>
		<nav class="d-flex align-items-center" style="background-color: burlywood;">
	                <div class="col-3 text-center"><a href="#" class="text-white ">팬션소개</a></div>
	                <div class="col-3 text-center"><a href="#" class="text-white">객실보기</a></div>
	                <div class="col-3 text-center"><a href="#" class="text-white">예약안내</a></div>
	                <div class="col-3 text-center"><a href="#" class="text-white">커뮤니티</a></div>
	     </nav>
	      <section class="imgbox">
                <img src="http://marondal.com/material/images/dulumary/web/front/jquery/test06_banner1.jpg" class="img" id="imgchange" style="width:100%">
            </section>
            <section class="reserve d-flex" style="background-color: burlywood;">
                <div class=" col-3 reservefont1 d-flex justify-content-center align-items-center">실시간<br><br>예약하기</div>
                <div class=" col-6">
                    <div class=" mt-3">
                        <label class="reservefont2 w-25">예약 확인</label>
                    </div>
                    <div class="  mt-3 " id="name">
                        <div class="d-flex">   
                            <div class="w-25">이름 :</div>
                            <div class="w-75"><input type="text" id="nameCheck"></div>
                        </div>
                    </div>
                    <div class="  mt-3 " id="number">
                        <div class="d-flex">
                            <div class="w-25">전화번호 :</div>
                            <div class="w-75"><input type="text" id="phoneNumberCheck"></div>
                        </div>
                    </div>
                    <button type="button" class="btn float-right mt-3" id="checkBtn">조회하기</button>
                </div>
                <div class="backcol1 col-3 reservefont1 d-flex justify-content-center align-items-center">예약 문의:<br>010-<br>000-1111</div>
            </section>
	</div>
	<script>
		$(document).ready(function(){
			$("#checkBtn").on("click",function(){
						let name = $("#nameCheck").val();
						let phoneNumber = $("#phoneNumberCheck").val();
						
						if(name == ""){
							alert("이름을 입력하시오");
							return false;
						}
						if(phoneNumber == ""){
							alert("번호를 입력하시오");
							return false;
						}
						$.ajax({
							type:"get",
							url:"/lesson06/test03/checkreserve",
							data:{"name":name, "phoneNumber":phoneNumber},
							success:function(data){
								if(data.name == name && data.phoneNumber == phoneNumber){
									alert("이름 : " + data.name + "\n"
											+"날짜 : " + data.date +"\n"
											+"일수 : " + data.day + "\n"
											+"인원 : " + data.headcount + "\n"
											+"상태 : " + data.state);
									
								}
								else{
									alert("조회결과가 없습니다.");
									
								}
							},
							error:function(){
								alert("에러발생");
							}
						});
					});
		});
		</script>
</body>
</html>