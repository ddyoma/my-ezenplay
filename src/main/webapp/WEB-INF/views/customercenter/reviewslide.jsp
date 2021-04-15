<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style><!--리뷰스타일-->
.rating-header {
    margin-top: -10px;
    margin-bottom: 10px;
}
body{margin-top:20px;}

.align-center {
    text-align: center;
}
.hash-list {
    display: block;
    padding: 0;
    margin: 0 auto;
}

@media (min-width: 768px){
    .hash-list.cols-3 > li:nth-last-child(-n+3) {
        border-bottom: none;
    }
}
@media (min-width: 768px){
    .hash-list.cols-3 > li {
        width: 33.3333%;
    }
}
.hash-list > li {
    display: block;
    float: left;
    border-right: 1px solid rgba(0, 0, 0, 0.2);
    border-bottom: 1px solid rgba(0, 0, 0, 0.2);
}
.pad-30, .pad-30-all > * {
    padding: 30px;
}
img {
    border: 0;
}
.mgb-20, .mgb-20-all > * {
    margin-bottom: 20px;
}
.wpx-100, .wpx-100-after:after {
    width: 100px;
}
.img-round, .img-rel-round {
    border-radius: 50%;
}
.padb-30, .padb-30-all > * {
    padding-bottom: 30px;
}

.mgb-40, .mgb-40-all > * {
    margin-bottom: 40px;
}
.align-center {
    text-align: center;
}
[class*="line-b"] {
    position: relative;
    padding-bottom: 20px;
    border-color: #E6AF2A;
}
.fg-text-d, .fg-hov-text-d:hover, .fg-active-text-d.active {
    color: #222;
}
.font-cond-b {
    font-weight: 700 !important;
}
.fontw {
line-height: 100%;
font-weight: bold ;
}

</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->




<div class="container text-center my-3">
    <h3>리뷰보기</h3>
    
    <div id="recipeCarousel" class="carousel slide w-100" data-ride="carousel">
        <div class="carousel-inner w-100" role="listbox">
            <div class="carousel-item row no-gutters active">
            <div class="col-3 float-left" id="margingood">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br><div style="float:right;" class="col-md-6 text-warning" id= "revStar0"  ></div>
			          <br><div id="fontw" style="float:left" >작성자</div><br><div style="float:left;" class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId0" ></div>
			          <br><div id="fontw" style="float:left;" >작성코멘트</div><br><small style="float:left;" id= "revComment0" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
                <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 :  <div  class="col-md-6 text-warning" id= "revStar1"></div>
			          아이디 : <div><p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId1"></p></div>
			          내용 <div id="revComment1"></div>
        		</div>
                <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar2"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId2"></p>
			          내용 : <small id= "revComment2" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
                <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar3"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId3"></p>
			          내용 : <small id= "revComment3" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
        		
            </div>
            <div class="carousel-item row no-gutters">
                 <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar4"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId4"></p>
			          내용 : <small id= "revComment4" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
                 <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar5"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId5"></p>
			          내용 : <small id= "revComment5" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
                 <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar6"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId6"></p>
			          내용 : <small id= "revComment6" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
                <div class="col-3 float-left">
			          <img src="http://newsroom.etomato.com/userfiles/black1(13).jpg" class="wpx-100 img-round mgb-20" title="" alt="" data-edit="false" data-editor="field" data-field="src[Image Path]; title[Image Title]; alt[Image Alternate Text]">
			          <br>별점 : <div class="col-md-6 text-warning" id= "revStar7"></div>
			          아이디 : <p class="font-cond mgb-5 fg-text-d fs-130" contenteditable="false" id="userId7"></p>
			          내용 : <small id= "revComment7" class="font-cond case-u lts-sm fs-80 fg-text-l" contenteditable="false">Business Woman - New York</small>
        		</div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#recipeCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#recipeCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

</div>


