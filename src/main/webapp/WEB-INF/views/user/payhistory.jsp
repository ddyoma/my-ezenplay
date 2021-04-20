<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
 <table class="table">
    <thead>
      <tr>
        <th>분류</th>
        <th>결제일</th>
        <th>결제수단</th>
        <th>결제금액</th>
        <th>상세</th>
        <th>마일리지적립</th>
      </tr>
    </thead>
    <tbody id="tBody">
    </tbody>
  </table>
  <input type="hidden" id="userNum" value="${UserInfo.userNum}">
<script>
window.onload = function(){
	var userNum = document.querySelector('#userNum').value;
var xhr = new XMLHttpRequest();
xhr.open('GET','/pay/user?userNum='+userNum);
xhr.onreadystatechange = function(){
	if(xhr.readyState==4&&xhr.status==200){
		var res = JSON.parse(xhr.responseText);
		var html = '';
		for(var r of res){
			html += '<tr class="table-active">';
			html += '<td>'+r.phType+'</td>';
			html += '<td>'+r.phDateTime+'</td>';
			html += '<td>'+r.phMethod+'</td>';
			html += '<td>'+r.phPrice+'</td>';
			html += '<td>'+r.phDetails+'</td>';
			html += '<td>'+r.phSave+'</td>';
			html += '</tr>';
		}
		document.querySelector('#tBody').innerHTML = html;
		}
	}
	xhr.send();
}
</script>
</body>
</html>