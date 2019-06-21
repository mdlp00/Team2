<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Password ReNew</title>
<link type="text/css" rel="stylesheet" href="../css/w3.css" />
<link type="text/css" rel="stylesheet" href="../css/w3-colors-win8.css" />
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	html, body {
		overflow: hidden;
	}
	.inp {
		width: 310px;
		border: 0;
		border-bottom: 1px solid lightgray;
	}
	input:focus {
		box-shadow: 0px 0px 0px 0px white !important;
		border-bottom: 1px solid orange !important;
	}
	.mint {
		color: #6ec4c1;
	}
	.box {
		display: inline-block;
		width: 400px;
		height: 640px;
	}
	.goBack {
		border: none;
		display: inline-block;
		padding: 4px 8px;
		overflow: hidden;
	}
	.goBack:hover {
		background-color: #6ec4c1;
		color: white;
	}
	
	#btn {
		display: inline-block;
		background-color: #6ec4c1;
		border: 0;
		margin: 0;
		padding: 10px, 10px;
		width: 100%;
		height: 40px;
		color: white;
		font-size: 15pt;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn').click(function(){
			var sid = $('#id').val();
			var smail = $('#mail').val();
			
			$.ajax({
				url : "./pwrenew.ck",
				type: "POST",
				dataType: "json",
				data: {
					"id" : sid,
					"mail" : smail
				},
				success: function(data){
					if(data.cnt == 0){
						alert("입력하신 메일로 임시 비밀번호를 발송했습니다.");
						$('#pid').val(sid);
						$('#pmail').val(smail);
						$('#frm').attr('action', 'pwsend.c3');
						$('#frm').submit();
					} else {
						alert("입력하신 메일이 아이디에 등록된 메일과 일치하지 않습니다.\r\n다시 입력하여 주십시오.");
						$('#mail').val('');
						$('#mail').focus();
					}
				},
				error: function(){
					alert("처리 에러");
					return;
				}
			});
		});
		
		$('#goBack').click(function(){
			$(location).attr('href', 'login.c3');
		});
	});
</script>
</head>
<body>
	<div class="w3-col m4"><p></p></div>
	<div class="w3-col m4">
		<div class="box">
			<div class="w3-content" style="border: 1px solid #6ec4c1; margin-top: 80px;">
				<div class="w3-padding-large">
					<form method="POST" action="#" name="frm" id="frm">
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<div class="mint" style="font-size: 13pt; text-align: center;">회원 가입시 작성한 이메일로</div>
							<div class="mint" style="font-size: 13pt; text-align: center;">임시 비밀번호를 보내드립니다.</div>
							<input type="hidden" id="pid" name="pid">
							<input type="hidden" id="pmail" name="pmail">
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<div style="display: inline-block;">
								<div style="color: gray;">아이디</div>
								<input type="text" class="inp" id="id" name="id" />
							</div>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<div style="display: inline-block;">
								<div style="color: gray;">이메일</div>
								<input type="text" class="inp" id="mail" name="mail" />
							</div>
						</div>
					</form>
					<div><p></p></div>
					<div class="w3-row w3-center w3-margin">
						<div style="display: inline-block; width: 15px;"></div>
						<button id="btn" name="btn"><span>확인</span></button>
					</div>
					<div><p></p></div>
					<div class="w3-row w3-center w3-margin mint">
						<div class="goBack" id="goBack">
							<i class="fa fa-mail-reply"></i><span style="margin-left: 10px;">기억났어요! 돌아갈게요!</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
