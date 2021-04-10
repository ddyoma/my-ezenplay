<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="POST" id="foodFrm" action="/food-insert" enctype="multipart/form-data">
<input type="text" name="foodType" placeholder="음식종류"/><br>
<input type="text" name="foodName" placeholder="음식이름"/><br>
<input type="text" name="foodDesc" placeholder="음식설명"/><br>
사진: <input type="file" name="foodFile"/><br>
<input type="text" name="foodPrice" placeholder="음식가격"/><br>
<input type="text" name="foodCookTime" placeholder="소요시간"/><br>
<button type="button" onclick="insert()">등록</button>
</form>

<script>
function insert(){
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/food-insert');
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4&&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			if(res!=0){
				alert('등록완료');
				location.href='/views/food/food-list';
			}else{
				alert('등록실패');
				}
			}
		}
	var formData = new FormData();
	var foodType = document.querySelector('[name=foodType]');
	var foodName = document.querySelector('[name=foodName]');
	var foodDesc = document.querySelector('[name=foodDesc]');
	var foodFile = document.querySelector('[name=foodFile]');
	var foodPrice = document.querySelector('[name=foodPrice]');
	var foodCookTime = document.querySelector('[name=foodCookTime]');
	formData.append('foodType',foodType.value);
	formData.append('foodName',foodName.value);
	formData.append('foodDesc',foodDesc.value);
	if(foodFile.value!=undefined && foodFile.value!=null && foodFile.value!=''){
	formData.append('foodFile',foodFile.files[0]);
	}
	formData.append('foodPrice',foodPrice.value);
	formData.append('foodCookTime',foodCookTime.value);
	xhr.send(formData);
}
</script>
</body>
</html>