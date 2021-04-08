<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>ezen</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
</head>
<jsp:include page="/include/head.jsp"></jsp:include>



<!-- Banner -->
<div ID="banner-wrapper">
	<div ID="banner" class="box container">
		<div class="row">
			<div class="col-7 col-12-medium">
메세지 입력가능
			</div>
		<div class="container">
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
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>
<form>
			  <div class="hand"></div>
			  <div class="hand rgt"></div>
	<c:if test="${UserInfo eq null }">
		<h1 style="font-style: inherit;">Log in</h1>
			<div class="form-group">
				<input required="required" id="userId" class="form-control"/>
			    <label class="form-label">Username    </label>
			</div>
			    <div class="form-group">
			    <input type="password" id="userPwd" required="required" class="form-control"/>
			    <label class="form-label">Password</label>
			    <p class="alert">아이디 비밀번호를 다시확인해주세요</p>
			    <button type ="button" class="btn" onclick="login()">Login </button>
			     <br> <a href="#">아이디/비번찾기</a> <a href="/views/join">회원가입</a>
			      <div class="col-5 col-12-medium"></div>
			  	</div></c:if>
			  	<c:if test="${UserInfo ne null }">
			     <button onclick="logout()">로그아웃</button>
	 </c:if>
  	<script>  //눈굴러가는 판다
  		$('#password').focusin(function(){
	 	 $('form').addClass('up')
		});
	$('#password').focusout(function(){
	  $('form').removeClass('up')
	});

	// Panda Eye move
	$( document ).on( "mousemove", function( event ) {
	  var x = event.pageX/50;
	  var y = event.pageY/25;
	  $('.eye-ball').css({
	    width : x,
	    height : y
	  });
	});

	// validation

	$('.btn').click(function(){
	  $('form').addClass('wrong-entry');
	    setTimeout(function(){ 
	       $('form').removeClass('wrong-entry');
	     },3000 );
	});
  </script>
</form>
	
  
					
				   
				   
				
				<c:if test="${UserInfo ne null }">
					<!-- 간이정보셀렉트조직과 연결되는디자인 추후추가 -->
			
					<table><!-- 전체list실험용  -->
					<tr>
					 <th>아이디</th>
					 <th>비번</th>
					</tr>
					<tbody id="tBody">
					</tbody>
					</table>
					
					
					
						
						
						<script>window.onload = function(){ //전체리스트
							
							var xhr = new XMLHttpRequest();
							xhr.open('GET', '/user');
							xhr.onreadystatechange = function(){
								if(xhr.readyState==4 && xhr.status==200){
									console.log(xhr.responseText);
									var res = JSON.parse(xhr.responseText);
									var h = '';
									for(var user of res){
										
										h += '<tr>'; 
										h += '<td>' + user.userId + '</td>'; 
										h += '<td>'+ user.userPwd + '</td>';  
										h += '</tr>';
										
									}
									document.querySelector('#tBody').innerHTML = h;
								}
							}
							xhr.send();
						}</script>
						
				</c:if>

				
					<div class="col-5 col-12-medium"></div>
				</div>
			</div>
		</div>
	</div>
	
	<c:if test="${UserInfo ne null }">
	<script>//간이정보셀렉트로직 추가예정
	</script>
	</c:if>
	
	<script>//로그아웃로직
		function logout() {
			var xhr = new XMLHttpRequest();
			xhr.open('POST', '/logout');
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					if (xhr.responseText == 'true') {
						location.href = '/';
					}
				}
			}
			xhr.send();
		}
	</script>
<script>//로그인로직
	function login() {
		var p = {
				userId : document.querySelector('#userId').value,
			userPwd : document.querySelector('#userPwd').value
		}
		var xhr = new XMLHttpRequest();
		xhr.open('POST', '/login');
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				if (xhr.responseText) {
					var res = JSON.parse(xhr.responseText);
					alert(res.userId + '반갑습니다.');
					alert(res.userNum + '반갑습니다.');
					location.href = '/';
					return;
				}
			}
		}
		xhr.setRequestHeader('content-type', 'application/json;charset=UTF-8');
		xhr.send(JSON.stringify(p));
	}
</script>


<jsp:include page="/include/body.jsp"></jsp:include>
</body>
</html>