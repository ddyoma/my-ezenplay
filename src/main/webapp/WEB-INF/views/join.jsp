<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>   <!-- 아이디 비밀번호 비밀번호확인 이메일  이름  생년월일(달력) 성별(볼륨) 폰번호1(셀렉박스) 폰번호2 주소 상세주소 프로필사진(파일) 선호장르(셀렉박스)  -->
            
	
<jsp:include page="/include/head.jsp"></jsp:include>
</head>

<body>

	<!-- Banner -->
	<div ID="banner-wrapper">
		<div ID="banner" class="box container">
			<div class="row">
				<div class="col-7 col-12-medium">


			
			 <form method="POST" enctype="multipart/form-data" action ="/memeberjoin">
					ID : <input type="text" name="userId">
					비밀번호 : <input type="password" name="userPwd">
					비밀번호 확인 : <input type="password" name="#">
					이메일 : <input type="email" name="userEmail">
					이름 : <input type="text" name="userName">
					생년월일 : <input type="date" name="userDateOfBirth">
					성별 : <select class="custom-select" id="inputGroupSelect04" name="userGender"><option value="여성">여성</option>
					<option value="남성">남성</option></select>
					<br>
										<input type="radio" value="남성">
					<br>
					프로필사진 : <input type="file" name="userFile">
					<br>
					<br>
					폰번호 : <input type="text" name="userPhone">
					주소 : <input type="text" name="userAddr1">
					상세주소 : <input type="text" name="userAddr2">
					선호장르 : <select class="custom-select" id="inputGroupSelect04" name="favoriteGame"><option value="1">SF</option><option value="2">RPG</option></select>
					<button type="button" onclick="insert()">전송</button>
			</form>
					
				</div>
			</div>
		</div>
	</div>







<script> function insert(){
	var x = new XMLHttpRequest();
	x.open('POST', '/memberjoin');
	x.onreadystatechange = function(){
		if (x.readyState == 4 && x.status == 200) {
			if(x.responseText && x.responseText!=null){
				alert('등록완료');
				location.href='/';
			}
		}
	}
	var formData = new FormData();
	var userId = document.querySelector('[name=userId]');
	var userPwd = document.querySelector('[name=userPwd]');
	var userEmail = document.querySelector('[name=userEmail]');
	var userName = document.querySelector('[name=userName]');
	var userDateOfBirth = document.querySelector('[name=userDateOfBirth]');
	var userGender = document.querySelector('[name=userGender]');
	var userFile = document.querySelector('[name=userFile]');
	var userPhone = document.querySelector('[name=userPhone]');
	var userAddr1 = document.querySelector('[name=userAddr1]');
	var userAddr2 = document.querySelector('[name=userAddr2]');
	var favoriteGame = document.querySelector('[name=favoriteGame]');
	formData.append('userId',userId.value);
	formData.append('userPwd',userPwd.value);
	formData.append('userEmail',userEmail.value);
	if(userFile.files[0]){
		formData.append('userFile',userFile.files[0]);
	}
	formData.append('userName',userName.value);
	formData.append('userDateOfBirth',userDateOfBirth.value);
	formData.append('userGender',userGender.value);
	formData.append('userPhone',userPhone.value);
	formData.append('userAddr1',userAddr1.value);
	formData.append('userAddr2',userAddr2.value);
	formData.append('favoriteGame',favoriteGame.value);
	x.send(formData);
}</script>

<jsp:include page="/include/menufooter.jsp"></jsp:include>
</body>
</html>
