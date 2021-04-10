<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
		<tr>
		<th>테스트번호</th>
		</tr>
		<tBody id="tBody">
		
		</tBody>
</table>
<script>
window.onload = function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/review/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var r = JSON.parse(xhr.responseText);
			var h = '';
			console.log(r);
			for(var view of r)
			h += '<tr>'
			h += '<td>' + view.revNum + '</td>';
			h += '</tr>'
			}
			document.querySelector('#tBody').innerHTML = h;
		}
	xhr.send();
}
</script>
</body>
</html>