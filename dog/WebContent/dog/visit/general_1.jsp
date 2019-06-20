<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		$('.days li').click(function(){
			var dodo = $('.days li span').hasClass('active');
			var sday = $(this).html();
			var tday = $(this).text();
			if(sday != tday){
				$(this).html(tday);
			} else {
				if(dodo == true) {
					alert('날짜는 하루만 선택 가능합니다.');
					return;
				}
				$(this).html('<span class="active">' + tday + '</span>');
			}
		});
		
		$('#btn').click(function(){
			var day = $('.days li span').text();
			var stime = $('#start_time').val();
			var etime = $('#end_time').val();
			if(!day || !stime || !etime) {
				alert('날짜와 시간을 선택하세요.');
				return;
			}
			$('#pick_day').val(day);
			$('#pif_name').val('${pif_name}');
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
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">방문 일정 선택</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
		
	<!-- 몸통 태그 -->
	<div style="margin: 40px 200px 0px; padding-top: 40px; background-color: #fbfbfb;">
		<div style="margin: 0px 10px;">
			<div style="height: 45px;"></div>
			<h4 style="text-align: center; color: #6f6f6f; padding: 0px; margin: 0px;">돌봄 신청 일정을 선택해주세요</h4>
		</div>
		<div style="height: 10px;"></div>
		<div style="width: 100%; height: 0.1px; border: 1px solid #d0d0d0;"></div>
		<div style="height: 30px;"></div>
		<div>
			<div class="month">      
				<ul>
					<li class="prev">&#10094;</li>
					<li class="next">&#10095;</li>
					<li>July<br><span style="font-size:18px">2019</span>
					</li>
				</ul>
			</div>
			<ul class="weekdays">
				<li>Su</li>
				<li>Mo</li>
				<li>Tu</li>
				<li>We</li>
				<li>Th</li>
				<li>Fr</li>
				<li>Sa</li>
			</ul>
			<ul class="days">  
				<li> </li>
				<li>1</li>
				<li>2</li>
				<li>3</li>
				<li>4</li>
				<li>5</li>
				<li>6</li>
				<li>7</li>
				<li>8</li>
				<li>9</li>
				<li>10</li>
				<li>11</li>
				<li>12</li>
				<li>13</li>
				<li>14</li>
				<li>15</li>
				<li>16</li>
				<li>17</li>
				<li>18</li>
				<li>19</li>
				<li>20</li>
				<li>21</li>
				<li>22</li>
				<li>23</li>
				<li>24</li>
				<li>25</li>
				<li>26</li>
				<li>27</li>
				<li>28</li>
				<li>29</li>
				<li>30</li>
				<li>31</li>
			</ul>
		</div>
		<div style="height: 90px;"></div>
		<!-- form 태그 -->
		<div class="w3-center">
			<form method="POST" action="general_2.c3" name="frm" id="frm">
				<input type="hidden" id="pif_name" name="pif_name" >
				<input type="hidden" id="pick_day" name="pick_day" >
				<div>
					<span style="color: #6f6f6f; font-size: 17px;">시작 시간 : </span>
					<input type="time" id="start_time" name="start_time" style="border: 1px solid #6ec4c1;">
				</div>
				<div>
					<span style="color: #6f6f6f; font-size: 17px;">종료 시간 : </span>
					<input type="time" id="end_time" name="end_time" style="border: 1px solid #6ec4c1;">
				</div>
			</form>
		</div>
		<div style="margin: 0px 10px;">
			<div style="height: 40px;"></div>
			<div style="text-align: center;">
				<button class="w3-button w3-padding-large" style="width: 150px; border: 1px solid #6ec4c1; background-color: #6ec4c1; color: #fff;" id="btn">다  음</button>
			</div>
		</div>
	</div>
</body>
</html>
