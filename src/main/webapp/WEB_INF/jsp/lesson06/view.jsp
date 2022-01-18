<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>결과 페이지 이동</title>
</head>
<body>
	<h1>즐겨 찾기 목록</h1>
	<table class="table">
		<thead>
			<tr>
				<td>NO.</td>
				<td>이름</td>
				<td>자격증</td>
				<td>점수</td>
				<td>삭제</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="entrant" items="${entrant }" varStatus="status">
			<tr>
				<th>${status.count }</th>
				<th>${entrant.name }</th>
				<th>${entrant.license }</th>
				<th>${entrant.score }</th>
				<th><button type="button" class="btn bg-danger text-white deleteall" data-id= "${entrant.id }">삭제</button></th>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<script>
		$(document).ready(function(){
			
			$(".deleteall").on("click",function(){
				let id = $(this).data("id");
			
				$.ajax({
					type:"post",
					url:"/lesson06/test/delete",
					data:{"id": id},
					success:function(data){
						if(data == "success"){
							alert("삭제 성공");
							return false;
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