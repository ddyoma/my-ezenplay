<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--<c:if test="${UserInfo eq null }">
<script>
 alert('좌석현황 열람 권한이 없습니다.');
location.href='/';
</script>
</c:if>-->
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
<jsp:include page="/WEB-INF/views/food/foodHead.jsp"></jsp:include><!-- 푸드 메뉴 페이지 -->
</head>

<body>
	<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
<div class="container">
<ol>
<li><a href="index.html">Home</a></li>
<li>Contact</li>
</ol>
<h2>Contact</h2>
</div>
</section>
<!-- End Breadcrumbs -->
<!-- ======= Contact Section ======= -->
<main>
<section id="contact" class="contact">
<div class="container">
<div class="row">
<!-- 여기서부터 내용입력 -->
<!-- 사이드 바 시작 -->
<div class="wrapper d-flex align-items-stretch">
<nav id="sidebar" style="background-color: #535353;">
<div class="p-4 pt-5">
<h1><a href="index.html" class="logo">EZENPLAY</a></h1>
<ul class="list-unstyled components mb-5">
<li class="active" onclick="foodList()"><a href="#"  data-toggle="collapse" aria-expanded="false">Menu</a></li>
<li value="1"  onclick="foodinfo(this.value)"><a href="#" >Foods</a></li>
<li value="2"  onclick="foodinfo(this.value)"><a href="#">Snacks</a></li>
<li value="3"  onclick="foodinfo(this.value)"><a href="#">Drinks</a></li>
</ul>
<div class="mb-5">
<h3 class="h6">Search menu</h3>
<form action="#" class="colorlib-subscribe-form">
<div class="form-group d-flex">
<div class="icon">
<span class="icon-paper-plane"></span>
</div>
<input type="text" class="form-control" placeholder="Food Name">
</div>
</form>
</div>
<div class="footer">
<p>
Copyright &copy;
<script>
document.write(new Date().getFullYear());
</script>
All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
</p>
</div>
</div>
</nav>
<!-- 사이드 바 종료 -->
<!--  음식 메뉴 시작 -->
<div id="content" class="p-4 p-md-5 pt-5">
<div id="foodList" class="row"></div>	
</div>
</div>
<!--  음식 메뉴 종료 -->
<!-- 여기까지 내용입력 -->
</div>
</div>
</section>
</main>
</body>
<script>
	window.onload = function(){
		foodList()
	}
	
	function foodList(){
		var xhr = new XMLHttpRequest();
		xhr.open('GET', '/food-list');
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var res = JSON.parse(xhr.responseText);
				var html ='';
				for(var foods of res){
					console.log(foods.foodImgName);
					
					html += '<div class="col-md-4">';
					html += '<div class="card mb-4 shadow-sm">';
					html += '	<img class="card-img-top"';
					html += '		src="/resources/images/food/'+foods.foodImgName+'"';
					html += 'alt="'+foods.foodImgName+'">';
					html += '	<div class="card-body">';
					html += '	<p class="card-text">'+foods.foodDesc+'</p>';
					html += '	<div';
					html += '		class="d-flex justify-content-between align-items-center">';
					html += '		<div class="btn-group">';
					html += '			<button type="button"';
					html += '			class="btn btn-sm btn-outline-secondary">'+foods.foodName+'</button>';
					html += '		<button type="button"';
					html += '				class="btn btn-sm btn-outline-secondary">'+foods.foodPrice+'원</button>';
					html += '		</div>';
					html += '		<small class="text-muted">'+foods.foodCookTime+' mins</small>';
					html += '		</div>';
					html += '	</div>';
					html += '	</div>';
					html += '	</div>';
				}
				document.querySelector('#foodList').innerHTML=html;
			}
		}

		xhr.send();

	}
	
	function foodinfo(obj) {
		
		if(obj==1){
			var foodType = '음식';
		}else if(obj==2){
			var foodType = '간식';
		}else if(obj==3){
			var foodType = '음료수';
		}
		

		var xhr = new XMLHttpRequest();
		xhr.open('GET', '/food-info?foodType='+foodType+'');
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var res = JSON.parse(xhr.responseText);
				var html ='';
				for(var foods of res){					
					html += '<div class="col-md-4">';
					html += '<div class="card mb-4 shadow-sm">';
					html += '	<img class="card-img-top"';
					html += '		src="/resources/images/food/'+foods.foodImgName+'"';
					html += 'alt="'+foods.foodImgName+'">';
					html += '	<div class="card-body">';
					html += '	<p class="card-text">'+foods.foodDesc+'</p>';
					html += '	<div';
					html += '		class="d-flex justify-content-between align-items-center">';
					html += '		<div class="btn-group">';
					html += '			<button type="button"';
					html += '			class="btn btn-sm btn-outline-secondary">'+foods.foodName+'</button>';
					html += '		<button type="button"';
					html += '				class="btn btn-sm btn-outline-secondary">'+foods.foodPrice+'원</button>';
					html += '		</div>';
					html += '		<small class="text-muted">'+foods.foodCookTime+' mins</small>';
					html += '		</div>';
					html += '	</div>';
					html += '	</div>';
					html += '	</div>';
				}
				document.querySelector('#foodList').innerHTML=html;
			}
		}

		xhr.send();

	}
</script>
<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
</html>