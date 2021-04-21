<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EzenPC</title>
<link rel="stylesheet" href="/resources/css/reservation.css">
<style>
html {overflow:hidden;status:hidden;}
</style>
</head>
<body>
<div class="user">
    <header class="user__header">
        <h1 class="user__title">좌석예약</h1>
    </header>
    
    <form class="form" method="Post" action="/res/insert">
        
        <div>
        <div class="form__group">
        	<input type="text" value="좌석번호"  class="form__input" style="float: left;width:30%;color:#191919;" readonly/>
        </div>
        <div class="form__group">
            <input type="text" value="${param.pcSeatNum}" id="pcSeatNum" class="form__input"  style="float:right;width:70%" readonly/>
        </div>
        </div>
        
        <div>
        <div class="form__group">
        	<input type="text" value="예약시간"  class="form__input" style="float: left;width:30%; color:#191919;" readonly/>
        </div>
        <div class="form__group">
            <input type="time" id="resTime" class="form__input" style="float:right;width:70%"/>
        </div>
        </div>
        <input type="hidden" id="userNum" value="${UserInfo.userNum}" />
        <button class="btn" type="button" onclick="resOk()" style="cursor:pointer">예약완료</button>
    </form>
</div>
<script src="/resources/js/reservation.js"></script>
<script>
function resOk(){
	var xhr = new XMLHttpRequest();
	xhr.open('POST','/res/insert');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4&&xhr.status==200){
			var res = xhr.responseText;
			if(res=='좌석은 하나만 예약 가능합니다.'){
				alert('좌석은 하나만 예약 가능합니다.');
				opener.document.location.reload();
				window.close();
			}else if(res=='이미 예약된 좌석입니다.'){
				alert('이미 예약된 좌석입니다.');
				opener.document.location.reload();
				window.close();
			}else if(res=='예약이 완료되었습니다!'){
				alert('예약이 완료되었습니다!');
				opener.document.location.reload();
				window.close();
			}
		}
	}

	var param = {
			pcInfo:{pcSeatNum : document.querySelector('#pcSeatNum').value},
			resTime :document.querySelector('#resTime').value+':00',
			userInfo:{userNum :document.querySelector('#userNum').value}
	}
	xhr.setRequestHeader('content-type','application/json;charset=utf-8');
	xhr.send(JSON.stringify(param));
}

</script>
</body>
</html>