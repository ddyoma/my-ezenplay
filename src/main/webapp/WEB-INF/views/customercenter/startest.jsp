<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/head.jsp"></jsp:include>
<script src="/resources/js/jquery.star.js"></script></head>
<body>
<div ID="banner" class="box container">
			<div class="row">
				<div class="col-7 col-12-medium">
				<c:if test="${UserInfo ne null }">
				<form method="post" action="/review/insert" id="review">
				<div>
								<div class="probox" style="background: #BDBDBD;"> <!-- 사진미등록자는 기본프로필화면으로보이게 -->
								<img src="/images/user/별.png">
							</div>
					<input type="text" name="userNum" value="${UserInfo.userNum}">
					유저 : <input type="text" value="${UserInfo.userId}" readonly><br>
					리뷰남기기 : <textarea name="revComment"></textarea></div>
					<div id="stars" class="starrr"style="float:left"></div><span id="count"  >0</span> <br>
					<button onclick="upload()" type="button" >리뷰등록</button></form></c:if></div>
					</div>
				</div>


			
 <form> 
    <div class="row lead">
        <div id="stars" class="starrr"></div>
       <span id="count">0</span> 
	</div>
	</form> 
	
  <!--   <div class="row lead"> 처음부터 별점이 정해져있는로직
        <p>Also you can give a default rating by adding attribute data-rating</p>
        <div id="stars-existing" class="starrr" data-rating='4'></div>
        You gave a rating of <span id="count-existing">4</span> star(s)
    </div>--> 
<button type="button" onclick="star()">전송</button></form>-->

 <script>
function star() {//별점을 읽어들이는 태그
	var id_value = $('#count').text();
	var class_value = $('.starrr').text();
	alert(class_value);
	 alert(id_value);
}
</script>
</body>


</html>