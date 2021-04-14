<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!-- 회원가입화면임; -->
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
</head>
<style>

body {
    background: #fff;
	font-family: 'Roboto', sans-serif;
	color:#333;
	line-height: 22px;	
}
h1, h2, h3, h4, h5, h6 {
	font-family: 'Roboto Condensed', sans-serif;
	font-weight: 400;
	margin-top:5px;
	margin-bottom:5px;
}
h1, h2, h3 {
	text-transform:uppercase;
}

input.upload {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 12px;
    cursor: pointer;
    opacity: 1;
    filter: alpha(opacity=1);    
}

.form-inline .form-group{
    margin-left: 0;
    margin-right: 0;
}
.control-label {
    color:#333333;
}
</style>

<body>
 <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="index.html">Home</a></li>
          <li>회원가입</li>
        </ol>
        <h2>회원가입</h2>

      </div>
    </section><!-- End Breadcrumbs -->
    
<!-- ======= Contact Section ======= -->
<!--
<main>
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
	

			
			 <form method="POST" enctype="multipart/form-data" action="/memberjoin" >
                  <div class="form-input">
                      <label for="first_name" class="required">아이디</label>
                      <input type="text" name="first_name" id="first_name" />
                  </div>
					ID : <input type="text" name="userId"  onchange="idChack=false;" ><button onclick="checkId()" type="button">중복확인</button><br>
					비밀번호 : <input type="password" name="userPwd"><br>
					비밀번호 확인 : <input type="password" name="#"><br>
					이메일 : <input type="email" name="userEmail"><br>
					이름 : <input type="text" name="userName"><br>
					생년월일 : <input type="date" name="userDateOfBirth"><br>
					성별 : <select class="custom-select" id="inputGroupSelect04" name="userGender"><option value="여성">여성</option><br>
					<option value="남성">남성</option></select>
					<br>
										<input type="radio" value="남성">
					<br>
					프로필사진 : <input type="file" name="userFile">
					<br>
					<br>
					폰번호 : <input type="text" name="userPhone"><br>
					주소 : <input type="text" name="userAddr1"><br>
					상세주소 : <input type="text" name="userAddr2"><br>
					선호장르 : <select class="custom-select" id="inputGroupSelect05" name="favoriteGame"><option value="1">SF</option><option value="2">RPG</option></select><br>
					<button type="button" onclick="insert()">전송</button>
			</form>
		</div>
	</div>
</section>
</main>		
-->		

