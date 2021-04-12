window.onload = function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/review/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			var res = JSON.parse(xhr.responseText);
			for(var i = 0;i<=5;i++){
			var r = res[i];
			var h = '';
				for(var j = 0;j<r.revStar;j++)
				{
					h+= '<span data-value=""+j class="glyphicon glyphicon-star"></span>';
				}
				for(var c =r.revStar;c<5;c++)
				{
					h+= '<span data-value=""+c class="glyphicon glyphicon-star-empty"></span>';
				}
			$('#revStar'+i).html(h);
			$('#revComment'+i).text(res[i].revComment);
			$('#userId'+i).text(res[i].userInfo.userId);
			}
		}
	}
	xhr.send();
}
	  
function upload(){
	if($('#count').text()==0){
		alert('별점은 필수입니다.');
		return;
	}
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