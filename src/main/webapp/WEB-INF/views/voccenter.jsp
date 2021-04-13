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
.probox {
margin: auto;
    width: 100px;
    height: 100px; 
    border-radius: 70%;
    overflow: hidden;
}

.profileone {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

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
    </section><!-- End Breadcrumbs -->
    
<!-- ======= Contact Section ======= -->
<main>
    <section id="contact" class="contact">
      <div class="container">
        <div class="row">
        
        <!-- 여기서부터 내용입력 -->
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>contact@example.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+1 5589 55488 55</p>
            </div>
          </div>

        </div>

        <div class="row">

          <div class="col-lg-6 ">
            <jsp:include page="/WEB-INF/views/customercenter/map.jsp"></jsp:include>
          </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="form-row">
                <div class="col form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validate"></div>
                </div>
                <div class="col form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validate"></div>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                <div class="validate"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                <div class="validate"></div>
              </div>
              <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
            
          </div>
        </div>
		 <jsp:include page="/WEB-INF/views/customercenter/q.jsp"></jsp:include><!-- f&q -->
				  <br/><br/><br/>
		 
		 <jsp:include page="/WEB-INF/views/customercenter/reviewslide.jsp"></jsp:include><!-- 리뷰슬라이드-->
		 
				  <br/><br/><br/><br/><br/><br/><br/>
		
		<jsp:include page="/WEB-INF/views/customercenter/reviewup.jsp"></jsp:include><!-- 리뷰등록-->		  
		
				      </div>		 
    </section><!-- End Contact Section -->
  </main><!-- End #main -->

  
   <script>
   jQuery(document).ready(function($){
       
      $(".btnrating").on('click',(function(e) {
      
      var previous_value = $("#selected_rating").val();
      
      var selected_value = $(this).attr("data-attr");
      $("#selected_rating").val(selected_value);
      
      $(".selected-rating").empty();
      $(".selected-rating").html(selected_value);
      
      for (i = 1; i <= selected_value; ++i) {
      $("#rating-star-"+i).toggleClass('btn-warning');
      $("#rating-star-"+i).toggleClass('btn-default');
      }
      
      for (ix = 1; ix <= previous_value; ++ix) {
      $("#rating-star-"+ix).toggleClass('btn-warning');
      $("#rating-star-"+ix).toggleClass('btn-default');
      }
      
      }));
      
         
   });

   </script>
 




<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>


<jsp:include page="/WEB-INF/views/home/maintempletfooter.jsp"></jsp:include><!-- footer형태-->
<jsp:include page="/WEB-INF/views/home/maintempletfooterjs.jsp"></jsp:include><!-- 템플릿전체움직임-->

</body>
</html>