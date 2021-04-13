<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- 회원가입화면임; -->
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
</head>

<body>
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
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
	
ID : <input type="text" name="userId" ><button onclick="checkId()">중복확인</button>
			
			 <form method="POST" enctype="multipart/form-data" >
					
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
					선호장르 : <select class="custom-select" id="inputGroupSelect05" name="favoriteGame"><option value="1">SF</option><option value="2">RPG</option></select>
					<button type="button" onclick="insert()">전송</button>
			</form>
		</div>
	</div>
</section>
</main>		
		



<script>function checkId(){
	var userId = document.querySelector('[name=userId]').value;

var xhr = new XMLHttpRequest();
xhr.open('POST', '/check'); 
xhr.onreadystatechange = function(){
	if(xhr.readyState==4 && xhr.status==200){
		console.log(xhr.responseText);
		var res = JSON.parse(xhr.responseText);
		alert(res); 
		if(res==true){
			alert('해당아이디로는 가입이 불가능');
			document.querySelector('[name=userId]').value = '';
			document.querySelector('[name=userId]').focus();
		}else{
			alert('가입가능한 아이디입니다.');
		}
	}
}
	xhr.send(userId);
}

</script>


<script> 

function insert(){
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

<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
</body>
</html>
