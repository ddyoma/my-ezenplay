<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Bootstrap FAQ Template | PrepBootstrap</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="/include/head.jsp"></jsp:include>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/review.css" /> <!-- 리뷰,질의응답css -->
<script src="/resources/js/jquery.star.js"></script>
</head>
<body>

<a title="" href="#">더 이젠</a>
							    <div class="mark">My rating: 
<div id="collapseOne" class="panel-collapse collapse in"></div>
<span class="span_class" id="count"></span>
<script>window.onload = function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/review/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var r = JSON.parse(xhr.responseText);
			var h = '';
			for(var view of r){
				var revNum = view.revNum;
				var revStar = view.revStar;
			}
			$('.span_class').text(revStar);
		}
	}
	xhr.send();
}</script>
</body>
</html>