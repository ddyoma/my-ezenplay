<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import url(https://fonts.googleapis.com/css?family=Lato:400,700,900);
html {
  box-sizing: border-box;
  height: 100%;
}

*, *:before, *:after {
  box-sizing: inherit;
}

body {
  background-color: #EAEAEA;
  background-repeat: no-repeat;
  zoom: 1;
  /*filter: progid:DXImageTransform.Microsoft.gradient(gradientType=1, startColorstr='#FF53455B', endColorstr='#FF201E22');
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PHJhZGlhbEdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgY3g9IjUwJSIgY3k9IjAlIiByPSI3MCUiPjxzdG9wIG9mZnNldD0iMCUiIHN0b3AtY29sb3I9IiM1MzQ1NWIiLz48c3RvcCBvZmZzZXQ9IjcwJSIgc3RvcC1jb2xvcj0iIzIwMWUyMiIvPjwvcmFkaWFsR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -moz-radial-gradient(top, circle, #53455b 0%, #201e22 70%);
  background-image: -webkit-radial-gradient(top, circle, #53455b 0%, #201e22 70%);
  background-image: radial-gradient(circle at top, #53455b 0%, #201e22 70%);*/
  color: #000000;
  font-family: 'Lato', sans-serif;
  font-size: 100%;
  min-height: 100%;
  line-height: 1.5;
  padding: 2.5em 0;
}

.container {
  margin: 0 auto;
  width: 90%;
  max-width: 1200px;
}

.group:after {
  content: "";
  display: table;
  clear: both;
}

.grid-1-5 {
  border: 2px solid #5d4e65;
  min-height: 230px;
  padding: 1.25em;
  position: relative;
  text-align: center;
  transition: all .2s ease-in-out;
  cursor:pointer;
}
@media screen and (min-width: 700px) {
  .grid-1-5 {
    float: left;
    width: 50%;
  }
  .grid-1-5:nth-child(odd) {
    clear: left;
  }
}
@media screen and (min-width: 800px) {
  .grid-1-5 {
    width: 33.3333333%;
  }
  .grid-1-5:nth-child(3n+1) {
    clear: left;
  }
  .grid-1-5:nth-child(odd) {
    clear: none;
  }
}
@media screen and (min-width: 1120px) {
  .grid-1-5 {
    width: 20%;
  }
  .grid-1-5:nth-child(odd), .grid-1-5:nth-child(3n+1) {
    clear: none;
  }
}

.grid-1-5:hover {
  background-color: #F0F0D0;
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FF53455B', endColorstr='#FF201D22');
  /*background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuNSIgeTE9IjAuMCIgeDI9IjAuNSIgeTI9IjEuMCI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzUzNDU1YiIvPjxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzIwMWQyMiIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #53455b), color-stop(100%, #201d22));
  background-image: -moz-linear-gradient(top, #53455b 0%, #201d22 100%);
  background-image: -webkit-linear-gradient(top, #53455b 0%, #201d22 100%);
  background-image: linear-gradient(to bottom, #53455b 0%, #201d22 100%);
  */border-top: 2px solid #ec7a37;
  border-bottom: 2px solid #ff4f69;
  box-shadow: 0px 0px 10px 0px #323232;
  transform: scale(1.025);
  z-index: 2;
}
.grid-1-5:hover:before, .grid-1-5:hover:after {
  content: "";
  position: absolute;
  background-color: #FAF4C0;
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=0, startColorstr='#FFF67D35', endColorstr='#FFFF4F68');
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuNSIgeTE9IjAuMCIgeDI9IjAuNSIgeTI9IjEuMCI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2Y2N2QzNSIvPjxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ZmNGY2OCIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #f67d35), color-stop(100%, #ff4f68));
  background-image: -moz-linear-gradient(top, #f67d35 0%, #ff4f68 100%);
  background-image: -webkit-linear-gradient(top, #f67d35 0%, #ff4f68 100%);
  background-image: linear-gradient(to bottom, #f67d35 0%, #ff4f68 100%);
  top: -2px;
  bottom: -2px;
  width: 2px;
}
.grid-1-5:hover:before {
  left: -2px;
}
.grid-1-5:hover:after {
  right: -2px;
}
.grid-1-5:hover .button {
  background-color: #ee7a36;
  *zoom: 1;
  filter: progid:DXImageTransform.Microsoft.gradient(gradientType=1, startColorstr='#FFEE7A36', endColorstr='#FFEB495D');
  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuMCIgeTE9IjAuNSIgeDI9IjEuMCIgeTI9IjAuNSI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iI2VlN2EzNiIvPjxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ViNDk1ZCIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
  background-size: 100%;
  background-image: -webkit-gradient(linear, 0% 50%, 100% 50%, color-stop(0%, #ee7a36), color-stop(100%, #eb495d));
  background-image: -moz-linear-gradient(left, #ee7a36 0%, #eb495d 100%);
  background-image: -webkit-linear-gradient(left, #ee7a36 0%, #eb495d 100%);
  background-image: linear-gradient(to right, #ee7a36 0%, #eb495d 100%);
}

.my{
    background-color: #ee7a36;
  border-radius: 20px;
  color: #fff;
  font-size: 0.5em;
  font-weight: 700;
  padding: 0.75em 1.5em;
  position: relative;
  bottom: 1.25em;
  margin-left: -160px;
  margin-top:0px;
  margin-bottom:100px;
  text-decoration: none;
  width: 20px;
  height: 20px;

}

cite, h3, p, ul {
  margin: 0;
}

cite {
  font-size: 1em;
  font-weight: 400;
  margin: 0 0 0.5em;
}

h3 {
  font-size: 1.5em;
  letter-spacing: 0.0625em;
  margin: 0 0 0.3333333333333333em;
}

p {
  font-size: 0.875em;
}

p, ul {
  margin: 0 0 1.5em;
}

sub {
  color: #796583;
  font-size: 0.75em;
  list-style-type: none;
  padding: 0;
  margin: 0 0 0.8333333333333333em;
}

.button {
  background-color: #EAEAEA;
  border-radius: 20px;
  color: #fff;
  font-size: 0.5em;
  font-weight: 700;
  padding: 0.75em 1.5em;
  position: relative;
  bottom: 1.25em;
  margin-left: -160px;
  margin-top:0px;
  margin-bottom:100px;
  text-decoration: none;
  width: 20px;
  height: 20px;
}

.uppercase, .button, b {
  text-transform: uppercase;
}

sup, .small {
  font-size: 0.6125em;
}

div.right {
	position:relative;
	margin-bottom:0;
	width: 30%;
	float: right;
}
.user_card {
	background-color: #e96b55;
	width: 332px;
	height: 368px;
}
</style>
</head>
<body>

  <div class="container group">
    <div id="divOne" onclick="clicks(this)" data-col="div1">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">1000<span class="small">원</span></strong><br>
      <small>01:00</small><br>
      <sub>마일리지 10p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-1" style="float:left;" value="1000" ><br><!-- onclick="txInput('payArea',this.value)" -->
    </div>
   	 </div>
     
     <div id="divTwo" onclick="clicks(this)" data-col="div2">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">2000<span class="small">원</span></strong><br>
      <small>02:00</small><br>
      <sub>마일리지 20p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-2" style="float:left;" value="2000" ><br><!-- onclick="txInput('payArea',this.value)" -->
    </div>
   	 </div>
   	 
       <div id="divThree" onclick="clicks(this)" data-col="div3">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">3000<span class="small">원</span></strong><br>
      <small>03:00</small><br>
      <sub>마일리지 30p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-3" style="float:left;" value="3000" ><br><!-- onclick="txInput('payArea',this.value)" -->
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
      <input type="radio" name="Ant" id="jb-radio-4" style="float:left;" value="5000" ><br><!-- onclick="txInput('payArea',this.value)" -->
    </div>
   	 </div>  


	<div id="divFive" onclick="clicks(this)" data-col="div5">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">10000<span class="small">원</span></strong><br>
      <small>11:00</small><br>
      <sub>마일리지 100p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-5" style="float:left;" value="10000" ><br><!-- onclick="txInput('payArea',this.value)" -->
    </div>
   	 </div>
     
     <div id="divSix" onclick="clicks(this)" data-col="div6">
    <div class="grid-1-5">
   	 <span class="button">✓</span><br>
      <span style="font-size: 0.5em; font-weight: 700; text-align: center; font-size: x-large;">charge</span><br><br>
      <strong style="font-size: 1.5em;">20000<span class="small">원</span></strong><br>
      <small>22:00</small><br>
      <sub>마일리지 200p+</sub><br>
      <input type="radio" name="Ant" id="jb-radio-6" style="float:left;" value="20000" ><br><!-- onclick="txInput('payArea',this.value)" -->
    </div>
   	 </div>
     
        <div class="right">
						<div class="user_card">
							<div class="btn-group">
								<input type="radio" class="btn btn" name="pay" id="radio-1"
									value="카드" onclick="txInput('payArea',this.value)">
								<div class="insertCard"></div>
							</div>
							<div class="btn-group">
								<input type="radio" class="btn btn" name="pay" id="radio-2"
									value="휴대폰"> <!-- onclick="txInput('payArea',this.value)" -->
								<div class="insertPhone"></div>
							</div>
							<table>
								<tr>
									<th>결제수단 :</th>
									<td><input type="text" class="box" id="payArea" name="payArea" readOnly></td>
								</tr>
								<tr>
									<th>걸제금액 :</th>
									<td><input type="text" class="box" id="priceArea" name="priceArea" readOnly></td>
								</tr>
							</table>
							<button type="button" class="charge" id="radioButton" value="r"
								onclick="charge()">충전하기</button>
							<button type="reset" class="cancel">취소</button>
							<button type="button" class="charge" onclick="test()">테스트 충전</button>
						</div>
					</div>
    </div> 
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
    </script>
</body>
</html>