<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보 페이지</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	.cen{
		boarder : 1px solid gray;
		margin-top : 140px;
		width : 800px;
		height : 100%;
		float : center;
		margin-left : 20%;
	}
	
	.no{
		color : gray;
	}
</style>
<script type="text/javascript">

$(document).ready(function(){

		// 비밀번호 확인
		$('#repw').focusout(function(){
			var spws = $('#pw').val();
			var srepw = $('#repw').val();
			// 정규식 검사
			if(!(spws == srepw)){
				alert('입력한 비밀번호가 다릅니다. 다시 입력해주세요.');
				return;
			}
		});
		
		// 수정하기 버튼
		$('#update').click(function(){
			$('#frm').attr('action','${pageContext.request.contextPath}/dog/information/myInEditProc.c3');
			alert('회원정보 변경이 완료되었습니다.');
			$('#frm').submit();
		});
		
		// 탙퇴하기 버튼
		$('#delete').click(function(){
			
		});
		
		// 돌아가기 버튼
		$('#cencel').click(function(){
			$(location).attr('href','${pageContext.request.contextPath}/dog/myInfo.c3');
		});
});
</script>
</head>
<body>
		<!-- 상위 태그 -->
	<div class="w3-top" style="width: 100%; background-color: #fff; border-bottom: 1px solid #e6e6e6; z-index: 3;">
		<div class="w3-bar w3-white">
			<div class="w3-col m4">
				<a href="${pageContext.request.contextPath}/dog/welcome.jsp" class="w3-left w3-bar-item w3-button w3-wide no-uline"><img src="${pageContext.request.contextPath}/img/logo.png" class="logo"></a>
			</div>
			<div class="w3-center w3-col m4">
				<div class="w3-center" style="display: inline-block;">
					<div class="w3-bar-item no-uline tab" style="display: inline-block; color: #6f6f6f; font-size: 17px;">계정 관리</div>
				</div>
			</div>
			<div class="w3-col m4"><p></p></div>
		</div>
	</div>
	
	<!-- 본문 -->
	<div class="cen">
		<form method="post" id="frm" name="frm">
			<label for="id">I D : 
			<input class="no w3-input" type="text" id="id" name="id" value="${SID}" readonly>
			</label>
			
			<label for="id">새로운 P W : 
			<input class="w3-input" type="password" id="pw" name="pw" value="">
			</label>
			
			<label for="id">새로운 P W 확인 : 
			<input class="w3-input" type="password" id="repw" name="repw" value="">
			</label>
			
			<label for="id">이 름 : 
			<input class="no w3-input" type="text" id="ename" name="ename" value="${VO.mname}" readonly>
			</label>
			
			<label for="id">생 일 : 
			<input class="no w3-input" type="text" id="birth" name="birth" value="${VO.mbirth}" readonly>
			</label>
			
			<label for="id">전화번호 : 
			<input class="w3-input" type="text" id="tel" name="tel" value="${VO.mtel}">
			</label>
			
			<label for="id">이메일 : 
			<input class="w3-input" type="text" id="mail" name="mail" value="${VO.mail}">
			</label>
		</form>
	<button style="background-color: #fff; border: 1px solid #d0d0d0; color: #7fc3c1; padding: 17px 0px 15px; width: 100%;" id="update">정보 수정</button>
	<button style="background-color: #fff; border: 1px solid #d0d0d0; color: #7fc3c1; padding: 17px 0px 15px; width: 100%;" id="delete">탈퇴하기</button>
	<button style="background-color: #fff; border: 1px solid #d0d0d0; color: #7fc3c1; padding: 17px 0px 15px; width: 100%;" id="cencel">돌아가기</button>
	</div>
</body>
</html>