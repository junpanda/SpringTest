<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="d-flex">
		<div class="col-2 bg-primary">
		<h4>기상청</h4>
		날씨<br>
		날씨입력<br>
		테마날씨<br>
		관측 기후<br>
		</div>
		<div class="col-10">
			<h1>날씨 입력</h1>
			<form method="post" action="/lesson05/ex06/add">
				<label>날짜</label><input type="text" class="form-control" name="date">
				<label>날씨</label><input type="text" class="form-control" name="weather">
				<label>미세먼지</label><input type="text" class="form-control" name="microDust">
				<label>기온</label><input type="text" class="form-control" name="temperatures">
				<label>강수량</label><input type="text" class="form-control" name="precipitation">
				<label>풍속</label><input type="text" class="form-control" name="windSpeed">
				<input type="submit" value ="추가" class="btn btn-success">
			</form>
		</div>
	
	</div>

</body>
</html>