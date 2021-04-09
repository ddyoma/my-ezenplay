<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table><!-- 전체list실험용  -->
					<tr>
					 <th>아이디</th>
					 <th>비번</th>
					</tr>
					<tbody id="tBody">
					</tbody>
					</table>
		
					
					
					<script>window.onload = function(){ //전체리스트
							
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
</body>
</html>