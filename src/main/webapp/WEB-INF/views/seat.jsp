<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<jsp:include page="/WEB-INF/views/home/maintemplethead.jsp"></jsp:include><!-- 상단바로고디자인 -->
<jsp:include page="/WEB-INF/views/home/maintempletbar.jsp"></jsp:include><!-- 상단바와 로고 -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>ezen</title>
</head>
<!--리뷰작성 스타일-->
<style>

.div2 {

width: 50px;
height: 50px;
display: flex;
align-items: center;
justify-content: center;
background-color: #f7f7f7;
float: left;
margin: 3px;
 transition: all ease-in-out 0.3s; 
 cursor: pointer;
   font-size: 15px;
   
}
.seatbox{ 
display:inline;
transform:translate(400px,80px);
 transition: all ease-in-out 0.3s; 
}

.clicked {
color: #fff;
background-color: #f45454;
}
#seatreserve{

display: flex;
align-items: center;
justify-content: center;
background-color: #f45454;

color: #fff;
 transition: all ease-in-out 0.3s; 
 cursor: pointer;
   font-size: 15px;
}
</style>
<body>
 <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <ol>
          <li><a href="/">Home</a></li>
          <li>좌석현황</li>
        </ol>
        <h2>좌석현황</h2>

      </div>
    </section><!-- End Breadcrumbs -->
    
<!-- ======= Contact Section ======= -->
<main>
   <section id="blog" class="blog">
      <div class="container">

        <div class="row">
 <div class="seatbox">
<h2>pc현황</h2>
            <div class="divbox1">
      <div class="div2" id="square44">1</div>
      <div class="div2" id="square43">2</div>
      <div class="div2" id="square42">3</div>
      <div class="div2" id="square41">4</div>
      <div class="div2" id="square40">5</div>
      <div class="div2" id="square39">6</div>
      <div class="div2" id="square38">7</div>
      <div class="div2" id="square37">8</div>
      <div class="div2" id="square36">9</div>
      <div class="div2" id="square35">10</div>
    </div>
    <br />
    <div class="divbox2">
      <div class="div2" id="square34">11</div>
      <div class="div2" id="square33">12</div>
      <div class="div2" id="square32">13</div>
      <div class="div2" id="square31">14</div>
      <div class="div2" id="square30">15</div>
      <div class="div2" id="square29">16</div>
      <div class="div2" id="square28">17</div>
      <div class="div2" id="square27">18</div>
      <div class="div2" id="square26">19</div>
      <div class="div2" id="square25">20</div>
    </div>
    <div class="divbox3">
      <div class="div2" id="square24">21</div>
      <div class="div2" id="square23">22</div>
      <div class="div2" id="square22">23</div>
      <div class="div2" id="square21">24</div>
      <div class="div2" id="square20">25</div>
      <div class="div2" id="square19">26</div>
      <div class="div2" id="square18">27</div>
      <div class="div2" id="square17">28</div>
      <div class="div2" id="square16">29</div>
      <div class="div2" id="square15">30</div>
    </div>
    <div class="divbox4">
      <div class="div2" id="square14">31</div>
      <div class="div2" id="square13">32</div>
      <div class="div2" id="square12">33</div>
      <div class="div2" id="square11">34</div>
      <div class="div2" id="square10">35</div>
      <div class="div2" id="square9">36</div>
      <div class="div2" id="square8">37</div>
      <div class="div2" id="square7">38</div>
      <div class="div2" id="square6">39</div>
      <div class="div2" id="square5">40</div>
    </div>
    <div class="divbox5">
      <div class="div2"  id="square4">41</div>
      <div class="div2" id="square3">42</div>
      <div class="div2" id="square2">43</div>
      <div class="div2" id="square1">44</div>
      <div class="div2" id="square0">45</div>
      
    </div></div>
	</div><!-- 박스종료 -->
          <div class="col-lg-3 entries">
				<div class="col-lg-4">

            <div class="sidebar">

              <h3 class="sidebar-title">SEAT</h3>
              <div id="sidement" style ="display:block" >
              	<p >좌석을골라주세요</p>
              </div>
              <div id="seatment" style ="display:none; float:left;" ><!-- 좌석상세 뜨게할부분 -->
               <h1><span id="numberseat"style ="float:left;" >좌석번호</span></h1><h5>번</h5>
              <br/><br/><br/><span id="seatview">상세설명</span>
              </div><br/><br/><br/><br/><br/><br/>
               	<div id="seatreserve" style="cursor:pointer" onclick="gores()">예약하러가기</div>
              </div><!-- End sidebar recent posts-->

            </div><!-- End sidebar -->

       

          
        </div>

      </div>
    </section>
   
        
        <!-- 여기서부터 내용입력 -->
        
       
	
