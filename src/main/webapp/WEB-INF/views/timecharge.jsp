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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<style>
div.main {
	width: 100%;
	height: 600px;
	background: #ededed;
}

div.left {
	margin-top: 100px;
	width: 70%;
	float: left;
	background: #ededed;
}

div.right {
	margin-top: 100px;
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

.btn {
	margin-left: 30px;
	margin-right: 30px;
}

.icon-box {
	margin-left: 20px;
	margin-right: 20px;
	margin-bottom: 40px;
	margin-top: 40px;
}

.charge {
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

.cancel {
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
</section>
<!-- End Breadcrumbs -->

<!-- ======= Contact Section ======= -->
<main>
	<section id="featured" class="featured">
		<div class="container">
			<form method="post" >
				<div class="main">
					<div class="left">
						<div class="btn-group">
							<div class="row-1">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-1" value="1000"
									onclick="txInput('priceArea',this.value)">1000원
								</label>
							</div>
							<div class="btn-group">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-2" value="2000"
									onclick="txInput('priceArea',this.value)">2000원
								</label>
							</div>
							<div class="btn-group">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-3" value="3000"
									onclick="txInput('priceArea',this.value)">3000원
								</label>
							</div>
						</div>
						<div class="row-2">
							<div class="btn-group">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-4" value="5000"
									onclick="txInput('priceArea',this.value)">5000원
								</label>
							</div>
							<div class="btn-group">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-5" value="10000"
									onclick="txInput('priceArea',this.value)">10000원
								</label>
							</div>
							<div class="btn-group">
								<label class="icon-box" id="rad"> <input type="radio"
									class="btn btn" name="Amt" id="jb-radio-6" value="20000"
									onclick="txInput('priceArea',this.value)">20000원
								</label>
							</div>
						</div>
					</div>
					<div class="right">
						<div class="user_card">
							<div class="btn-group">
								<input type="radio" class="btn btn" name="pay" id="radio-1"
									value="카드" onclick="txInput('payArea',this.value)">
								<div class="insertCard"></div>
							</div>
							<div class="btn-group">
								<input type="radio" class="btn btn" name="pay" id="radio-2"
									value="휴대폰" onclick="txInput('payArea',this.value)">
								<div class="insertPhone"></div>
							</div>
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
function test(){
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/testPay');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 &&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
		}
	}
	var formData = new FormData();
	var price = document.getElementById("priceArea");
	var userNum = ${UserInfo.userNum};

	var restOfTime = '00:00:00';
	if(price.value==1000){
		restOfTime = '01:00:00';
	}
	if(price.value==2000){
		restOfTime = '02:00:00';
	}
	if(price.value==3000){
		restOfTime = '03:00:00';
	}
	if(price.value==5000){
		restOfTime = '05:00:00';
	}
	if(price.value==10000){
		restOfTime = '11:00:00';
	}
	if(price.value==20000){
		restOfTime = '22:00:00';
	}
	formData.append('userNum',${UserInfo.userNum});
	formData.append('restOfTime',restOfTime);
	xhr.send(formData);
	
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/mileage');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 &&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			if(res!=0){
				alert('적립성공');
				//location.href='/';
			}else{
				alert('적립실패');
			}
		}
	}
	var formData = new FormData();
	var Mileage = ${UserInfo.userMileage}+price.value*0.01;
	formData.append('userNum',${UserInfo.userNum});
	formData.append('userMileage',Mileage);
	xhr.send(formData); 
	
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/testHis');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 &&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			if(res!=0){
				alert('충전완료');
				location.href='/';
			}else{
				alert('충전실패');
			}
		}
	}
	var formData = new FormData();
	var UserInfo = ${UserInfo.userNum};
	var phType = '시간충전';
	var price = document.getElementById("priceArea");
	var phPrice = price.value;
	var pay = document.getElementById("payArea");
	var phMethod = pay.value;
	var phDetails = '시간충전시간';
	var phSave = price.value*0.01;
	formData.append('UserInfo',UserInfo);
	formData.append('phType',phType);
	formData.append('phPrice',phPrice);
	formData.append('phMethod',phMethod);
	formData.append('phDetails',phDetails);
	formData.append('phSave',phSave);
	xhr.send(formData);
	
	
	
}

function txInput(Obj, Str) {
	document.getElementById(Obj).value = Str;
}

function charge() {
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/testPay');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4 &&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			if(res!=0){
				alert('충전완료');
				location.href='/';
			}else{
				alert('충전실패');
			}
		}
	}
	var pay = document.getElementById("payArea");
	var price = document.getElementById("priceArea");
	
			if(pay.value=="카드"){
				var IMP = window.IMP;
				IMP.init('imp92849282');
				IMP.request_pay({
				    pg : 'inicis', // version 1.1.0부터 지원.
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : '유저_시간충전',
				    amount : price.value,
				    buyer_email : 'iamport@siot.do',
				    buyer_name : '사용자',
				    buyer_tel : '010-1234-5678',
				    m_redirect_url : 'https://www.ezenplay.com/payments/complete'
				}, function(rsp) {
				    if ( rsp.success ) {
				        var msg = '결제가 완료되었습니다.';
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    }
				    alert(msg);
				});
			}
			else if(pay.value=="휴대폰"){

				var IMP = window.IMP;
				IMP.init('imp92849282');
				IMP.request_pay({
				    pg : 'inicis', // version 1.1.0부터 지원.
				    pay_method : 'phone',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : '유저_시간충전',
				    amount : price.value,
				    buyer_email : 'iamport@siot.do',
				    buyer_name : '사용자',
				    buyer_tel : '010-1234-5678',
				    m_redirect_url : 'https://www.ezenplay.com/views/charge/complet'
				}, function(rsp) {
				    if ( rsp.success ) {
				        var msg = '결제가 완료되었습니다.';
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				    }
				    alert(msg);
				});
			}
		}
		
</script>
<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
</html>