<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기 페이지</title>
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
	     <section>
	     	<h2>예약 하기</h2>
	     	<label>이름</label><input type="text" class="form-control" name="name" id="nameInput">
	     	<label>예약 날짜</label><input type="text" class="form-control" name="date" id="dateInput">
	     	<label>숙박 일수</label><input type="text" class="form-control" name="day" id="dayInput">
	     	<label>숙박 인원</label><input type="text" class="form-control" name="headcount" id="headcountInput">
	     	<label>전화번호</label><input type="text" class="form-control" name="phoneNumber" id="phoneNumberInput"><br>
	     	<input type="click" value ="예약하기" class="btn bg-primary" id="clickBtn">
	     </section>
	 </div>
	 
	 <script>
		$(document).ready(function(){
			
			$("#clickBtn").on("click",function(){
				let name = $("#nameInput").val();
				let date = $("#dateInput").val();
				let day = $("#dayInput").val();
				let headcount = $("#headcountInput").val();
				let phoneNumber = $("#phoneNumberInput").val();
				
				if(name == ""){
					alert("이름을 입력하시오");
					return false;
				}
				if(date == ""){
					alert("예약날짜를 입력하시오");
					return false;
				}
				if(day == ""){
					alert("숙박 일수를 입력하시오");
					return false;
				}
				if(headcount == ""){
					alert("숙박 인원을 입력하시오");
					return false;
				}
				if(phoneNumber == ""){
					alert("전화번호를 입력하시오");
					return false;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/test03/add",
					data:{"name":name, "date":date,"day":day,"headcount":headcount,"phoneNumber":phoneNumber},
					success:function(data){
						if(data == "success"){
							alert("입력 성공");
							location.href="/lesson06/test03/listpage";
						}
						else{
							alert("입력 실패");
							history.go(0);
						}
						
					},
					error:function(){
						alert("에러발생");
					}
				});
				return false;
			});
			
		});
	</script>

</body>
</html>