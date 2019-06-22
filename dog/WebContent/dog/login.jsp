<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 하는 페이지!</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<link type="text/css" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	.pw_renew {
		border: none;
		display: inline-block;
		padding: 4px 8px;
		overflow: hidden;
	}
	.pw_renew:hover {
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
			$('#frm').attr('action', 'loginProc.c3');
			$('#frm').submit();
		});
		
		$('#pw_renew').click(function(){
			$(location).attr('href', 'passwordRenew.c3');
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
							<span class="mint" style="font-size: 13pt;">로그인 정보를 입력해주세요</span>
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
								<div style="color: gray;">비밀번호</div>
								<input type="password" class="inp" id="pw" name="pw" />
							</div>
						</div>
						<div><p></p></div>
						<div class="w3-row w3-center w3-margin">
							<div style="display: inline-block; width: 15px;"></div>
							<button id="btn" name="btn"><span>로그인</span></button>
						</div>
						<div><p></p></div>
					</form>
					<div class="w3-row w3-center w3-margin mint">
						<div class="pw_renew" id="pw_renew">
							<i class="fa fa-unlock-alt"></i><span style="margin-left: 10px;">비밀번호 재설정</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
