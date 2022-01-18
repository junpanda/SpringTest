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
	
		<label>이름</label><input type="text" name="name" class="form-control" id="nameInput"> <button type="button" id="duplicateBtn" class="btn">중복확인</button>
		<div id="check" class="d-none">중복입니다.</div><br>
		<label>자격증</label><input type="text" name="license" class="form-control" id="licenseInput"><br>
		<label>점수</label><input type="text" name="score" class="form-control" id="scoreInput"><br>
		<button type="click" class="btn" id="submitBtn">등록</button>

	
	<script>
		$(document).ready(function(){
			
			$("#submitBtn").on("click",function(){
				let name = $("#nameInput").val();
				let license = $("#licenseInput").val();
				let score = $("#scoreInput").val();
				var url="/lesson06/test/view"
				
				if(name == ""){
					alert("이름을 입력하시오");
					return false;
				}
				if(license == ""){
					alert("자격증을 입력하시오");
					return false;
				}
				if(score == ""){
					alert("점수를 입력하시오");
					return false;
				}
				
				$.ajax({
					type:"post",
					url:"/lesson06/test/add",
					data:{"name":name, "license":license,"score":score},
					success:function(data){
						if(data == "success"){
							alert("입력 성공");
							$(location).attr('href',url);
						}
						else{
							alert("입력 실패")
						}
						
					},
					error:function(){
						alert("에러발생");
					}
				});
				return false;
			});
			
			$("#duplicateBtn").on("click",function(){
				let name = $("#nameInput").val();
				
				if(name == ""){
					alert("이름을 입력하시오");
					return false;
				}
				$.ajax({
					type:"get",
					url:"/lesson06/test/duplicate_name",
					data:{"name":name},
					success:function(data){
						if(data.isDuplicate == "true"){
							alert("중복입니다.");
							$("#check").removeClass("d-none");
						}
						else{
							alert("사용 가능");
							$("#check").addClass("d-none");
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