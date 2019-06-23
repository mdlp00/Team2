<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>반려견 수정</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<style type="text/css">
	.wrapper{
		width : 100%;
		height : 57px;
		border-bottom : 1px solid gray;
	}
	
	.logo{
		height : 50px;
		margin-left : 15px;
	}
	
	.tab{
		margin-top : 13px;
		margin-left : 12px;
	}
	
	.leftList{
		margin-top : 140px;
		width : 170px;
	}
	
	.list{
		border : 1px solid gray;
	}
	
	.lmargin{
		float : left;
		margin-left : 5%;
		display : inline-block;
	}
	
	.cen{
		margin-top : 140px;
		float : left;
		margin-left : 5%;
		width : 600px;
		height : 500px;
		border : 1px solid gray;
		display : inline-block;
	}
	
	.d1{
		display: inline-block;
		width:400px ;
		margin: 10px auto;
		text-align: center;
		
	}
	.dh{
		width:400px;
		height:400px;
		overflow: hidden;
	}
</style>
<script type="text/javascript">
	var id = '${SID}';
	$(document).ready(function(){
			if(!id) {
				$('#log').text('로그인');
				$('#log').attr('href', '${pageContext.request.contextPath}/dog/login.c3');
				$('#nick').css('display', 'none');
				$('#joining').css('display', 'visible');
			} else {
				$('#log').text('로그아웃');
				$('#log').attr('href', '${pageContext.request.contextPath}/dog/logoutProc.c3');			
				$('#nick').css('display', 'visible');
				$('#joining').css('display', 'none');
			}
						
			// 이미지 업로드 버튼
			$('#upload').click(function(){
				alert('파일 업로드가 완료되었습니다.');
				$('#frm').attr('action','${pageContext.request.contextPath}/dog/information/dogImgEditProc.c3');
			});
			
			// 파일
			var evt = document.getElementById('photo');
			evt.onchange = function(e){
				var tmp = URL.createObjectURL(e.target.files[0]);
				$('#img').attr('src',tmp);
			};
			
		});
</script>
</head>
<body>

	<!-- 상위 태그 -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<a href="${pageContext.request.contextPath}/dog/welcome.c3" class="w3-bar-item w3-button w3-wide no-uline"><img src="${pageContext.request.contextPath}/img/logo.png" class="logo"></a>
			<div class="w3-center w3-hide-small">
				<a href="${pageContext.request.contextPath}/dog/visit.c3" class="w3-bar-item w3-button w3-center no-uline tab">펫시터 집으로 부르기</a>
				<a href="${pageContext.request.contextPath}/dog/reserve/search.c3" class="w3-bar-item w3-button no-uline tab">펫시터 집에 맡기기</a>
				<a href="${pageContext.request.contextPath}/dog/support.c3" class="w3-bar-item w3-button no-uline tab">자주하는질문</a>
				<a href="${pageContext.request.contextPath}/dog/applyText.c3" class="w3-bar-item w3-button no-uline tab">펫시터지원</a>
				<a href="${pageContext.request.contextPath}/dog/information/dogJoin.c3" class="w3-bar-item w3-button no-uline tab">펫 등록</a>
				<div class="w3-right w3-hide-small">
					<div style="text-align: left;">
						<a href="myInfo.c3" id="nick" class="w3-bar-item w3-button no-uline tab">${SID} 님</a>
						<a href="login.c3" class="w3-bar-item w3-button no-uline tab" id="log" style="margin: 13px 0px 0px;">로그인</a>
						<a href="join.c3" class="w3-bar-item w3-button no-uline tab" id="joining">회원가입</a>
					</div>
				</div>
	    	</div>
	  	</div>
	</div>

<!-- 왼쪽 리스트 -->
	<div class="lmargin">
	   <div class="leftList">
	   		<div style="border : 1px solid gray; text-align : center;">
			    <img src="../../img/img_avatar2.png" style="width:100%;" class="w3-round"><br><br>
			    <h4>${SID}</h4>
	    	</div>
	  </div>
	  <div class="w3-bar-block">
	    <a href="#" class="w3-bar-item w3-button w3-padding  list" style="width : 170px;">예약내역</a> 
	    <a href="${pageContext.request.contextPath}/dog/myInfo.c3" class="w3-bar-item w3-button w3-padding w3-text-teal list" style="width : 170px;">반려동물 정보 관리</a> 
	    <a href="${pageContext.request.contextPath}/dog/information/myInfoEdit.c3" class="w3-bar-item w3-button w3-padding list" style="width : 170px;">계정관리</a>
	  </div>
	</div>
	
<!-- 가운데 부분 -->
	<div class="cen">
		<form method="post" id="frm" name="frm" enctype="multipart/form-data">
		<div class="w3-content w3-margin">
			<div class="w3-content w3-margin d1">
				<label for="img">사진을 선택해주세요 </label>
				<div class="w3-col w3-margin-top w3-margin-bottom w3-border" >
					<img src="${pageContext.request.contextPath}/img/logo.png" style="width:400px; height:280px;" id="img" />
				</div>
				<div class="w3-content">
					<input type="file" id="photo" name="photo" class="w3-input" />
					<input type="hidden" name="p_no" value="${p_no}">
				</div>
			</div>
		</div>
    		<input class="w3-cneter" type="submit" value="이미지 업로드" id="upload" name="upload" style= "background-color: #86d6d4; color: white">
		</form>
	</div>
</body>
</html>