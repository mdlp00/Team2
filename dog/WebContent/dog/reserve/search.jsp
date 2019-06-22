<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스</title>
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
			$('#log').attr('href', '${pageContext.request.contextPath}/dog/login.c3');
			$('#nick').css('display', 'none');
			$('#joining').css('display', 'visible');
		} else {
			$('#log').text('로그아웃');
			$('#log').attr('href', '${pageContext.request.contextPath}/dog/logoutProc.c3');			
			$('#nick').css('display', 'visible');
			$('#joining').css('display', 'none');
		}
		
		
	$(function(){
		
		$('#ddate').click(function(){
			$(this).attr('type', 'date');
			$(this).prop('readonly', false);
		});
		$('#ddate1').click(function(){
			$(this).attr('type', 'date');
			$(this).prop('readonly', false);
		});
	});
	
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
	
<!-- 지역 선택 -->
<div class="w3-row w3-margin-top w3-col w3-padding" style="height: 100px;">
	<div class="w3-row"><p></p></div>
<div class="w3-light-grey w3-margin-top w3-border w3-border-orange w3-col m10 w3-opacity-min" style="margin:100px">
	<div class="w3-bdivr-item w3-button w3-border-right 1px">전체
		<span style="color:orange">339</span>
	</div>
	<div class="w3-bdivr-item w3-button w3-border-right 1px">서울
		<span style="color:orange">175</span>
	</div>
	<div class="w3-bdivr-item w3-button w3-border-right 1px">경기
		<span style="color:orange">138</span>
	</div>
	<div class="w3-bdivr-item w3-button w3-border-right 1px">인천
		<span style="color:orange">26</span>
	</div>
</div>
</div> 

<!-- 찾기 -->
<div class="w3-row w3-margin w3-center w3-padding w3-col m11 w3-border">
		<div class="w3-padding" style="display:inline; float:left;">서비스
			<form>
				<select style="width:130px; font-size:19px;">
				<option>24시간 돌봄
				<option>데이케어
				</select>
			</form>
		</div>
		<div class="w3-padding" style="display:inline; float:left;">예약일을 알려주세요!
			<form>
			<input style="width: 130px; hieight: 100px;" type="text" id="ddate" placeholder="시작날짜" readonly >
				<span>></span>
			<input style="width: 130px;"type="text" id="ddate1" placeholder="마지막날짜" readonly > 
			</form>
		</div>
		<div class="w3-padding" style="float:left;">반려견 나이
			<form>
				<select style="width:130px; font-size:20px;">
				<option>모든 연령
				<option>강아지 (1살 이하)
				<option>성견 (2~6살)
				<option>노령견 (7살 이상)
				</select>
			</form>
		</div>
		<div class="w3-padding" style="float:left;">반려견 크기
			<form>
				<select style="width:130px; font-size:20px;">
				<option>모든 크기
				<option>소형견 (0~4.9kg)
				<option>중형견 (5~14.9kg)
				<option>대형견 (15kg 이상)
				</select>
			</form>
		</div>
		<div class="w3-padding" style="float:left;">펫시터 등급
			<form>
				<select style="width:130px; font-size:20px;">
				<option>모든 등급
				<option>우수 펫시터
				<option>일반 펫시터
				<option>신규 펫시터
				</select>
			</form>
		</div>
 		<div class="w3-paddin w3-button w3-margin w3-blue w3-hover-aqua" style="float:left; min-width:100px;">
			찾기
		</div>	
	</div>
	
<!-- 검색 결과 -->
<div class="w3-center w3-row w3-container w3-margin-bottom" style="height: 200px;">
<div class="w3-container w3-center w3-margin-bottom" style="height: 200px;">
	<div class="w3-row w3-center">
		<div class="w3-align w3-button w3-margin w3-padding">
			<img class="w3-image w3-round-large" src="../../img/1--1.PNG">
		</div>
	</div>
</div>
<div class="w3-container w3-center w3-margin-bottom" style="margin: 100px; height: 200px;">
	<div class="w3-row w3-center">
		<div class="w3-align w3-button w3-margin w3-padding">
			<img class="w3-image w3-round-large" src="../../img/1--2.PNG">
		</div>
	</div>
</div>
<div class="w3-container w3-center w3-margin-bottom" style="margin: 100px; height: 200px;">
	<div class="w3-row w3-center">
		<div class="w3-align w3-button w3-margin w3-padding">
			<img class="w3-image w3-round-large" src="../../img/1--3.PNG">
		</div>
	</div>
</div>
<div class="w3-container w3-center w3-margin-bottom" style="margin: 100px; height: 400px;">
	<div class="w3-row w3-center">
		<div class="w3-align w3-button w3-margin w3-padding">
			<img class="w3-image w3-round-large" src="../../img/1--4.PNG">
		</div>
	</div>
</div>
</div>
	</body>
</html> 