<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/timecharge.css">
</head>
<style>

</style>
<body>
<!-- ======= Breadcrumbs ======= -->
<section id="breadcrumbs" class="breadcrumbs">
	<div class="container">

		<ol>
			<li><a href="index.html">Home</a></li>
			<li>Contact</li>
		</ol>
		<h2>Contact</h2>

	</div>
</section>
<!-- End Breadcrumbs -->

<!-- ======= Contact Section ======= -->
<main>
	<section id="featured" class="featured">
		<div class="container">
<div>
<br/><br/>
<br/>
  <div class="container group">
    <div id="divOne" onclick="clicks(this)" data-col="div1">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">1000<span class="small">원</span></strong><br>
      <small>01:00</small><br>
      <sub>마일리지 10p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-1" style="float:left; display:none" value="1000" ><br>
    </div>
   	 </div>
     
     <div id="divTwo" onclick="clicks(this)" data-col="div2">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">2000<span class="small">원</span></strong><br>
      <small>02:00</small><br>
      <sub>마일리지 20p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-2" style="float:left; display:none" value="2000" ><br>
    </div>
   	 </div>
   	 
       <div id="divThree" onclick="clicks(this)" data-col="div3">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">3000<span class="small">원</span></strong><br>
      <small>03:00</small><br>
      <sub>마일리지 30p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-3" style="float:left; display:none" value="3000" ><br>
    </div>
   	 </div>
  </div>
  <br><br>
  <div class="container group">
  
	<div id="divFour" onclick="clicks(this)" data-col="div4">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">5000<span class="small">원</span></strong><br>
      <small>05:00</small><br>
      <sub>마일리지 50p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-4" style="float:left; display:none" value="5000" ><br>
    </div>
   	 </div>  


	<div id="divFive" onclick="clicks(this)" data-col="div5">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">10000<span class="small">원</span></strong><br>
      <small>11:00</small><br>
      <sub>마일리지 100p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-5" style="float:left; display:none" value="10000" ><br>
    </div>
   	 </div>
     
     <div id="divSix" onclick="clicks(this)" data-col="div6">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">20000<span class="small">원</span></strong><br>
      <small>22:00</small><br>
      <sub>마일리지 200p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-6" style="float:left; display:none" value="20000" ><br>
    </div>
   	 </div>
 
      <div class="col_third" style="float:right;margin-top:85px;">
        <div class="hover panel">
          <div class="front">
            <div class="box1">
            	<select name="pay" class="payC">
            		<option value="">선택하세요</option>
            		<option value="카드">카드</option>
            		<option value="휴대폰">휴대폰</option>
            	</select><br><br>
            	<div class="line"></div>
              <button type="button" onclick="goPay()" style="bottom:0;position: relative; float:right;margin-top: 25px;">다음</button>
            </div><br>
          </div>
          
          <div class="back">
            <div class="box2" style="float:right">

              <input type="text" class="box" id="payArea" name="payArea" placeholder="결제수단" readOnly><br>
              <input type="text" class="box" id="priceArea" name="priceArea"  placeholder="결제금액"readOnly><br>
               <button type="reset" onclick="reset()" style="bottom:0;position: relative; float:right;margin-top: 40px;">취소</button>
               <button type="button" class="charge" id="radioButton" value="r" onclick="charge()" style="bottom:0;position: relative; float:right;margin-top: 40px;">충전</button>
            <button type="button" class="charge" onclick="test()" style="bottom:0;position: relative;margin-top: 40px;">테스트 충전</button>
            </div>
          </div>
        </div>
    </div>
    </div> 
   </div>
    </div></section></main>
    
    
    <script>
    function clicks(obj){
    	var listDataCol = document.querySelectorAll('[data-col]');
    	var objCol = obj.getAttribute('data-col');
    	for(var d of listDataCol){
    		var dataCol = d.getAttribute('data-col');
    		if(objCol==dataCol){
    		var da = document.querySelector('[data-col='+dataCol+']');
    		document.querySelector('#'+da.id+'>div>span').setAttribute('class','my');
    		var input = document.querySelector('#'+obj.id+'>div>input');
    		$(input).prop('checked', 'checked');
    		}else{
    			var els = d.getAttribute('id');
    			document.querySelector('#'+els+'>div>span').setAttribute('class','button');
    			var out = document.querySelector('#'+els+'>div>input');
    			$(out).prop('checked', '');
    		}
    	}
    }
    
    function goPay(){
 	   if(document.querySelector('[name=pay]').value==''){
 		alert('수단을 선택해주세요');
 		return false;
 	   }
 	      $('.hover').addClass('flip');
    }
    function reset(){
 	   $('.hover').removeClass('flip');
    }
    </script>
    
</body>
<br/>
<br/>
<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->
</html>