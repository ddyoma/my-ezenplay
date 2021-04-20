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
border: 1px solid;
width: 50px;
height: 50px;
display: flex;
align-items: center;
justify-content: center;
background-color: #f7f7f7;
float: left;
margin: 3px;
}
.seatbox{ 
display:inline;
transform:translate(300px,0);
}

.clicked {
color: #f45454;
background-color: #f8f798;
}
.seatused {
background-color: #545454;
color: #fff;
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
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
        
        <!-- 여기서부터 내용입력 -->
        <div class="seatbox">
            <div class="divbox1">
      <div class="div2" id="line1">1</div>
      <div class="div2" id="line1">2</div>
      <div class="div2" id="line1">3</div>
      <div class="div2" id="line1">4</div>
      <div class="div2" id="line1">5</div>
      <div class="div2" id="line1">6</div>
      <div class="div2" id="line1">7</div>
      <div class="div2" id="line1">8</div>
      <div class="div2" id="line1">9</div>
      <div class="div2" id="line1">10</div>
    </div>
    <br />
    <div class="divbox2">
      <div class="div2" id="line2">11</div>
      <div class="div2" id="line2">12</div>
      <div class="div2" id="line2">13</div>
      <div class="div2" id="line2">14</div>
      <div class="div2" id="line2">15</div>
      <div class="div2" id="line2">16</div>
      <div class="div2" id="line2">17</div>
      <div class="div2" id="line2">18</div>
      <div class="div2" id="line2">19</div>
      <div class="div2" id="line2">20</div>
    </div>
    <div class="divbox3">
      <div class="div2" id="line3">21</div>
      <div class="div2" id="line3">22</div>
      <div class="div2" id="line3">23</div>
      <div class="div2" id="line3">24</div>
      <div class="div2" id="line3">25</div>
      <div class="div2" id="line3">26</div>
      <div class="div2" id="line3">27</div>
      <div class="div2" id="line3">28</div>
      <div class="div2" id="line3">29</div>
      <div class="div2" id="line3">30</div>
    </div>
    <div class="divbox4">
      <div class="div2" id="line4">31</div>
      <div class="div2" id="line4">32</div>
      <div class="div2" id="line4">33</div>
      <div class="div2" id="line4">34</div>
      <div class="div2" id="line4">35</div>
      <div class="div2" id="line4">36</div>
      <div class="div2" id="line4">37</div>
      <div class="div2" id="line4">38</div>
      <div class="div2" id="line4">39</div>
      <div class="div2" id="line4">40</div>
    </div>
    <div class="divbox5">
      <div class="div2" id="line5">41</div>
      <div class="div2" id="line5">42</div>
      <div class="div2" id="line5">43</div>
      <div class="div2" id="line5">44</div>
      <div class="div2" id="line5">45</div>
      
    </div>
	</div>
</div>
	<div id="popup" style="display:block">
	보여랑
	</div>
</div>		 
</section><!-- End Contact Section -->
</main><!-- End #main -->

  

 




<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
  <script> 
 
		
  var div2 = document.getElementsByClassName("div2");

  function handleClick(event) {
    console.log(event.target);
    // console.log(this);
    // 콘솔창을 보면 둘다 동일한 값이 나온다

    console.log(event.target.classList);

    if (event.target.classList[1] === "clicked") { //1개선택
    	event.target.classList.remove("clicked"); //한번더누르면 선택해제
    	alert("선택해제");
    } else {
      for (var i = 0; i < div2.length; i++) {
        div2[i].classList.remove("clicked"); //length넘어가면 기존선택지우기
      }
      event.target.classList.add("clicked");//지우고 1개선택
    }
  }

  function init() {
    for (var i = 0; i < div2.length; i++) {
      div2[i].addEventListener("click", handleClick); //핸들클릭펑션을 클릭시 진행
    }
  }

  init();
  
  
  
  window.onload = function(){
		//  ('[id^=test]')<싹다가져오기
			var xhr = new XMLHttpRequest();
			xhr.open('GET', '/pc/list');
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4 && xhr.status == 200){
					console.log(xhr.responseText);
					var res = JSON.parse(xhr.responseText);

					
					alert("잘돼요");
					}
				}
			xhr.send();
			}
			
  </script>

<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->

</body>
</html>