<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<title>ezen</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
</head>
<jsp:include page="/include/head.jsp"></jsp:include>



<!-- Banner -->
<div ID="banner-wrapper">
	<div ID="banner" class="box container">

		<div class="row">
			<div class="col-7 col-12-medium">
			</div>
				<div class="container">
					<div class="user">
				<c:if test="${UserInfo eq null }">
				    <div><br>
					<button onclick="location.href='/views/login'">ezenPlay 로그인</button>
				    </div>	
				    <br> <a href="#">아이디/비번찾기</a> <a href="#">회원가입</a>
				    <div class="col-5 col-12-medium"></div>
				</c:if>
				</div>
				<c:if test="${UserInfo ne null }">
					<!-- 간이정보셀렉트조직과 연결되는부분 -->
					<table>
					<tr>
					 <th>아이디</th>
					 <th>비번</th>
					</tr>
					<tbody id="tBody">
					</tbody>
					</table>
						<button onclick="logout()">로그아웃</button>
						
						<script>window.onload = function(){
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
	<script>//간이정보셀렉트로직
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
					location.href = '/';
					return;
				}
				alert('아이디 혹은 비밀번호 확인해주세요.');
			}
		}
		xhr.setRequestHeader('content-type', 'application/json;charset=UTF-8');
		xhr.send(JSON.stringify(p));
	}
</script>


<jsp:include page="/include/body.jsp"></jsp:include>
</body>
</html>