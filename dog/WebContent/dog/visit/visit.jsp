<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 집으로 부르기</title>
<link type="text/css" rel="stylesheet" href="../css/w3.css" />
<link type="text/css" rel="stylesheet" href="../css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="../css/dog.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn1').click(function(){
			$(location).attr('href', 'regular.c3');
		});
		$('#btn2').click(function(){
			$(location).attr('href', 'general.c3');
		});
	});
</script>
</head>
<body style="background-color: #fbfbfb;">
	<!-- 상위 태그 -->
	<div class="w3-top" style="width: 100%; background-color: #fff; border-bottom: 1px solid #e6e6e6; z-index: 3;">
		<div class="w3-bar w3-white">
			<div class="w3-col m4">
				<a href="../welcome.jsp" class="w3-left w3-bar-item w3-button w3-wide no-uline"><img src="../img/logo.png" class="logo"></a>
			</div>
			<div class="w3-center w3-col m4">
				<div class="w3-center" style="display: inline-block;">
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">방문 펫시터 예약</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
	
	<!-- 몸통 태그 -->
	<div style="margin: 80px 15px 0px;">
		<div>
			<div style="height: 45px;"></div>
			<h4 style="text-align: center; color: #6f6f6f; padding: 0px; margin: 0px;">원하시는 방문 유형을<br>선택해주세요</h4>
			<div style="height: 45px;"></div>
			<button style="background-color: #fff; border: 1px solid #6ec4c1; color: #7fc3c1; padding: 17px 0px 15px; width: 100%;" id="btn1">정기 방문 돌봄 신청</button>
			<div style="height: 20px;"></div>
			<button style="background-color: #fff; border: 1px solid #d0d0d0; color: #6f6f6f; padding: 17px 0px 15px; width: 100%;" id="btn2">일반 방문 돌봄 신청</button>			
			<div style="height: 45px;"></div>
			<div class="w3-center">
				<i class="fa fa-calendar" style="color: #6ec4c1; margin-right: 5px;"></i>
				<span style="color: #6f6f6f;">정기 방문 돌봄 신청</span>
			</div>
			<div style="height: 10px;"></div>
			<div class="w3-center">
				<span style="color: #6f6f6f;">매월 몇회씩 방문 돌봄을 신청하는 서비스로 정기 결제 시 최대 22% 할인 된 가격으로 이용하실 수 있습니다.</span>
			</div>
			<div style="height: 45px;"></div>
			<div class="w3-center">
				<i class="fa fa-flag-o" style="margin-right: 5px;"></i>
				<span style="color: #6f6f6f;">정기 방문 돌봄 신청</span>
			</div>
			<div style="height: 10px;"></div>
			<div class="w3-center">
				<span style="color: #6f6f6f;">여행 및 출장 등의 이유로 단기 방문 돌봄을 신청하는 서비스로 5회 이상 예약 시 10% 할인된 가격으로 이용하실 수 있습니다.</span>
			</div>
		</div>
	</div>
</body>
</html>
