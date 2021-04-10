window.onload = function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/review/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var r = JSON.parse(xhr.responseText);
			var h = '';
			for(var view of r){
				var revNum = view.revNum;
				var revStar = view.revStar;
			}
			$('.span_star').text(revStar);
		}
	}
	xhr.send();
}
	  
function upload(){
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
}