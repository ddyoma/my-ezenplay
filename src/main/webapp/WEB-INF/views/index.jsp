<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>ezen</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<jsp:include page="/include/head.jsp"></jsp:include>
<link rel="stylesheet" href="/resources/css/panda.css" />
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
.btn {
  background: #fff;
  padding: 5px;
  width: 150px;
  height: 35px;
  border: 1px solid #0080ff;
  margin-top: 25px;
  cursor: pointer;
  transition: 0.3s;
  box-shadow: 0 50px #0080ff inset;
  color: #fff;
}
.btn:hover {
  box-shadow: 0 0 rgb(0, 0, 0) inset;
  color: rgb(0, 0, 0);
}
.btn:focus {
  outline: none;
}
</style>
<!-- 프로필사진/판다 위치 스타일 변경x-->

<body>
<!-- Banner -->
<div ID="banner-wrapper">
	<div ID="banner" class="box container">
		<div class="row">
			<div class="col-7 col-12-medium">
			</div>
				<div class="container" style="float:right;">
				<jsp:include page="/WEB-INF/views/home/testslider.jsp"></jsp:include>    <!-- pc방사진레이아웃 -->
			</div>

			<div class="container" style="text-align: center;">
				<div class="pandas">
				<div class="panda">
	  				<div class="ear"></div>
	  			<div class="face">
	   				<div class="eye-shade"></div>
	    		<div class="eye-white">
	      			<div class="eye-ball"></div>
	    			</div>
	    		<div class="eye-shade rgt"></div>
	    			<div class="eye-white rgt">
	      				<div class="eye-ball"></div>
	   					</div>
	    			<div class="nose"></div>
						<div class="mouth"></div>
				</div>
			</div>
<form>
		<div class="hand"></div>
		<div class="hand rgt"></div> 

	<c:if test="${UserInfo ne null }">
		<div class="probox" style="background: #BDBDBD;"> <!-- 사진미등록자는 기본프로필화면으로보이게 -->
			<img class="profileone" src="/images/user/${UserInfo.profilePath}" onerror="this.style.display='none'"alt='' /> 
		</div>
		<div class="profont">
			${UserInfo.userName }님 반갑습니다.<br>
			나의남은시간${UserInfo.restOfTime }<br>
			나의마일리지${UserInfo.userMileage }<br>
			<button type="button" onclick="location.href='/views/useraccount'" >내정보</button>
			<button type="button" onclick="#">예약내역</button>
			<button type="button" onclick="#">결제내역</button>
			<button onclick="logout()" type="button">로그아웃</button>
		</div>
	</c:if>
	<c:if test="${UserInfo eq null }">
		<h1 style="font-style: inherit;">Log in</h1>
			<div class="form-group">
				<input required="required" id="userId" class="form-control" value="admin"/>
			    <label class="form-label">id    </label></div>
			    <div class="form-group">
			    <input type="password" id="userPwd" required="required" class="form-control" value="test"/>
			    <label class="form-label">Password</label>
			    <button type ="button" class="btn" onclick="login()"style="width: 70%">Login </button>
			    <br> <a href="#">아이디/비번찾기</a> <a href="/views/join">회원가입</a>
			    <p class="alert">아이디 비밀번호를 다시확인해주세요</p>
			      <div class="col-5 col-12-medium"></div>
			</div>
	</c:if>
</form>		
					</div>
				</div>
			</div>
		</div>
	</div>
	
 
<script src="/resources/js/pandaeyes.js"></script><!--  눈굴러가는판다--><!-- 여기까지 판다form프로필 해체불가 -->
<script src="/resources/js/logindi.js"></script>
<jsp:include page="/include/body.jsp"></jsp:include>
</body>
</html>