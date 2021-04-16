<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Eterna Bootstrap Template - Index</title>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="description">
  <meta content="" name="keywords">
  <jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include>
</head>
<style>
.probox {
margin: auto;
    width: 100px;
    height: 100px; 
    border-radius: 70%;
    overflow: hidden;
}

.profileone {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>
<body>
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
<jsp:include page="/WEB-INF/views/home/maintempletslide.jsp"></jsp:include><!-- 대왕슬라이드 -->
<br /><br /><br /><br /><br /><br /><!-- 슬라이드랑 바디부분 띄어쓰기 -->
 <main id="main">
 <!-- ======= About Section ======= -->
<section id="about" class="about">
	<div class="container">
   <!-- 바디에 작성할공간여기부터 -->
   

<jsp:include page="/WEB-INF/views/home/maintempletbodysection.jsp"></jsp:include><!-- 가운데바디1섹션 -->
<jsp:include page="/WEB-INF/views/home/login.jsp"></jsp:include><!-- 로그인창 -->
<!-- 바디에 작성공간여기까지 -->
	</div>
</section><!-- End About Section -->
<jsp:include page="/WEB-INF/views/customercenter/reviewslide.jsp"></jsp:include><!-- 리뷰슬라이드-->
<jsp:include page="/WEB-INF/views/home/maintempletfootersection.jsp"></jsp:include><!-- 가운데바디2섹션 service형태라 안쓸듯 -->
<jsp:include page="/WEB-INF/views/home/maintempletclient.jsp"></jsp:include><!-- client -->
 </main><!-- End #main -->
<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
   


</body>

</html>