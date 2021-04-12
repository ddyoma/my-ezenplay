<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${UserInfo eq null }">
<script>
 alert('좌석현황 열람 권한이 없습니다.');
location.href='/';
</script>
</c:if>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<jsp:include page="/include/head.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/food/menutop.jsp"></jsp:include>
</head>

<body>
<!-- Main -->
<div id="main-wrapper">
<div class="container">
<div id="content">

 
<!-- Content -->
<c:if test="${UserInfo.userId eq 'admin' }"> <!-- id가 admin계정일시에만 등록버튼노출 -->
<button onclick="location.href='/views/food/food-insert'">등록</button>
</c:if>
<script src="/WEB-INF/views/food/menu.jsp"></script>
<div class="clearfix"> </div>
					<div class="header-grids">
						<div class="col-md-4 header-grid-info">
							<a href="javascript:void(0);" onclick="callfood();">
								<div class="header-grid gray">
									<div class="header-grid-img gray-grid">
										<img src="/resources/images/templetimages/2.jpg" alt="">
										<h3>sandwich</h3>
										<p>식사류
										</p>
									</div>
								</div>
							</a>
						</div>
						</div>
						</div>
						</div>
						</div>
</body>
</html>