<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>

<html>
<head>
<jsp:include page="/include/head.jsp"></jsp:include>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="/resources/css/review.css" /> <!-- 리뷰,질의응답css -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<title>ezen</title>
</head>
<body>

				<!-- Main -->
					<div id="main-wrapper">
						<div class="container">
							<div id="content">
								<!-- Content -->
									<article>
									<div class="container">

									<div class="page-header">
									    <h1>자주하는 질문 <small>pc방이용시 안내사항</small></h1>
									</div>

<div class="container">
    <br />
    <br />
    <br />
    <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        자주하는 질문 이외의 다른 문의사항이 있을경우  <strong>010-0000-0000</strong>으로 연락주시면 빠른안내 가능합니다
    </div>
    <br />
    
	<jsp:include page="/WEB-INF/views/customercenter/faq.jsp"></jsp:include>  <!-- FAQ -->
	<jsp:include page="/WEB-INF/views/customercenter/map.jsp"></jsp:include>  <!-- MAP -->

</div>

	<jsp:include page="/WEB-INF/views/customercenter/review.jsp"></jsp:include> <!-- Review -->


<div ID="banner-wrapper">
		<div ID="banner" class="box container">
			<div class="row">
				<div class="col-7 col-12-medium">
				<c:if test="${UserInfo ne null }">
				<form method="post" action="/review/insert" id="review">
				<div>
								<div class="probox" style="background: #BDBDBD;"> <!-- 사진미등록자는 기본프로필화면으로보이게 -->
								<img src="/images/user/별.png">
							</div>
				<input type="text" name="userNum" value="${UserInfo.userNum}">
					유저 : <input type="text" value="${UserInfo.userId}" readonly><br>
					리뷰남기기 : <textarea name="revComment"></textarea>
					<select id="sel" name="revStar"><option value="0">평점선택</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					</select>
					</div>
					<button onclick="upload()" type="button">리뷰등록</button>
						</form>
						</c:if>
						
					</div>
				</div>
			</div>
		</div>
		</div>
		<table>
		<tr>
		<th>테스트번호</th>
		</tr>
		<tBody id="tBody">
		</tBody>
		</table>
								</article>
						</div>
					</div>
				</div>

<script src="/resources/js/review.js"></script>     <!-- 리뷰자바스크립트 -->
<jsp:include page="/include/footer.jsp"></jsp:include>
	</body>
</html>