<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>AJAX로 submit 대신 웹 요청하기</title>
</head>

<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<body>
	<h1>라이센스 정보 추가하기</h1>
	<form method="post" action="/lesson06/test/add" id="joinForm">
		<label>이름</label><input type="text" name="name" class="form-control" id="nameInput"><br>
		<label>자격증</label><input type="text" name="license" class="form-control" id="licenseInput"><br>
		<label>점수</label><input type="text" name="score" class="form-control" id="scoreInput"><br>
		<button type="button" class="btn" id="submitBtn">등록</button>
	</form>
	
	<script>
		$(document).ready(function(){
			$("#submitBtn").on("click",function(){
				$.ajax({
					type:"post",
					url:"/lesson06/test/add",
					data:{"name":name, "license":license, "score":score},
					success:function(data){
						alert(data);
					},
					error:function(){
						alert("에러발생");
					}
				})
				return false;
			})
		})}
	</script>
</body>
</html>