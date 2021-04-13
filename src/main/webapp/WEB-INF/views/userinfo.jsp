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
                        </div>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/> <!-- 수정버튼 -->
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
                                                <p>Kshiti123</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-6" id="userPhone">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Address</label>
                                            </div>
                                            <div class="col-md-6" id="userAddr1">    <!-- 합치기힘들어서 일단나눔 -->
                                            </div>
                                        </div>
                                         <div class="row">
                                            <div class="col-md-6">
                                                <label>Address2</label>
                                            </div>
                                            <div class="col-md-6" id="userAddr2">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-6" id="userEmail">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Mileage</label>
                                            </div>
                                       <c:if test="${UserInfo.userMileage eq 0}">  <!-- 마일리지가 0원일경우 화면에안나옴 -->
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
                    </div>
                </div>
            </form>           
        </div>
        <jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
		<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
<script>
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
						if(id){
							id.innerHTML = '<p>'+value+'</p>';
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
				document.querySelector('#gradePrice').innerHTML = '폐인';
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
</script>
</body>
</html>