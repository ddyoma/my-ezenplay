<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="POST" action="/views/food/food-result" enctype="multipart/form-data">
<select name='foodType'>
  <option value='' selected>음식종류</option>
  <option value='음식'>음식</option>
  <option value='간식'>간식</option>
  <option value='음료수'>음료수</option>
</select><br>
<input type="text" name="foodName" placeholder="음식이름"/><br>
<input type="text" name="foodDesc" placeholder="음식설명"/><br>
음식사진: <input type="file" name="foodFile"/><br>
<input type="number" name="foodPrice" onkeypress="return digit_check(event)" placeholder="음식가격"/><br>
<input type="number" name="foodCookTime" onkeypress="return digit_check(event)" placeholder="소요시간"/><br>
<button type="submit">등록</button>
</form>

<script>
function digit_check(evt){
    var code = evt.which?evt.which:event.keyCode;
    if(code < 48 || code > 57){
        return false;
    }
}



</script>
</body>
</html>