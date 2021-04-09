
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="utf-8" />
<meta name="viewport"content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<script src="/resources/js/jquery-3.5.1.slim.min.js"></script>

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<body class="is-preload homepage">

	<!--

	로그인전이면 메뉴가 다 막혀있습니다.  >  접근불가 팝업메세지로 변경

-->

	<div id="page-wrapper">

		<!-- Header -->
		<div id="header-wrapper">
			<header id="header" class="container">

				<!-- Logo -->
				<div id="logo">
					<h1>
						<a href="/">ezenPlay</a>
					</h1>
				</div>
				<!-- Nav -->
				<nav id="nav">
					<section id="Container">
						<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
					
						<div id="Content">
							<ul>
								<li class="current"><a href="/">홈</a></li>
								<li><a href="/views/seatlist" id ="c" >좌석현황</a></li>
								<li><a href="/views/food/food-list" id ="d">메뉴</a></li>
								<li><a href="/views/timecharge" id ="e">시간충전</a></li>
								<li><a href="/views/voccenter">고객센터</a></li>
							</ul>
						</div>
					</section>
				</nav>
			</header>

		<!-- 	<c:if test="${UserInfo eq null }">
			<script>
				$(function() {
					$('#c').click(function() {
						$("div#Content").addClass("foo");
						return false;
					});
					$('#d').click(function() {
						$("div#Content").addClass("foo");
						return false;
					});
					$('#e').click(function() {
						$("div#Content").addClass("foo");
						return false;
					});
				});
			</script>
			</c:if> -->
		</div>
	</div>
	