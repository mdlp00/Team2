<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 집으로 부르기</title>
<link type="text/css" rel="stylesheet" href="../../css/w3.css" />
<link type="text/css" rel="stylesheet" href="../../css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="../../css/dog.css" />
<link type="text/css" rel="stylesheet" href="../../css/calendar.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#pa1').click(function(){
			$('.ppd').slideUp();
			$('#pd1').slideDown();
		});
		$('#pa2').click(function(){
			$('.ppd').slideUp();
			$('#pd2').slideDown();
		});
		$('#pa3').click(function(){
			$('.ppd').slideUp();
			$('#pd3').slideDown();
		});
		
		
		$('#btn').click(function(){
			var payment = $(':checked').val();
			if(payment == undefined){
				alert('결제 수단을 선택하세요');
				return;
			}
			
			$('#pick_day').val('${pick_day}');
			$('#start_time').val('${start_time}');
			$('#end_time').val('${end_time}');
			$('#ck1').val('${ck1}');
			$('#ck2').val('${ck2}');
			$('#ck3').val('${ck3}');
			$('#ck4').val('${ck4}');
			$('#reqe').val('${reqe}');
			
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<!-- 상위 태그 -->
	<div class="w3-top" style="width: 100%; background-color: #fff; border-bottom: 1px solid #e6e6e6; z-index: 3;">
		<div class="w3-bar w3-white">
			<div class="w3-col m4">
				<a href="../welcome.jsp" class="w3-left w3-bar-item w3-button w3-wide no-uline"><img src="../../img/logo.png" class="logo"></a>
			</div>
			<div class="w3-center w3-col m4">
				<div class="w3-center" style="display: inline-block;">
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">예약 확인 및 결제 정보</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
		
	<!-- 몸통 태그 -->
	<div style="margin: 40px 200px 0px; padding-top: 40px; background-color: #fbfbfb;">
		<!-- form 태그 -->
		<form method="POST" action="visitProc.c3" name="frm" id="frm">
			<div style="margin: 0px 10px;">
				<div style="height: 45px;"></div>
				<h4 style="text-align: left; color: #6f6f6f; padding: 0px; margin: 0px;">예약 확인하시고 결제정보를 등록해주세요.</h4>
				<div style="border: 1px solid #d0d0d0; height: 0.01px;"><p></p></div>
				<div>
<c:forEach var="data" items="${LIST}">
					<div style="color: #6f6f6f;"><strong>반려동물 :</strong> ${data.p_name} (${data.pet_age} / ${data.pet_size} / ${data.pet_kind} )</div>
</c:forEach>
					<div style="color: #6f6f6f;"><strong>방문주소 :</strong> ${addr}</div>
					<div style="color: #6f6f6f;"><strong>방문날짜 :</strong> 7월 ${pick_day}일 / ${start_time} ~ ${end_time} / 총 ${total_time}시간</div>
<c:forEach var="data" items="${REQCK}">
					<div style="color: #6f6f6f;"><strong>요청사항 :</strong> ${data}</div>
</c:forEach>
					<div style="color: #6f6f6f;"><strong>추가요청사항 :</strong> ${reqe}</div>
				</div>
				<div style="border: 1px solid #d0d0d0; height: 0.01px;"><p></p></div>
				<div style="height: 20px;"></div>
				<h3 style="color: #6ec4c1;">결제 예정 금액 : ${price} 원</h3>
				<div style="border: 1px solid #d0d0d0; height: 0.01px;"><p></p></div>
				<div style="color: #6f6f6f;">
					<h5>결제 수단 선택</h5>
					<div style="height: 10px;"></div>
					<div>
						<input class="ppp" id="pa1" type="radio" name="payment" value="checkCard">체크카드
						<input class="ppp" id="pa2" type="radio" name="payment" value="creditCard" >신용카드
						<input class="ppp" id="pa3" type="radio" name="payment" value="depositlessPayment" >무통장입금
					</div>
				</div>
				<div style="height: 15px;"></div>
				<div>
					<div style="display: inline-block; width: 800px; margin-left: 50px; color: #6f6f6f;">
						<div class="ppd" style="display: none; height: 150px; border: 1px solid gray;" id="pd1">
							<p>체크카드 고르는 곳</p>
						</div>
						<div class="ppd" style="display: none; height: 150px; border: 1px solid gray;" id="pd2">
							<p>신용카드 고르는 곳</p>
						</div>
						<div class="ppd" style="display: none; height: 150px; border: 1px solid gray;" id="pd3">
							<p>무통장 입금 계좌번호 보여주는 곳</p>
						</div>
					</div>
				</div>
				<div style="height: 15px;"></div>
				<div style="border: 1px solid #d0d0d0; height: 0.01px;"><p></p></div>
			</div>
<c:forEach var="data" items="${LIST}">
			<input type="hidden" id="pif_name" name="pif_name" value="${data}">
</c:forEach>
			<input type="hidden" id="pick_day" name="pick_day" >
			<input type="hidden" id="start_time" name="start_time" >
			<input type="hidden" id="end_time" name="end_time" >
			<input type="hidden" id="ck1" name="ck1" >
			<input type="hidden" id="ck2" name="ck2" >
			<input type="hidden" id="ck3" name="ck3" >
			<input type="hidden" id="ck4" name="ck4" >
			<input type="hidden" id="reqe" name="reqe" >
		</form>
		<div style="height: 30px;"></div>
		<div style="margin: 0px 10px;">
				<div style="text-align: center;">
				<button class="w3-button w3-padding-large" style="width: 150px; border: 1px solid #6ec4c1; background-color: #6ec4c1; color: #fff;" id="btn">완  료</button>
			</div>
		</div>
	</div>
</body>
</html>
