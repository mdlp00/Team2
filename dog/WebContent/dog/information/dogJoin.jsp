<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study</title>
<link type="text/css" rel="stylesheet" href="../../css/w3.css">
<link type="text/css" rel="stylesheet" href="../../css/w3-colors-win8.css">
<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
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
		margin-top : 150px;
		width : 170px;
	}
	
	.list{
		border : 1px solid gray;
	}
	
	.lmargin{
		margin-left : 5%;
		display : inline-block;
	}
	
	.cen{
		margin-left : 3%;
		width : 700px;
		height : 357px;
		border : 1px solid gray;
		display : inline-block;
	}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>

<!-- 상위 태그 -->
<div class="w3-top">
	<div class="w3-bar w3-white w3-card" id="myNavbar">
		<a href="#" class="w3-bar-item w3-button w3-wide no-uline"><img src="../../img/logo.png" class="logo"></a>
		<div class="w3-center w3-hide-small">
			<a href="#" class="w3-bar-item w3-button w3-center no-uline tab">펫시터 집으로 부르기</a>
			<a href="#" class="w3-bar-item w3-button no-uline tab">펫시터 집에 맡기기</a>
			<a href="#" class="w3-bar-item w3-button no-uline tab">자주하는질문</a>
			<a href="#" class="w3-bar-item w3-button no-uline tab">펫시터지원</a>
		<div class="w3-right w3-hide-small">
			<a href="#" class="w3-bar-item w3-button no-uline tab">로그인</a>
			<a href="#" class="w3-bar-item w3-button no-uline tab">회원가입</a>
   		</div>
    	</div>
  	</div>
</div>

<!-- 왼쪽 리스트 -->
	<div class="lmargin">
	   <div class="leftList">
	   		<div style="border : 1px solid gray; text-align : center;">
			    <img src="../../img/img_avatar2.png" style="width:100%;" class="w3-round"><br><br>
			    <h4>양희준</h4>
	    	</div>
	  </div>
	  <div class="w3-bar-block">
	    <a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal list" style="width : 170px;">예약내역</a> 
	    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding list" style="width : 170px;">반려동물 정보 관리</a> 
	    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding list" style="width : 170px;">계정관리</a>
	  </div>
	</div>
	
<!-- 가운데 부분 -->
	<div class="cen">
		<form method="post" action="dogJoinProc.c3" id="frm" name="frm">
		
		</form>
	</div>

</body>
</html>