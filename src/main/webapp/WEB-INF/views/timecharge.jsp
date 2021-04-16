<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${UserInfo eq null }">
	<script>
		alert('시간충전 권한이 없습니다.');
		location.href = '/';
	</script>
</c:if>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<style>
button.button{

}
div.main {
    width: 100%;
    height: 600px;
    border: 1px solid #000;
    
}
div.left {
    width: 70%;
    float: left;
    background: #ededed;
    
}
div.right {
    width: 30%;
    float: right;
    
}
.btn:hover {
  color: black;
  background-color: #e96b56 !important;
}

.btn:focus {
  color: white;
  background-color: #e96b56 !important;
}

.btn:active {
  color: white;
  background-color: #e96b56 !important;
}

.icon-box:hover {
  color: red;
  background-color: #e96b56 !important;
}

.icon-box:focus {
  color: white;
  background-color: #e96b56 !important;
}

.icon-box:active {
  color: #e96b56;
  background-color: #e96b56 !important;
}
.btn{
margin-left: 30px;
margin-right: 30px;
}
.icon-box{
margin-left: 20px;
margin-right: 20px;
margin-bottom: 40px; 
margin-top: 40px;
}
.send{
margin-left: 80px;
}
.send:hover {
  color: black;
  background-color: green !important;
}

.send:focus {
  color: white;
  background-color: green !important;
}

.send:active {
  color: white;
  background-color: white !important;
}
.cancel{
margin-left: 40px;
}
.cancel:hover {
  color: black;
  background-color: red !important;
}

.cancel:focus {
  color: white;
  background-color: red !important;
}

.cancel:active {
  color: white;
  background-color: white !important;
}
.user_card{
 background-color: #e96b55;
 width: 332px;
 height: 360px;
}

</style>
</body>
<!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.html">Home</a></li>
          <li>Contact</li>
        </ol>
        <h2>Contact</h2>

      </div>
    </section><!-- End Breadcrumbs -->
    
<!-- ======= Contact Section ======= -->
<main>
    <section id="featured" class="featured">
      <div class="container">
		<form method="post">
		<div class="main">
		<div class="left">
        <div class="btn-group">
        <div class="row-1">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-1" id="rad" value="1000"> 1000원
		</label>
            </div>
        <div class="btn-group">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-2" id="rad" value="2000"> 2000원
		</label>
            </div>
        <div class="btn-group">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-3" id="rad" value="3000"> 3000원
		</label>
            </div>
           </div>
         <div class="row-2">
        <div class="btn-group">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-4" id="rad" value="5000"> 5000원
		</label>
            </div>
        <div class="btn-group">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-5" id="rad" value="10000"> 10000원
		</label>
            </div>
        <div class="btn-group">
           <label class="icon-box" id="rad">
			<input type="radio" class="btn btn" name="jb-radio" id="jb-radio-6" id="rad" value="20000"> 20000원
		</label>
    	 	</div>
    	 </div>
		</div>
    	 <div class="right">
            <div class="user_card">
    	 <div class="info-box">
          	 <button type="button" class="send" onclick="charge()" onsubmit="radio">충전하기</button>
          	 <button type="reset" class="cancel">취소</button>
          	 </div>
          	 </div>
    	 </div>
		</form>	
 		</div>
    </section>
        </main>
        <!-- 여기까지 내용입력 -->
</body>
<script>
function charge(){
	window.open("/view/charge/pay","pay","width=700, height=800, left=900m top=400")
}

</script>
<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
</html>