<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <!-- ======= Hero Section ======= 상단 슬라이드 화면-->
  <section id="hero">
    <div class="hero-container">
      <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <!-- Slide 1 -->
          <div class="carousel-item active" style="background: url(/resources/images/home/ezenpc2.jpg">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated animate__fadeInDown">Welcome to <span>EZENPLAY</span></h2>
                <p class="animate__animated animate__fadeInUp">이젠플레이를 찾아준 고객님께 진심어린 감사인사 드립니다. 회원제로 운영되며 쾌적한 환경에서 게임을 즐기실 수 있습니다. 저희 PC방에서 즐거운 시간 보내세요.</p>
                <c:if test="${UserInfo eq null }">
                <a href="/views/login" class="btn-get-started animate__animated animate__fadeInUp">로그인하러가기</a>
                </c:if>
              </div>
            </div>
          </div>

          <!-- Slide 2 -->
          <div class="carousel-item" style="background: url(/resources/images/home/ezenpc1.jpg)">
            <div class="carousel-container">
              <div class="carousel-content">
                <h2 class="animate__animated fanimate__adeInDown">The special <span>EZENPLAY</span></h2>
                <p class="animate__animated animate__fadeInUp">이젠플레이 함께 PC방 이용을 Smart하게! 회원님들의 즐거운 게임생활을 위해 할인쿠폰부터 게임쿠폰까지 준비했습니다.
다양한 혜택이 넘치는 이젠플레이를 만나보세요!
                  　</p>
                <c:if test="${UserInfo eq null }">
                <a href="/views/login" class="btn-get-started animate__animated animate__fadeInUp">로그인하러가기</a>
                </c:if>
              </div>
            </div>
          </div>
        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon icofont-rounded-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon icofont-rounded-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- End Hero -->