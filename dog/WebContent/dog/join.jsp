<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	html, body {
		margin: 0px;
		padding: 0px;
		text-align: left;
	}
	.box {
		background-color : #86d6d4;
		padding : 30px 0px 30px;
		text-align: left;
	}
	.color1 {
		color: #86d6d4;
	}
	.b1 {
		margin-left: 5%;
		padding-top: 2%;
		text-align: left;
	}
	.b2 {
		font-size: 15px;
		width : 200px;
		display : inline-block;
		text-align : right;
	}
	.it {
		width : 250px;
		height : 40px;
	}
</style>
<script type="text/javascript">
	var idck = false;
	$(document).ready(function(){
		// 취소 버튼 클릭
		$('#reset').click(function(){
			$(location).attr('href', 'welcome.jsp');
		});
		
		$('pw').focusout(function(){
			var spw = $('#pw').val();
			var re = /^[a-z A-Z 0-9]{4-10}$/;
			// 정규식 검사
			if(!(re.test(spw))){
				alert('비밀번호는 영어 대소문자, 숫자의 조합으로 4~10 글자이어야 합니다.');
				return;
			}
			$('#repw2').stop().fadeIn();
			$('#repw').stop().fadeIn();
		});
		
		// pw검사
		$('#repw').focusout(function(){
			var spws = $('#pw').val();
			var srepw = $('#repw').val();
			// 정규식 검사
			if(!(spws == srepw)){
				alert('입력한 비밀번호가 다릅니다. 다시 입력해주세요.');
				return;
			}
			$('#repw2').stop().fadeOut();
			$('#repw').stop().fadeOut();
		});
		
		$('#reid').click(function(){
			var mid = $('#id').val();
			var re = /^[a-z A-Z 0-9]{3,11}$/;
			// 정규식 검사
			if(!(re.test(mid))){
				alert('아이디는 영어 대소문자, 숫자의 조합으로 3~11 글자이어야 합니다.');
				return;
			}		
			// ajax 처리
			$.ajax({
				url : "./idcheck.ck",
				type: "POST",
				dataType: "json",
				data: {
					"id" : mid
				},
				success: function(data){
					if(data.cnt == 0){
						idck = true;
						alert("[ "+ mid +" ] 는 사용 가능 합니다.");
					} else {
							alert("[ "+ mid+ " ] 아이디는 사용할 수 없습니다.");
							$('#id').val('');
							$('#id').focus();
					}
				},
				error: function(){
					alert("처리 에러")
				}
			});
		});

		// 회원가입 버튼 클릭
		$('#join').click(function(){
			// 검사하기
			var mid = $('#id').val();
			var mpw = $('#pw').val();
			var mname = $('#name').val();
			var mbirth =  $('#birth').val();
			var mmail = $('#mail').val();
			var maddr = $('#addr').val();
			var mtel = $('#tel').val();
			// 미 기입 여부 확인
			if(!mid || !mpw || !mname || !mbirth || !maddr || !mtel){
				alert('mid'+ mid + '\r\n mpw'+ mpw + '\r\n mname'+ mnname + '\r\n mbirth' +mbitrh + '\r\n mail' + mail+ '\r\n maddr' + maddr + '\r\n mtel' + mtel);
				return;
			}
			// 아이디 체크 여부 확인
			if(!idck){
				alert('아이디 사용가능 여부 체크하세요.')
				return;
			}
			// 전화번호 정규식 검사
			var re = /^[0-9]{2,3}-[0-9]{2,4}-[0-9]{4}$/;	
			if(!(re.test(mtel))){
				alert('올바른 전화번호 형식이 아닙니다.');
				return;
			}
			//메일검사   
			var re =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if(!(re.test(mmail))){
				alert('올바른 메일 형식이 아닙니다.');  
				return;      
			}
			
			alert('회원가입이 완료되었습니다.')
			$('#frm').submit();
		});
	});
</script>
</head>
<body>
	<div class="w3-col w3-center box">
		<h3 class="w3-container w3-text-white" style="font-weight: bold;">모든 좋은일이 다오는</h3> 
		<h1 class="w3-container w3-text-white" style="font-weight: bold; font-size: 500%;">다올</h1>
	</div> 
	<div class="w3-col m3"><p></p></div>
	<div class="w3-center w3-col m6">
		<div class="w3-container w3-card-4 w3-light-grey w3-margin">
		<form method="POST" action="joinProc.c3" id="frm" name="frm"> 
			<h2 class="w3-center color1">회 원 가 입</h2>
			<div class="w3-row b1">
				<label class="b2" >아이디 입력 : </label>
				<input class="w3-border it" id="id" name="id" type="text" placeholder="아이디 입력">
				<div class="w3-button w3-center" id="reid" style="height: 40px; width: 90px; background-color: #86d6d4; color: white;">중복확인</div>   
			</div>
			<div class="w3-row b1">
				<label class="b2">비밀번호 입력 : </label>
				<input class="w3-border it" id="pw" name="pw" type="password" placeholder="비밀번호 입력">
			</div>
			<div class="w3-row b1">
				<label class="b2" id="repw2">비밀번호  재입력 : </label>
				<input class="w3-border it" id="repw" name="repw" type="password" placeholder="비밀번호 재입력">
			</div>
			<div class="w3-row b1">
				<label class="b2">이름 입력 : </label>
				<input class="w3-border it" id="name" name="name" type="text" placeholder="이름 입력">
			</div>
			<div class="w3-row b1">
				<label class="b2" style="margin-top: -10px;">생년월일 입력 : </label>
				<input class="w3-border it" id="birth" name="birth" type="date" placeholder="생년월일 입력">
			</div>
			<div class="w3-row b1">    
				<label class="b2">주소 입력 :</label>
				<input class="w3-border it" id="addr" name="addr" type="text" placeholder="주소 입력">
			</div>
			<div class="w3-row b1">
				<label class="b2">연락처 입력  :</label>
				<input class="w3-border it" id="tel" name="tel" type="text" placeholder="연락처 입력">
			</div>
			<div class="w3-row b1">
				<label class="b2">이메일 입력 :</label>
				<input class="w3-border it" id="mail" name="mail" type="text" placeholder="이메일 입력">
			</div>
		</form>
			<button class="w3-button w3-section w3-ripple" style="background-color: #86d6d4; color: white; width: 95px;" id="join">회원가입</button>
			<button class="w3-button w3-section w3-ripple" style="background-color: #86d6d4; color: white; width: 95px;" id="reset">취소</button>
		</div>
	</div>
	<div class="w3-col m3"><p></p></div>
</body>
</html>