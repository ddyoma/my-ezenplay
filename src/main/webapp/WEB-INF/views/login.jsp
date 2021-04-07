<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/pandacs.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
<div class="panda">
  <div class="ear"></div>
  <div class="face">
    <div class="eye-shade"></div>
    <div class="eye-white">
      <div class="eye-ball"></div>
    </div>
    <div class="eye-shade rgt"></div>
    <div class="eye-white rgt">
      <div class="eye-ball"></div>
    </div>
    <div class="nose"></div>
    <div class="mouth"></div>
  </div>
  <div class="body"> </div>
  <div class="foot">
    <div class="finger"></div>
  </div>
  <div class="foot rgt">
    <div class="finger"></div>
  </div>
</div>
<form>
  <div class="hand"></div>
  <div class="hand rgt"></div>
  <h1 style="font-style: inherit;">Log in</h1>
  <div class="form-group">
    <input required="required" class="form-control"/>
    <label class="form-label">Username    </label>
  </div>
  <div class="form-group">
    <input id="password" type="password" required="required" class="form-control"/>
    <label class="form-label">Password</label>
    <p class="alert">Invalid Credentials..!!</p>
    <button class="btn">Login </button>
  </div>
  <script>
  $('#password').focusin(function(){
	  $('form').addClass('up')
	});
	$('#password').focusout(function(){
	  $('form').removeClass('up')
	});

	// Panda Eye move
	$( document ).on( "mousemove", function( event ) {
	  var x = event.pageX/50;
	  var y = event.pageY/25;
	  $('.eye-ball').css({
	    width : x,
	    height : y
	  });
	});

	// validation


	$('.btn').click(function(){
	  $('form').addClass('wrong-entry');
	    setTimeout(function(){ 
	       $('form').removeClass('wrong-entry');
	     },3000 );
	});
  </script>
</form>
</body>
</html>