<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>   <!-- 아이디 비밀번호 비밀번호확인 이메일  이름  생년월일(달력) 성별(볼륨) 폰번호1(셀렉박스) 폰번호2 주소 상세주소 프로필사진(파일) 선호장르(셀렉박스)  -->
            
	
<jsp:include page="/include/head.jsp"></jsp:include>
</head>
<body>

<form method="POST" enctype="multipart/form-data" action ="/memberjoin">
<input type="file" name="fii_file">
</form>
<script>

</script>


<jsp:include page="/include/menufooter.jsp"></jsp:include>
</body>
</html>