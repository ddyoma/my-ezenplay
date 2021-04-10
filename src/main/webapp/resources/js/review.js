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
	  
function upload(){
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/review/insert');
	xhr.onreadystatechange = function(){
		if (xhr.readyState == 4 && xhr.status == 200) {
				var res = JSON.parse(xhr.responseText);
				if(res!=0){
					alert('등록성공');
				}else{
					alert('등록실패');
				}
			}
		}
	var param = {
			revComment : document.querySelector('[name=revComment]').value,
			revStar : document.querySelector('[name=revStar]').value,
			userInfo : {userNum : document.querySelector('[name=userNum]').value}
	}
	xhr.setRequestHeader('content-type','application/json;charset=UTF-8');
	xhr.send(JSON.stringify(param));
}