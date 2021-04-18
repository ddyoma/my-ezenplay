window.onload = function(){
  
	var xhr = new XMLHttpRequest();
	xhr.open('GET', '/review/list');
	xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			console.log(xhr.responseText);
			var res = JSON.parse(xhr.responseText);
			for(var i = 0;i<=5;i++){

			var r = res[i];

			
			var h = '';
				for(var j = 0;j<r.revStar;j++)
				{
					h+= '<i class="fa fa-star"></i>';
				}
				
					
				
			
			$('#revComment'+i).text(r.revComment);
			$('#userId'+i).text(r.userInfo.userId);
			$('#revStar'+i).html(h);

		
		
			}
		}
	}
	xhr.send();

	var atag = document.getElementById('userId0');
	var atag = document.getElementById('userId1');
	var atag = document.getElementById('userId2');
	var atag = document.getElementById('userId3');
	var atag = document.getElementById('userId4');
	var atag = document.getElementById('userId5');

	atag.onclick =function(){
		alert('날호출');
		
	}

}

// window.onload = function(){
// 	var xhr = new XMLHttpRequest();
// 	xhr.open('GET', '/review/list');
// 	xhr.onreadystatechange = function(){
// 		if(xhr.readyState == 4 && xhr.status == 200){
// 			var res = JSON.parse(xhr.responseText);
// 			for(var i = 0;i<=5;i++){
// 			var r = res[i];
// 			var h = '';
// 				for(var j = 0;j<r.revStar;j++)
// 				{
// 					h+= '<span data-value=""+j class="glyphicon glyphicon-star"></span>';
// 				}
// 				for(var c =r.revStar;c<5;c++)
// 				{
// 					h+= '<span data-value=""+c class="glyphicon glyphicon-star-empty"></span>';
// 				}
// 			$('#revStar'+i).html(h);
// 			$('#revComment'+i).text(res[i].revComment);
// 			$('#userId'+i).text(res[i].userInfo.userId);
// 			}
// 		}
// 	}
// 	xhr.send();
// }
	
	  

function upload(){
	
		
	
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/review/insert');
	xhr.onreadystatechange = function(){
		if (xhr.readyState == 4 && xhr.status == 200) {
			alert(xhr.responseText);
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
			revComment : document.querySelector('[name=message]').value,
			revStar : $('#count').text(),
			userInfo : {userNum : document.querySelector('[name=userNum]').value}
	}
	xhr.setRequestHeader('content-type','application/json;charset=UTF-8');
	xhr.send(JSON.stringify(param));
}