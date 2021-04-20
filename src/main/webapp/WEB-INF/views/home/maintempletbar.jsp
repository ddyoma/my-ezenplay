<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <c:if test="${UserInfo ne null }">
<style>
#loginButton{
${UserInfo.userName}님 환영합니다.
}
</style>
</c:if>
  <!-- ======= Top Bar ======= -->
  
  
  <section id="topbar" class="d-none d-lg-block">
    <div class="container d-flex">
      <div class="contact-info mr-auto">
        <i class="icofont-envelope"></i><a href="mailto:contact@example.com">contact@example.com</a>
        <i class="icofont-phone"></i> +1 5589 55488 55
      </div>
      <div class="social-links">
        <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
        <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
        <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
        <a href="#" class="skype"><i class="icofont-skype"></i></a>
        <a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="/"><span>EZEN PC</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="/">Home</a></li>


 
          <li><a href="/views/seat">좌석현황</a></li>
          <li><a href="/views/food">메뉴</a></li>
          <li><a href="/views/timecharge">시간충전</a></li>
          <li><a href="/views/voccenter">고객센터</a></li>
          
          
          
                     <li class="drop-down" id="loginButton"><a href="/views/login">로그인/회원가입</a>
            <ul>
              <li><a href="about.html">정보수정</a></li>
              <li><a href="team.html">로그아웃</a></li>
            </ul>
          </li>
          
        </ul>
      </nav><!-- .nav-menu -->
    </div>
  </header><!-- End Header -->

