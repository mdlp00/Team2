<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맡기기 상세페이지</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">

	function form_btn(n){
	    var sum = document.getElementById('sum');
	    var total = document.getElementById("sum1");
	
	    money = parseInt(sum.value);
	    money1 = parseInt(sum1.value); 
	    money += n;
	    money1 += n;
	    sum.value = money;
	  	sum1.value = money1;
			
	  	if(money >= 100001){
				sum.value = 0;
				sum1.value = 45000;
	       }
	  	
	   	if(money <  0){
	  		sum.value = 0 ; 
	  		sum1.value= 45000;
	  	}
			
	  	if(money1 < 45000){
				sum1.value = 45000;
			}
	}
	function minus() {
		var minus = document.getElemntById('minus');
	        if (minu < 1) {
	            minus.value -- ;
				minus.value = 0;
	        }
	}
	$(function(){
		$('#ddate').click(function(){
			$(this).attr('type', 'date');
			$(this).prop('readonly', false);
		});
		$('#ddate').click(function(){
			$(this).attr('type', 'date');
			$(this).prop('readonly', false);
		});
		$('#ddate1').click(function(){
			$(this).attr('type', 'date');
			$(this).prop('readonly', false);
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
<div class="w3-row w3-padding" style="margin-top: 20px;">
	<div class="w3-col m1"><p></p></div>
	<div class="w3-light-grey w3-margin-top w3-border w3-border-orange w3-col m10 w3-opacity-min">
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

<!-- 사진 관련 -->
<div class="w3-row w3-padding">
	<div class="w3-col m1"><p></p></div>
	<div class="w3-col m10">
		<div class="w3-col w3-content m8 w3-left-align">
			<div class="w3-row w3-margin-top">
				<a href="#">
					<img src="../../img/logo.png" style="width: 640px; height: 360px;"></a><br>
				<a href="#">
					<img src="../../img/logo.png" style="width: 210px; height: 103px; margin-top: 10px;"></a>
				<a href="#">
					<img src="../../img/logo.png" style="width: 210px; height: 103px; margin-top: 10px;"></a> 
				<a href="#">
					<img src="../../img/logo.png" style="width: 210px; height: 103px; margin-top: 10px;"></a>
			</div>
<!-- 사진아래 (도우미) -->
			<div class="w3-row w3-margin-top">
				<a href="#">
					<img src="../../img/a.PNG" style="width: 640px; height: 120px;" class="w3-border-bottom 1px"></a><br>
			</div>			
		<!-- 도우미 사진 아래 -->
			<div class="w3-col m5 w3-margin-top">			
				<img src="../../img/c.PNG" align="left">
				<span>돌봄가능한 강아지 크기 & 나이</span><br>
				<span class="fa fa-check-circle-o" aria-hidden="true"> 1~15kg 까지 가능합니다.</span><br>	
				<span class="fa fa-check-circle-o" aria-hidden="true"> 강아지, 성견, 노령견 케어 가능</span><br>
				<span class="w3-padding">합니다.</span><br>
			</div>
			<div class="w3-col m5 w3-margin-top">	
				<img src="../../img/d.PNG" align="left">
				<span style="font-weight:100">체크인, 체크아웃 시간</span><br>
				<span class="fa fa-check-circle-o" aria-hidden="true" style="font-weight:bold;">체 크 인:09:00AM ~ 09:00PM</span><br>	
				<span class="fa fa-check-circle-o" aria-hidden="true" style="font-weight:bold;">체크아웃:09:00AM ~ 09:00PM</span><br>							
			</div>
		</div>

<!-- 사진 옆에 -->	
		<div class="w3-col m4 w3-content w3-border w3-margin-top" style="height: 350px;">
			<div class="w3-margin-top w3-padding">
				예약을 원하는 날짜와 시간을 선택해 주세요.
			</div>
			<div class="w3-row w3-padding w3-center" style="display:inline; float:left;">
				<form>
					<input style="width: 130px; hieight: 100px;" type="text" id="ddate" placeholder="시작날짜" readonly >
					<span>></span>
					<input style="width: 130px;"type="text" id="ddate1" placeholder="마지막날짜" readonly > 
				</form>
			</div>
			<div class="w3-row w3-padding w3-center">
				<form>
					<span style="color:orange; font-size:25px">45,000원</span>
						<select style="width:150px; font-size:18px;">
							<option>15kg 미만
							<option>15kg 이상
						</select>
				</form>
			</div>
			<div class="w3-row w3-center">
				<div class="w3-col">
					<span>반려견 추가당</span>
					<span style="color:orange;">20,000원</span>
				</div>
			</div>
			<div class="w3-row w3-border-top 1px w3-border-bottom 1px">
				<div class="w3-col">
					<span class="w3-col m10" >1박 </span>
					<span> 45,000</span>
				</div>
			</div>

			<div class="w3-row w3-border-top 1px w3-border-bottom 1px">	
				<span class="w3-col m3" style="float:left;">반려견 추가</span>
				<button id="puls" onclick="form_btn(20000)" style="float:left;">+</button>
				<input type="text" name="num" value="0" style="width: 40px; align: left">
				<button id="minus" onclick="form_btn(-20000); minus()">-</button>
				<input type="text" id="sum" value="0" style="width:100px;">
			</div>
			<div class="w3-row w3-border-top 1px w3-border-bottom 1px">
				<span class="w3-col m10">부가세</span>
				<span>4,500</span>
			</div>
			<div class="w3-row w3-border-top 1px w3-border-bottom 1px">	
				<span class="w3-col m3">총합계</span>
				<input type="text" id="sum1" value="45000">
			</div>
			<div class="w3-center">
			<div class="w3-button w3-large w3-margin-top w3-blue w3-hover-aqua">예약요청하기</div>
			</div>		
		</div>
<!-- 예약하는곳 아래 -->
		<div class="w3-col m4 w3-row w3-content w3-border w3-margin-top" style="height: 400px;">
			<a href="#">
				<img src="../../img/b.PNG" style="width: 350px; height: 399px;" class="w3-border-bottom 1px"></a><br>
		</div>	
	</div>
</div>
</body>
</html>