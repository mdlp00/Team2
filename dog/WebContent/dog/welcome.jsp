<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도그 메이트</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	
</style>

<script type="text/javascript">
	var id = '${SID}';
	$(document).ready(function(){
	if(!id) {
		$('#log').text('로그인');
		$('#log').attr('href', 'login.c3');
		$('#nick').css('display', 'none');
		$('#joining').css('display', 'visible');
	} else {
		$('#log').text('로그아웃');
		$('#log').attr('href', 'logoutProc.c3');			
		$('#nick').css('display', 'visible');
		$('#joining').css('display', 'none');
	}
	
	});
</script>
</head>
<body>
	<!-- 상위 태그 -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="${pageContext.request.contextPath}/dog/welcome.c3" class="w3-bar-item w3-button w3-wide no-uline"><img src="${pageContext.request.contextPath}/img/logo.png" class="logo"></a>
			<div class="w3-center w3-hide-small">
				<a href="${pageContext.request.contextPath}/dog/visit.c3" class="w3-bar-item w3-button w3-center no-uline tab">펫시터 집으로 부르기</a>
				<a href="${pageContext.request.contextPath}/dog/reserve/search.c3" class="w3-bar-item w3-button no-uline tab">펫시터 집에 맡기기</a>
				<a href="${pageContext.request.contextPath}/dog/support.c3" class="w3-bar-item w3-button no-uline tab">자주하는질문</a>
				<a href="${pageContext.request.contextPath}/dog/applyText.c3" class="w3-bar-item w3-button no-uline tab">펫시터지원</a>
				<a href="${pageContext.request.contextPath}/dog/information/dogJoin.c3" class="w3-bar-item w3-button no-uline tab">펫 등록</a>
				<div class="w3-right w3-hide-small">
					<div style="text-align: left;">
						<a href="myInfo.c3" id="nick" class="w3-bar-item w3-button no-uline tab">${SID} 님</a>
						<a href="login.c3" class="w3-bar-item w3-button no-uline tab" id="log" style="margin: 13px 0px 0px;">로그인</a>
						<a href="join.c3" class="w3-bar-item w3-button no-uline tab" id="joining">회원가입</a>
					</div>
				</div>
	    	</div>
	  	</div>
	</div>
	
	<!-- 메인 사진  -->
	<div class="bgimg-1 w3-display-container w3-grayscale-min" id="home">
		<div class="w3-display-left w3-text-white w3-margin-top" style="padding: 150px;">
			<br>
			<span class="w3-xxlarge w3-hide-small" style="color: white;">당신의 반려동물을 </span><br>
			<span class="w3-xxlarge w3-hide-small" style="color: white;">믿을 수 있는 펫시터가</span><br>
			<span class="w3-xxlarge w3-hide-small" style="color: white;">대신 돌봐드립니다</span><br>
			<p class="padding-top-230" >
			<div class="w3-button w3-padding-large w3-large w3-margin-top w3-blue w3-hover-aqua">펫시터 예약하러 가기</div>
		</div> 
	</div>
	
	<!-- 메인 아래 --> 
	<div class="w3-row w3-center">
		<div class="w3-col m6 w3-padding w3-margin-top w3-right-align">
			<div class="w3-button">
				<img src="../img/2.PNG">
			</div>
		</div> 
		<div class="w3-col m6 w3-padding w3-margin-top w3-left-align">
			<div class=" w3-button">
				<img src="../img/3.PNG">
			</div>
		</div>
	</div>
	
	<!-- 메인 아래 아래  -->
	<div class="w3-container w3-margin" style="height: 0px">	
		<h3 class="w3-center">혼자 남겨진 반려동물을 위해 펫시터 서비스를 경험해보세요</h3>
	</div>
	<div class="w3-container w3-left-grey w3-margin-bottom" style="padding:100px 16px; margin: 50px; height: 400px;">
		<div class="w3-row w3-center">
			<div class="w3-col m6 w3-right-align">
				<img class="w3-image w3-round-large" src="../img/4.PNG">
			</div>
		    <div class="w3-col m6 w3-left-align" style="padding: 50px 100px;">
					<h3>펫시터 집으로 부르기</h3>
					<p>도그메이트 펫시터가 집으로 찾아와 반려동물을 돌봐드려요.<br>#방문펫시터 #도그워커 #배변처리 #밥주기</p>
				<div class="w3-button w3-black">자세히 알아보기</div>
			</div>
		</div>
	</div>
	<div class="w3-container w3-light-grey w3-margin-bottom" style="padding: 50px 200px;">
		<div class="w3-row w3-center">
			<div class="w3-col m6 w3-left-align" style="padding: 50px 50px;">
				<h3>펫시터 집에 맡기기</h3>
				<p>펫시터의 가정집에서 편안하고 자유롭게 지낼 수있어요.<br>#위탁펫시터 #1:1케어 #실시간사진공유</p>
				<div class="w3-button w3-black">자세히 알아보기</div>
			</div>
			<div class="w3-col m6 w3-left-align">
				<img class="w3-image w3-round-large" src="../img/5.PNG">
			</div>
		</div>
	</div>
	
	<!-- 맨아래  -->
	<div class="w3-row w3-container mt w3-margin-bottom w3-padding-bottom">
		<div class="w3-row-padding w3-display-container w3-margin-top">
			<div class="w3-col l3 m6 w3-margin-bottom w3-display-left" style="margin-left: 100px;">
				<div class="w3-card">
					<img src="../img/6.PNG" style="width: 100%;" class="w3-button">
					<div class="w3-container">
						<p><a href="www.naver.com" class="no-uline">첫번째 펫 사진</a></p>
					</div>
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom w3-display-middle">
				<div class="w3-card">
					<img src="../img/7.PNG" style="width:100%" class="w3-button">
					<div class="w3-container">
						<p><a href="www.naver.com" class="no-uline">두번째 펫 사진</a></p>
					</div>
				</div>
			</div>
			<div class="w3-col l3 m6 w3-margin-bottom w3-display-right" style="margin-right:100px">
				<div class="w3-card">
					<img src="../img/8.PNG" style="width:100%" class="w3-button">
					<div class="w3-container">
						<p><a href="www.naver.com" class="no-uline">세번째 펫 사진</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>