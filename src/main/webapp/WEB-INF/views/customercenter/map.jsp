<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
         <div class="faqHeader">오시는길</div>
								<div id="worldmap"style="float:left">
									<!-- 1. 지도 시작 -->
									<div id="daumRoughmapContainer1617944095183" class="root_daum_roughmap root_daum_roughmap_landing"></div>
									<!--
										2. 설치 스크립트
										* 지도 퍼가기 서비스를 2개 이상 넣을 경우, 설치 스크립트는 하나만 삽입합니다.
									-->
									<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
									
									<!-- 3. 실행 스크립트 -->
									<script charset="UTF-8">
										new daum.roughmap.Lander({
											"timestamp" : "1617944095183",
											"key" : "25a6g",
											"mapWidth" : "400",
											"mapHeight" : "300"
										}).render();
									</script>
									</div><!-- 지도끝 -->
								<div style="float:left"><!-- 지도옆 -->
								<div class="panel-body">
                    <strong>지하철을 이용할경우</strong> 7호선, 중앙선 상봉역 00출구 도보 10분 이동
                    <ul>
                        <li>Register an account</li>
                        <li>Activate your account</li>
                        <li>Go to the <strong>Themes</strong> section and upload your theme</li>
                        <li>The next step is the approval step, which usually takes about 72 hours.</li>
                    </ul>
			    </div>
			</div>
			</div>
</body>
</html>