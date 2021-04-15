<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:if test="${UserInfo ne null }">
<form method="post" action="/review/insert" id="review" style="float:left">
				<div><br/><br/><br/><br/><br/>
				<div class="probox" style="background: #BDBDBD;"> <!-- 사진미등록자는 기본프로필화면으로보이게 -->
						<!--<img class="profileone" src="/resources/images/user/${UserInfo.profilePath}" onerror="this.style.display='none'"alt='' /> --> 
					</div>
				<input type="text" name="userNum" value="${UserInfo.userNum}">
				유저: <input type="text" value="${UserInfo.userId}" readonly><br>
				리뷰남기기: <textarea name="revComment"></textarea></div>
				별점:<jsp:include page="/WEB-INF/views/customercenter/star.jsp"></jsp:include><!-- 별-->
				<!--   -->
				
   
				<button onclick="upload()" type="button" >리뷰등록</button></form>
			</c:if>	
				
				
				<script>function upload(){
					var xhr = new XMLHttpRequest();
					xhr.open('POST', '/review/insert');
					xhr.onreadystatechange = function(){
						if (xhr.readyState == 4 && xhr.status == 200) {
								var res = JSON.parse(xhr.responseText);
								if(res!=0){
									alert('등록성공');
									location.href = '/views/voccenter';
								}else{
									alert('등록실패');
								}
							}
						}
					var param = {
							revComment : document.querySelector('[name=revComment]').value,
							revStar : $('#count').text(),
							userInfo : {userNum : document.querySelector('[name=userNum]').value}
					}
					xhr.setRequestHeader('content-type','application/json;charset=UTF-8');
					xhr.send(JSON.stringify(param));
				}</script>