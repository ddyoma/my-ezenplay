<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<li><a href="/views/seat" id ="c" >좌석현황</a></li>
								<li><a href="/views/food" id ="d">메뉴</a></li>
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