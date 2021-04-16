<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include  page="/WEB-INF/views/food/food-insert-head.jsp"></jsp:include>
</head>
<body style="background-color:#535353;">


<div class="signup-form" >
    <form method="POST" action="/views/food/food-result" enctype="multipart/form-data">
		<h2>메뉴수정</h2>
		<hr>
        <div class="form-group">
			<div class="row">
			<select name='foodType' class="form-control">
  				<option value='음식'>음식</option>
  				<option value='간식'>간식</option>
 				 <option value='음료수'>음료수</option>
			</select>
			</div>        	
        </div>
        <div class="form-group">
        	<input type="text" class="form-control" name="foodName"  value="" placeholder="음식이름">
        </div>
		<div class="form-group">
            <input type="text" class="form-control" name="foodDesc"  placeholder="음식설명">
        </div>

        <div class="form-group">
            <input type="number" class="form-control" name="foodPrice" onkeypress="return digit_check(event)" placeholder="음식가격" >
        </div>   
        <div class="form-group">
            <input type="number" class="form-control" name="foodCookTime" onkeypress="return digit_check(event)" placeholder="소요시간">
        </div>      
       	<div class="form-group">
            <input type="file" class="form-control" name="foodFile">
        </div>     

		<div class="form-group">
            <button type="submit" class="btn btn-primary btn-lg">등록</button>
        </div>
    </form>
</div>
</body>
<script>
function digit_check(evt){
    var code = evt.which?evt.which:event.keyCode;
    if(code < 48 || code > 57){
        return false;
    }
}

window.onload = function(){
	var xhr = new XMLHttpRequest();
	xhr.open('GET','/food?foodNum='+${param.foodNum});
	xhr.onreadystatechange = function(){
		if(xhr.readyState==4&&xhr.status==200){
			var res = JSON.parse(xhr.responseText);
			for(var key in res){
				var input = document.querySelector('[name='+key+']');
				if(res[key]!=null&&input!=null){
					input.value = res[key];
				}
			}
		}
	}
	xhr.send();
}

function foodUpdate() { //여기부터하시면됌
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/food-update?foodNum='+foods.foodNum);
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) { 
			var res = JSON.parse(xhr.responseText);
			var html ='';
			console.log(res);
			}
		}
	xhr.send();
}
</script>
</html>