<div class="container">
	<div class="row">
    <div class="col-md-8">  
        <h1 class="entry-title"><span>회원가입</span> </h1>
        <hr>
            <form class="form-horizontal" method="post" name="signup" id="signup" enctype="multipart/form-data" >        
         <div class="form-group">
          <label class="control-label col-sm-3">아이디 입력 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="userId" placeholder="4자리 이상" value="">
        <button class="button" onclick="checkId()" type="button">중복확인</button>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 입력 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="userPwd" id="password" placeholder="*******" value="">
           </div>   
          <small>비밀번호는 6자리 이상입니다.</small>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">비밀번호 확인 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="*******" value="">
            </div>  
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이름 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="userName" id="mem_name" placeholder="Enter your Name here" value="">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이메일 입력 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" class="form-control" name="userEmail" id="emailid" placeholder="example@email.com" value="">
            </div>
            <small> Your </small> </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">이메일 인증 </label>
          <div class="col-md-5 col-sm-8">
            <div>
                <input type="text" name="captcha" id="captcha" class="form-control label-warning"  />                
              </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">생년월일 <span class="text-danger">*</span></label>
          <div class="col-xs-8">
            <div class="form-inline">
              <div class="form-group" >
                <select name="yyyy" class="form-control">
                  <option value="">년도</option>
                  <option value="1955" >1955 </option><option value="1956" >1956 </option><option value="1957" >1957 </option><option value="1958" >1958 </option><option value="1959" >1959 </option><option value="1960" >1960 </option><option value="1961" >1961 </option><option value="1962" >1962 </option><option value="1963" >1963 </option><option value="1964" >1964 </option><option value="1965" >1965 </option><option value="1966" >1966 </option><option value="1967" >1967 </option><option value="1968" >1968 </option><option value="1969" >1969 </option><option value="1970" >1970 </option><option value="1971" >1971 </option><option value="1972" >1972 </option><option value="1973" >1973 </option><option value="1974" >1974 </option><option value="1975" >1975 </option><option value="1976" >1976 </option><option value="1977" >1977 </option><option value="1978" >1978 </option><option value="1979" >1979 </option><option value="1980" >1980 </option><option value="1981" >1981 </option><option value="1982" >1982 </option><option value="1983" >1983 </option><option value="1984" >1984 </option><option value="1985" >1985 </option><option value="1986" >1986 </option><option value="1987" >1987 </option><option value="1988" >1988 </option><option value="1989" >1989 </option><option value="1990" >1990 </option><option value="1991" >1991 </option><option value="1992" >1992 </option><option value="1993" >1993 </option><option value="1994" >1994 </option><option value="1995" >1995 </option><option value="1996" >1996 </option><option value="1997" >1997 </option><option value="1998" >1998 </option><option value="1999" >1999 </option><option value="2000" >2000 </option><option value="2001" >2001 </option><option value="2002" >2002 </option><option value="2003" >2003 </option><option value="2004" >2004 </option><option value="2005" >2005 </option><option value="2006" >2006 </option>                </select>
              </div>
              <div class="form-group">
                <select name="mm" class="form-control">
                  <option value="">월</option>
                  <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">Jul</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>                </select>
              </div>
              <div class="form-group">
                <select name="dd" class="form-control">
                  <option value="">일</option>
                  <option value="1" >1 </option><option value="2" >2 </option><option value="3" >3 </option><option value="4" >4 </option><option value="5" >5 </option><option value="6" >6 </option><option value="7" >7 </option><option value="8" >8 </option><option value="9" >9 </option><option value="10" >10 </option><option value="11" >11 </option><option value="12" >12 </option><option value="13" >13 </option><option value="14" >14 </option><option value="15" >15 </option><option value="16" >16 </option><option value="17" >17 </option><option value="18" >18 </option><option value="19" >19 </option><option value="20" >20 </option><option value="21" >21 </option><option value="22" >22 </option><option value="23" >23 </option><option value="24" >24 </option><option value="25" >25 </option><option value="26" >26 </option><option value="27" >27 </option><option value="28" >28 </option><option value="29" >29 </option><option value="30" >30 </option><option value="31" >31 </option>                </select>
              </div>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">성별 <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <label><input name="gender" type="radio" value="Male" > 남 </label>   
            <label><input name="gender" type="radio" value="Female" > 여 </label>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">전화번호 <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
          	<div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
            <input type="text" class="form-control" name="contactnum" id="contactnum" placeholder="010-1234-5678" value="">
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">프로필 사진 </label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group"> <span class="input-group-addon" id="file_upload"><i class="glyphicon glyphicon-upload"></i></span>
              <input type="file" name="file_nm" id="file_nm" class="form-control upload" placeholder="" aria-describedby="file_upload">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-md-8 col-sm-9"><span class="text-muted"><span class="label label-danger">Note:-</span> By clicking Sign Up, you agree to our <a href="#">Terms</a> and that you have read our <a href="#">Policy</a>, including our <a href="#">Cookie Use</a>.</span> </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="Sign Up" class="btn btn-primary" onclick="insert()">
          </div>
        </div>
      </form>
    </div>
</div>
</div>

<script>
function checkId(){
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
				idChack = true;
				
			}
		}
	}
		xhr.send(userId);
	}

 

function insert(){
	if(!idCheck){
		alert('다시중복확인하세요');
		return;
	}
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
