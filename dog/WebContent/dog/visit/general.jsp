<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>펫시터 집으로 부르기</title>
<link type="text/css" rel="stylesheet" href="../../css/w3.css" />
<link type="text/css" rel="stylesheet" href="../../css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="../../css/dog.css" />
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
				$(this).next().prop('checked', true);
			} else {
				$(this).css('color', 'orange');
				$(this).next().prop('checked', false);
			}
		});
		
		$('#btn').click(function(){
			var dog = $('#pet_name1').prop('checked');
			if(dog == false){
				alert('돌봄을 원하는 반려동물을 선택해주세요.');
				return;
			}
			
			var inf1 = $('#info1').prop('checked');
			var inf2 = $('#info2').prop('checked');
			var inf3 = $('#info3').prop('checked');
			var inf4 = $('#info4').prop('checked');
			if(inf1 == false || inf2 == false || inf3 == false || inf4 == false){
				alert('안내 내용을 다 읽으셔야 다음 단계로 진행이 가능합니다.');
				return;
			}
			$(location).attr('href', 'general_1.jsp');
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
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">방문 펫시터 예약</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
	
	<!-- 몸통 태그 -->
	<div style="margin: 40px 200px 0px; padding-top: 40px; background-color: #fbfbfb;">
		<form method="POST" action="#" name="frm" id="frm">
			<div style="margin: 0px 10px;">
				<div style="height: 45px;"></div>
				<h4 style="text-align: center; color: #6f6f6f; padding: 0px; margin: 0px;">돌봄을 원하는<br>반려동물을 선택해주세요</h4>
				<div style="height: 45px;"></div>
				<label style="width: 100%; text-align: left;">
					<span style="width: 100%; height: 25px;">
						<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f; margin-right: 5px;" id="check1"></i><input type="checkbox" id="pet_name1" name="pet_name1" style="display: none;" value="1">
						<span style="color: #6f6f6f;">반려견 이름(반려견 / 생년월 / 무게)</span>
					</span>
				</label>
				<div style="height: 10px;"></div>
				<div style="width: 100%; height: 0.1px; border: 1px solid #d0d0d0;"></div>
			</div>
		</form>
		<div style="margin: 0px 10px;">
			<div style="height: 45px;"></div>
			<div style="width: 100%; height: 62px;">
				<p style="color: #424242; font-size: 20px;">방문 예약 전 아래 내용을 확인해주세요!</p>
			</div>
			<div style="height: 15px;"></div>
			<div>
				<label style="border: 1px solid #d0d0d0; display: block; padding: 20px 8px; margin-bottom: 0px;">
					<span>
						<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f; margin-right: 5px;" id="check2"></i><input type="checkbox" id="info1" name="info1" style="display: none;" value="2" />
						<span style="color: #6f6f6f;">원하는 시간대 안에서 예약이 진행됩니다</span>
					</span>
				</label>
				<p style="border: 1px solid #d0d0d0; padding: 10px 15px; color: #828282; font-size: 12px; margin-top: 0px;">도그메이트는 원활한 돌봄을 위해 시간대로 운영되고 있습니다. <strong>오전 (9~12) 오후 (12~15 / 15~18) 저녁 (18~21) 타임</strong>으로 예약을 넣을 수 있습니다.</p>
			</div>
			<div style="height: 15px;"></div>
			<div>
				<label style="border: 1px solid #d0d0d0; display: block; padding: 20px 8px; margin-bottom: 0px;">
					<span>
						<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f; margin-right: 5px;" id="check3"></i><input type="checkbox" id="info2" name="info2" style="display: none;" value="3" />
						<span style="color: #6f6f6f;">돌봄은 1시간 단위로 제공됩니다</span>
					</span>
				</label>
				<p style="border: 1px solid #d0d0d0; padding: 10px 15px; color: #828282; font-size: 12px; margin-top: 0px;">펫시터는 요청한 시간대에 방문해 기본 1시간 돌봄을 (산책, 배식, 배변처리) 진행합니다.<br>또한 <strong>1시간 내 최대 2마리까지 산책이 가능하며 3마리 이상 산책을 원할 경우 2시간 돌봄으로 예약</strong> 신청 바랍니다.</p>
			</div>
			<div style="height: 15px;"></div>
			<div>
				<label style="border: 1px solid #d0d0d0; display: block; padding: 20px 8px; margin-bottom: 0px;">
					<span>
						<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f; margin-right: 5px;" id="check4"></i><input type="checkbox" id="info3" name="info3" style="display: none;" value="4" />
						<span style="color: #6f6f6f;">2명의 펫시터가 교차 배정될 수 있습니다</span>
					</span>
				</label>
				<p style="border: 1px solid #d0d0d0; padding: 10px 15px; color: #828282; font-size: 12px; margin-top: 0px;">원하는 날짜, 시간대 방문을 위해  <strong>최소 2명의 펫시터가 배정</strong>될 수 있으며 펫시터 지정은 불가합니다.</p>
			</div>
			<div style="height: 15px;"></div>
			<div>
				<label style="border: 1px solid #d0d0d0; display: block; padding: 20px 8px; margin-bottom: 0px;">
					<span>
						<i class="w3-xlarge fa fa-check-circle-o" style="color: #6f6f6f; margin-right: 5px;" id="check5"></i><input type="checkbox" id="info4" name="info4" style="display: none;" value="5" />
						<span style="color: #6f6f6f;">하네스가 없으면 산책이 불가합니다</span>
					</span>
				</label>
				<p style="border: 1px solid #d0d0d0; padding: 10px 15px; color: #828282; font-size: 12px; margin-top: 0px;">도그메이트는 산책 시 발생될 수 있는 놓침 사고를 예방하기 위해 이중산책줄을 사용합니다. <br><strong>도그메이트에서 준비한 목줄과 하네스를 결합하여 사고를 방지</strong>하고 있습니다. 하네스가 없을 경우 산책은 불가하며 실내놀이로 대체됩니다.</p>
			</div>
			<div style="height: 90px;"></div>
			<div style="text-align: center;">
				<button class="w3-button w3-padding-large" style="width: 150px; border: 1px solid #6ec4c1; background-color: #6ec4c1; color: #fff;" id="btn">다  음</button>
			</div>
		</div>
	</div>
</body>
</html>
