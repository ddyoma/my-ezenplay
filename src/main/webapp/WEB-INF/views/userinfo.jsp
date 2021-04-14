<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/userinfo.css">
<link rel="stylesheet" href="/resources/css/inputcss.css"> <!-- input css -->
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->

</head>
<body>
<div class="container emp-profile">
            <form method="post" enctype="multipart/form-data" action="/update">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                        	<div id="profile-i"> </div><!-- 프로필사진 -->
                            <div class="file btn btn-lg btn-primary">
                                사진 변경
                                <input type="file" name="file" onchange="change(this)"/><br>
                            </div>
                        </div>
                        
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">
                        
                                   <h5><span id="uName"> </span></h5><!-- 유저이름 -->
                                   
                                    <h6><span id="grade-img"></span> <span id="grade-name"></span></h6><!-- 유저등급,등급명 -->
                                    
                                    <p class="proile-rating">다음등급까지 남은금액: <span id="totalAmount"></span>/<span id="gradePrice"></span></p> <!-- 사용자가쓴금액/다음등급금액 -->
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">개인정보</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">결제내역</a>
                                </li>
                            </ul>
                           <small style="color:#8C8C8C;"> *수정가능</small><br>
                           <small style="color:#8C8C8C;"> (수정후 꼭 Enter키를 눌러주세요)</small>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="button" class="profile-edit-btn" name="btnAddMore" value="Edit Profile" onclick="update()"/> <!-- 수정버튼 -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-6" id="userId">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label for="userPhone">*Phone</label>
                                            </div>
                                            <div style="width:365px;">
                                            <div class="col-md-6" id="userPhone" onclick="showPhone()">
                                            </div>
                                            <div class="password-field" id="hideUserPhone" style="display:none">
                                             <input onkeyup="if(window.event.keyCode==13)printPhone()" type="text" name="userPhone" value="${UserInfo.userPhone}" style="width:220px;" placeholder="Phone"><button type="button" onclick="showPhone()">X</button>
                                            </div>
                                            
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>*Address</label>
                                            </div>
                                            <div style="width:365px;">
                                            <div class="col-md-6" id="userAddr1" onclick="showAddr1()">    <!-- 합치기힘들어서 일단나눔 -->
                                            </div>
                                            <div class="password-field" id="hideUserAddress1" style="display:none">
                                             <input onkeyup="if(window.event.keyCode==13)printAddr1()" type="text" name="userAddr1" value="${UserInfo.userAddr1 }" style="width:220px;" placeholder="Address"><button type="button" onclick="showAddr1()">X</button>
                                            </div>
                                             </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-6">
                                                <label>*Address2</label>
                                            </div>
                                            <div style="width:365px;">
                                            <div class="col-md-6" id="userAddr2" onclick="showAddr2()">
                                            </div>
                                            <div class="password-field" id="hideUserAddress2" style="display:none">
                                             <input onkeyup="if(window.event.keyCode==13)printAddr2()" type="text" name="userAddr2" value="${UserInfo.userAddr2 }" style="width:220px;" placeholder="Address"><button type="button" onclick="showAddr2()">X</button>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>*Email</label>
                                            </div>
                                            <div style="width:365px;">
                                            <div class="col-md-6" id="userEmail" onclick="showEmail()">
                                            </div>
                                             <div class="password-field" id="hideUserEmail" style="display:none">
                                             <input onkeyup="if(window.event.keyCode==13)printEmail()" type="text" name="userEmail" value="${UserInfo.userEmail }" style="width:220px;" placeholder="Address"><button type="button" onclick="showEmail()">X</button>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mileage</label>
                                            </div>
                                       <c:if test="${UserInfo.userMileage eq 0}">  <!-- 마일리지가 0원일경우 화면에안나옴방지 -->
                                            <div class="col-md-6">
                                            	<p>0</p>
                                            </div>
                                       </c:if>
                                            <div class="col-md-6" id="userMileage">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>RestTime</label>
                                            </div>
                                            <div class="col-md-6" id="restOfTime">
                                            </div>
                                        </div>
                            </div>
                            <div class="tab-pane" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                 <iframe src="http://localhost/views/user/payhistory" frameborder="1" width="100%" height="350px"> </iframe> <!-- 결제내역page -->
                            </div>
                        </div>
                        <p style="cursor:pointer"></p>
                    </div>
                </div>
            </form>           
        </div>
        <jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
		<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
<script>
function showPhone(){
	var userPhone = document.querySelector('#userPhone').style.display;
	if(userPhone){
		document.querySelector('#userPhone').style.display='';
		document.querySelector('#hideUserPhone').style.display='none';
	}else{
		document.querySelector('#userPhone').style.display='none';
		document.querySelector('#hideUserPhone').style.display='';
	}
}
function showAddr1(){
	var userAddr1 = document.querySelector('#userAddr1').style.display;
	if(userAddr1){
		document.querySelector('#userAddr1').style.display='';
		document.querySelector('#hideUserAddress1').style.display='none';
	}else{
		document.querySelector('#userAddr1').style.display='none';
		document.querySelector('#hideUserAddress1').style.display='';
	}
}

