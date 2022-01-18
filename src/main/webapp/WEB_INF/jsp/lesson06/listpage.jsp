<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트 페이지</title>
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
	     	<h2>예약 목록 보기</h2>
	     	<table class="table">
	     		<thead>
	     			<tr>
	     				<th>이름</th>
	     				<th>예약 날짜</th>
	     				<th>숙박 일수</th>
	     				<th>숙박 인원</th>
	     				<th>전화번호</th>
	     				<th>예약상태</th>
	     				<th>취소</th>
	     			</tr>
	     		</thead>
	     		<tbody>
	     		<c:forEach var="booking" items="${booking }" varStatus="status">
	     			<tr>
	     				<td>${booking.name }</td>
	     				<td><fmt:formatDate  value="${booking.date }" pattern="yyyy년 M월 d일"/></td>
	     				<td>${booking.day }</td>
	     				<td>${booking.headcount }</td>
	     				<td>${booking.phoneNumber }</td>
	     				<td>
	     				<c:choose>
	     					<c:when test="${booking.state eq '대기중' }">
	     						<span class="text-success">${booking.state}</span>
	     					</c:when>
	     					<c:when test="${booking.state eq '확정' }">
	     						<span class="text-primary">${booking.state}</span>
	     					</c:when>
	     					<c:when test="${booking.state eq '취소' }">
	     						<span class="text-danger">${booking.state}</span>
	     					</c:when>
	     				</c:choose>
	     				</td>
	     				<td><button type="button" class="btn bg-danger text-white deleteall" data-id= "${booking.id }">삭제</button></td>
	     			</tr>
	     		</c:forEach>
	     		</tbody>
	     	</table>
	     </section>
     </div>
	
	<script>
		$(document).ready(function(){
			
			$(".deleteall").on("click",function(){
				let id = $(this).data("id");
			
				$.ajax({
					type:"post",
					url:"/lesson06/test03/delete",
					data:{"id": id},
					success:function(data){
						if(data == "success"){
							alert("삭제 성공");
							history.go(0);
						}
						else{
							alert("삭제 실패");
							return false;
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