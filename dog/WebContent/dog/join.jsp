<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study</title>
<link type="text/css" rel="stylesheet" href="../css/w3.css" />
<link type="text/css" rel="stylesheet" href="../css/w3-colors-win8.css" />
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<style type="text/css">

	html, body {
		margin: 0px;
		padding: 0px;
		text-align: left;
	}
	
	.box{
	 background-color : #86d6d4;
	 padding : 58px 0px 0px;
	 text-align: left;
	}
	
	.color1{
	 color: #86d6d4;
	}
	
	.b1{
	margin-left: 5%;
	padding-top: 2%;
	text-align: left;
	}
	
	.b2{
	font-size: 15px;
	width : 200px;
	display : inline-block;
	text-align : right;
	}
	
	
	
	.it{
		width : 200px;
		height : 40px;
	}
	

</style>

<script type="text/javascript">
	var idck = false;
	
	$(document).ready(function(){
		$('#join').click(function(){
			$('#frm').attr('action','joinProc.c3');
		});
		
	/* 	$('#repw').stop().fadeOut(1)
		$('#repw2').stop().fadeOut(1) */
		
		$('pw').focusout(function(){
			var spw = document.getElementById('pw').value;
			var re1 = /^[a-z A-Z 0-9]{4-10}$/;
			//맞는지 확인하기
			if(!(re1.test(spw))){
				alert('비밀번호 입력형식에 맞지 않습니다');
				return;
			}
			$('#repw2').stop().fadeIn();
			$('#repw').stop().fadeIn();
			});
		
	
		//pw검사
		$('#repw').focusout(function(){
		var spws = document.getElementById('pw').value;
		var srepw = document.getElementById('repw').value
		
			// 맞는지 확인
			if(!(spws == srepw)){
				alert('입력한 비밀번호가 다릅니다. 다시입력해주세요');
				return;
			}
			$('#repw2').stop().fadeOut();
			$('#repw').stop().fadeOut();
		});
		
		$('#reid').click(function(){
			var mid = document.getElementById('id').value;
			var re = /^[a-z A-Z 0-9]{3,11}$/;
			

			
			//ajax 처리
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
						alert("[ " + mid +"] 는 사용가능합니다.");
					} else{
							alert("[ "+ mid+ " ] 아이디는 사용할 수 없습니다.");
							$('#id').val('');
							$('#id').focus();
					}
				},
				error: function(){
					alert("처리에러")
				}
			});
		});
		
		$('#name').click(function(){
			var nname = documnet.getElementById('name').value;
			var re0 = /^[가-힣]{2,6}$/;
			//맞는지 확인하기
			if(!(re0.test(sname))){
				alert('이름이 형식에 맞지 않습니다.');
				return;
			}
			alert('사용가능합니다.')
		});
/*		
			document.getelementById('reset').onclick = function(){
				location.href = 'welcome.jsp';
			}
*/
		$('#join').click(function(){
			//검사하기
			var mid = $('#id').val();
			var mpw = $('#pw').val();
			var mname = $('#name').val();
			var mbirth =  $('#birth').val();
			var maddr = $('#addr').val();
			var mtel = $('#tel').val();
			if(!mid || !mpw || !mname || !mbirth || !maddr || !mtel){
				alert('mid'+ mid + '\r\n mpw'+ mpw + '\r\n mname'+ mnname + '\r\n mbirth' +mbitrh + '\r\n maddr' + maddr + '\r\n mtel' + mtel);
				
				return;
			}
			if(!idck){
				alert('아이디 사용가능 여부 체크하세요')
				return;
			}
			var re3 = /^[0-9]{2,3}-[0-9]{2,4}-[0-9]{4}$/;	
			if(!(re3.test(shp))){
				alert('올바른 전화번호 형식이 아닙니다.');
				return;
			}
		
		$('#frm').submit();
		});
		
	});
</script>

</head>
<body>

<div class="w3-col w3-center box">
	<h3 class="w3-container w3-text-white"  style="font-weight: bold;" > 모든 좋은일이 다오는 </h3> 
	<h1 class="w3-container w3-text-white"  style="font-weight: bold; font-size: 500%;" >다올</h1>
</div> 
	

<div class="w3-row w3-center w3-col m6 " style="margin-left: 30%;">
<form method="POST" action="joinProc.c3" id="frm" class="w3-container w3-card-4 w3-light-grey w3-margin"> 
<h2 class="w3-center color1">회원가입</h2>

 
<div class="w3-row  b1" >
    <label class="b2" >아이디 입력 : </label>
      <input class="w3-border it" id="id" name="id" type="text"  placeholder="아이디 입력">
  		<div class="w3-button w3-center" id="reid" style="height:40px; width:90px; background-color: #86d6d4; color: white">중복확인</div>   
</div>


<div class="w3-row b1 ">
    <label class="b2" for="id">비밀번호 입력 </label>
       <input class="w3-border it" id="pw" name="pw" type="password"  placeholder="비밀번호 입력">
</div>

<div class="w3-row  b1 ">
    <label  class="b2" for="id" id="repw2">비밀번호  재입력  </label>
      <input class="w3-border it" id="repw" name="repw" type="password"  placeholder="비밀번호 재입력">
</div>

<div class="w3-row b1">
    <label class="b2" for="name">이 름 입력 : </label>
      <input class="w3-border it" id="name" name="name" type="text" placeholder="이름 입력">

</div>

<div class="w3-row b1">
    <label class="b2" for="birth" style="margin-top: -10px;" >생년월일 입력 : </label>
      <input class="w3-border it" id="birth" name="birth" type="date" placeholder="생년월일 입력">
</div>


<div class="w3-row b1">
    <label class="b2" for="add">주소 입력 :</label>
      <input class="w3-border it" id="addr" name="addr" type="text" placeholder="주소입력">
</div>

<div class="w3-row b1">
    <label class="b2" for="phone">연락처 입력  :</label>
      <input class="w3-border it" id="tel" name="tel" type="text" placeholder="연락처 입력">
</div>


<button class="w3-button w3-section  w3-ripple " style= "background-color: #86d6d4; color: white" id="join" > 회원가입 </button>
<button class="w3-button w3-section  w3-ripple "  style= "background-color: #86d6d4; color: white" id="reset"> 취소 </button>
</form>
</div>

</body>
</html>