function showAddr2(){
	var userAddr2 = document.querySelector('#userAddr2').style.display;
	if(userAddr2){
		document.querySelector('#userAddr2').style.display='';
		document.querySelector('#hideUserAddress2').style.display='none';
	}else{
		document.querySelector('#userAddr2').style.display='none';
		document.querySelector('#hideUserAddress2').style.display='';
	}
}
function showEmail(){
	var userEmail = document.querySelector('#userEmail').style.display;;
	if(userEmail){
		document.querySelector('#userEmail').style.display='';
		document.querySelector('#hideUserEmail').style.display='none';
	}else{
		document.querySelector('#userEmail').style.display='none';
		document.querySelector('#hideUserEmail').style.display='';
	}
}
function printPhone(){
	const name = document.querySelector('[name=userPhone]').value;
	document.querySelector("#userPhone").innerHTML = '<p>'+name+'</p>';
	var userPhone = document.querySelector('#userPhone').style.display;
	if(userPhone){
		document.querySelector('#userPhone').style.display='';
		document.querySelector('#hideUserPhone').style.display='none';
	}
}
function printAddr1(){
	const name = document.querySelector('[name=userAddr1]').value;
	document.querySelector("#userAddr1").innerHTML = '<p>'+name+'</p>';
	var userAddr1 = document.querySelector('#userAddr1').style.display;
	if(userAddr1){
		document.querySelector('#userAddr1').style.display='';
		document.querySelector('#hideUserAddress1').style.display='none';
	}
}
function printAddr2(){
	const name = document.querySelector('[name=userAddr2]').value;
	document.querySelector("#userAddr2").innerHTML = '<p>'+name+'</p>';
	var userAddr2 = document.querySelector('#userAddr2').style.display;
	if(userAddr2){
		document.querySelector('#userAddr2').style.display='';
		document.querySelector('#hideUserAddress2').style.display='none';
	}
}
function printEmail(){
	const name = document.querySelector('[name=userEmail]').value;
	document.querySelector("#userEmail").innerHTML = '<p>'+name+'</p>';
	var userEmail = document.querySelector('#userEmail').style.display;
	if(userEmail){
		document.querySelector('#userEmail').style.display='';
		document.querySelector('#hideUserEmail').style.display='none';
	}
}

function getUser(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET','/user?userNum=${UserInfo.userNum}');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 && xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			console.log(res);
			for(var key in res){
				var value = res[key];
				if(value!=null&&value!=''){
					if(key=='gradeInfo'){
						document.querySelector('#grade-img').innerHTML = '<img style="width:20px; height:20px;"  src="/resources/images/grade/'+res[key].filePath+'">'
						document.querySelector('#grade-name').innerHTML = res[key].gradeName;
					}else{
						var id = document.querySelector('#'+key);
						var pointer = 'style="cursor:pointer"';
						if(key=='userMileage'||key=='restOfTime'||key=='userId'){
							pointer = '';
						}
						if(id){
							id.innerHTML = '<p '+pointer+'>'+value+'</p>';
						}
					}
				}
			}
			document.querySelector('#totalAmount').innerHTML = res.totalAmount;
			document.querySelector('#uName').innerHTML = res.userName;
			if(res.totalAmount<50000){
				document.querySelector('#gradePrice').innerHTML = 50000;
			}else if(res.totalAmount<300000){
				document.querySelector('#gradePrice').innerHTML = 300000;
			}else if(res.totalAmount<1000000){
				document.querySelector('#gradePrice').innerHTML = 1000000;
			}else{
				document.querySelector('#gradePrice').innerHTML = '최고등급';
			}
			
			if(res.profilePath){
				document.querySelector('#profile-i').innerHTML = '<img src="/images/user/'+res.profilePath+'" id="profile-img"/>';
			}else{
				document.querySelector('#profile-i').innerHTML = '<img src="/resources/images/user/basic.png" id="profile-img"/>';
			}
		}
	}
	xhr.send();
}

window.onload = getUser();

function change(obj){
	var reader = new FileReader();
	reader.onload = function(e){
		document.querySelector('#profile-img').src = e.target.result;
	}
	reader.readAsDataURL(obj.files[0]);
}

function update(){
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/update');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 &&xhr.status==200){
			console.log(xhr.responseText);
		}
	}
	var formData = new FormData();
	
	formData.append('userPhone',document.querySelector('#userPhone>p').innerHTML);
	formData.append('userAddr1',document.querySelector('#userAddr1>p').innerHTML);
	formData.append('userAddr2',document.querySelector('#userAddr2>p').innerHTML);
	formData.append('userEmail',document.querySelector('#userEmail>p').innerHTML);
	formData.append('userName',document.querySelector('#uName').innerHTML);
	formData.append('userPwd',${UserInfo.userPwd});
	formData.append('userMileage',${UserInfo.userMileage});
	formData.append('favoriteGame','${UserInfo.favoriteGame}');
	formData.append('restOfTime','${UserInfo.restOfTime}');
	formData.append('totalAmount',document.querySelector('#totalAmount').innerHTML);
	if(document.querySelector('[name=file]').files[0]){
		formData.append('userFile',document.querySelector('[name=file]').files[0]);
	}
	formData.append('userNum',${UserInfo.userNum});
	xhr.send(formData);
}
</script>
</body>
</html>