</main><!-- End #main -->

  

 




<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  <script> 

  
		
  var div2 = document.getElementsByClassName("div2");

  function gores(){
		var pcSeatNum = document.querySelector('.div2.clicked').innerHTML;
		window.open( '/views/reservation?pcSeatNum='+pcSeatNum ,'reservation', 'width = 500, height = 300, top = 100, left = 200,status=no ');
	}

  var sidement = document.getElementById("sidement"); //골라줘
  var seatment = document.getElementById("seatment"); //시트정보
  function handleClick(event) {
    //console.log(event.target);
    // console.log(this);
    // 콘솔창을 보면 둘다 동일한 값이 나온다
    //console.log(event.target.classList);
    sidement.style.display = "none"; //클릭시 골라줘안보이기
    seatment.style.display = "block"; //선택시 시트정보보이기
    if (event.target.classList[1] === "clicked") { //1개선택
    	event.target.classList.remove("clicked"); //한번더누르면 선택해제
    	sidement.style.display = "block"; //선택해제후골라줘보이기
    	seatment.style.display = "none"; //선택해제후시트정보안보이기
    } else {
      for (var i = 0; i < div2.length; i++) {
        div2[i].classList.remove("clicked"); //length넘어가면 기존선택지우기
      }
      event.target.classList.add("clicked");//지우고 1개선택
    }
  }

 $('.div2').click(function(){//사이드 뷰 전용
		var pcNum = $(this).text();
		var xhr = new XMLHttpRequest();
		xhr.open('GET', '/pc-status/reserve?pcNum='+pcNum);
		xhr.onreadystatechange = function(){
			if(xhr.readyState == 4 && xhr.status == 200){
					var res = JSON.parse(xhr.responseText);
					console.log(res);
				}
			$('#numberseat').text(res.pcInfo.pcSeatNum);
			$('#seatview').text(res.pcInfo.pcSpec);
			}
		xhr.send();
	});
	   
 
  function init() {
    for (var i = 0; i < div2.length; i++) {
      div2[i].addEventListener("click", handleClick); //핸들클릭펑션을 클릭시 진행
    }
  }
  init();
  
  
  
  window.onload = function(){ //좌석list뽑아오기
	
	  var i=0;
	  var xhr = new XMLHttpRequest();
 		xhr.open('GET', '/pc-status/list');
	  	xhr.onreadystatechange = function(){
	   	if(xhr.readyState == 4 && xhr.status == 200){
	    var res = JSON.parse(xhr.responseText);
			    for(var pc of res){
							  if(pc.pcSeatResult == 2){
								  $(function() {
									    $('.div2').css({
									        "background-color": "#545454",//예약시 기본색변경
									        "pointer-events": "none" //클릭금지
									    });
									});
								  
								 // div2[i].style.backgroundColor = "#545454"; 
								 // event.target.classList.add("seatused");
							  }
								  $('#square'+i).text(pc.pcInfo.pcSeatNum);
								  i++;
			    			}
					}
			}
	xhr.send();
	}
  
  
  
  
  </script>

<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->

</body>
</html>