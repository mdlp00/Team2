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
		$('i').click(function(){
			var sck = $(this).next().prop('checked');
			if(sck == true){
				$(this).css('color', '#6f6f6f');
				$(this).next().prop('checked', false);
			} else {
				$(this).css('color', 'orange');
				$(this).next().prop('checked', true);
			}
		});
		
		$('#btn').click(function(){
			var chec1 = $('#ck1').prop('checked');
			var chec2 = $('#ck2').prop('checked');
			if(chec1 == true) {
				if(chec2 == true) {
					alert('산책을 시키라는건지 말라는 건지...');
					return;
				}
			}
			
			$('#pick_day').val('${pick_day}');
			$('#start_time').val('${start_time}');
			$('#end_time').val('${end_time}');
			
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
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">요청사항</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
		
	<!-- 몸통 태그 -->
	<div style="margin: 40px 200px 0px; padding-top: 40px; background-color: #fbfbfb;">
		<div style="margin: 0px 10px;">
			<div style="height: 45px;"></div>
			<h4 style="text-align: center; color: #6f6f6f; padding: 0px; margin: 0px;">펫시터에게 전달 할 요청사항이 있으신가요?</h4>
		</div>
		<div style="height: 30px;"></div>
		
		<div class="w3-center">
			<!-- form 태그 -->
			<form method="POST" action="general_3.c3" name="frm" id="frm">
				<div style="display: inline-block; width: 300px; text-align: left;">
					<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f;"></i><input type="checkbox" id="ck1" name="ck1" style="display: none;" value="1" />
					<span style="color: #6f6f6f;">산책없이 놀이 서비스로 대체해주세요.</span>
				</div>
				<div style="height: 30px;"></div>
				<div style="display: inline-block; width: 300px; text-align: left;">
					<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f;"></i><input type="checkbox" id="ck2" name="ck2" style="display: none;" value="2" />
					<span style="color: #6f6f6f;">산책 위주로 진행해주세요.</span>
				</div>
				<div style="height: 30px;"></div>
				<div style="display: inline-block; width: 300px; text-align: left;">
					<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f;"></i><input type="checkbox" id="ck3" name="ck3" style="display: none;" value="3" />
					<span style="color: #6f6f6f;">생식 급여가 필요합니다.</span>
				</div>
				<div style="height: 30px;"></div>
				<div style="display: inline-block; width: 300px; text-align: left;">
					<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f;"></i><input type="checkbox" id="ck4" name="ck4" style="display: none;" value="4" />
					<span style="color: #6f6f6f;">노령견 및 환자견 케어가 필요합니다.</span>
				</div>
				<div style="height: 30px;"></div>
<c:forEach var="data" items="${LIST}">
				<input type="hidden" id="pif_name" name="pif_name" value="${data}">
</c:forEach>
				<input type="hidden" id="pick_day" name="pick_day" >
				<input type="hidden" id="start_time" name="start_time" >
				<input type="hidden" id="end_time" name="end_time" >
				<div style="display: inline-block; width: 400px; text-align: left;">
					<textarea rows="5" cols="50" id="reqe" name="reqe" placeholder="추가적으로 필요한 요청이 있다면 적어주세요."></textarea>
				</div>
			</form>
		</div>
		<div style="height: 50px;"></div>
		<div style="margin: 0px 10px;">
			<div style="height: 40px;"></div>
			<div style="text-align: center;">
				<button class="w3-button w3-padding-large" style="width: 150px; border: 1px solid #6ec4c1; background-color: #6ec4c1; color: #fff;" id="btn">완  료</button>
			</div>
		</div>
	</div>
</body>
</html>
