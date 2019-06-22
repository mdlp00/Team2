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
		width : 170px;
	}
	
	.list{
		border : 1px solid gray;
	}
	
	.lmargin{
		float : left;
		margin-top : 150px;
		margin-left : 8%;
		display : inline-block;
	}
	
	.cen{
		margin-top : 140px;
		float : left;
		margin-left : 50px;
		width : 700px;
		height : 400px;
		border : 1px solid gray;
		display : inline-block;
	}
	
	.contents_wrap{
		width : 100%;
		height : 650px;
	}
		
	.pet_list{
		width : 100%;
		height : 81px;
	}
	
	.pet_inline{
		display : inline-block;
	}
	
	.pet_img{
		height : 100%;
		width : 85px;
		background-color : yellow;
	}
	
	.pet_tle{
		width : 300px;
		height : 100%;
		background-color : pink;
	}
	
	.pet_info{
		margin-top : 15px;
		width : 100%;
		height : 35px;
		background-color : red;
	}
	
	.pet_teb{
		width : 100%;
		height : 17px;
	}
	
	.stext{
		display : inline-block;
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
	
	// 반려견 추가 버튼
	$('#add').click(function(){
		$(location).attr('href','${pageContext.request.contextPath}/dog/information/dogJoin.c3');
	});
	
	// 상세보기 버튼
	
	// 수정 버튼
	$('.r2').click(function(){
		var p_no = $(this).attr('hreflang');
		$('#p_no').val(p_no);
		$('#frm').attr('action','${pageContext.request.contextPath}/dog/information/dogInfoEdit.c3');
		$('#frm').submit();
	});
	
	// 이미지수정 버튼
	
	// 삭제 버튼
		
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
			    <img src="${pageContext.request.contextPath}/img/img_avatar2.png" style="width:100%;" class="w3-round"><br><br>
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
		<div class="contents_wrap">
	
	<form  id="frm">
	    <input type="hidden"  name="p_no" id="p_no" value="">
	</form>		
<c:forEach var="data" items="${LIST}">
			<div class="pet_list">
				

			    <img src="${pageContext.request.contextPath}/img/logo.png" class="w3-left w3-circle w3-margin-right" style="width:80px; height : 100%;">
			    <span class="w3-margin-right">${data.p_name}</span><br>
			    (${data.pet_kind},${data.pet_age},${data.pet_size})
					<div class="pet_teb">
						<a style= "color: #7fc3c1; display : inline-block;" class="r1">상세보기</a>
						<a style= "color: #7fc3c1; display : inline-block;" class="r2" hreflang="${data.p_no}">수정</a>
						<a style= "color: #7fc3c1; display : inline-block;" class="r3">이미지수정</a>
						<a style= "color: #7fc3c1; display : inline-block;" class="r4">삭제</a>
					</div>

			</div>
</c:forEach>
		<button style="background-color: #fff; border: 1px solid #d0d0d0; color: #7fc3c1; padding: 17px 0px 15px; width: 100%;" id="add">반려견 추가</button>	
			
		</div>
	</div>
</body>
</html>