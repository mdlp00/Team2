<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Study</title>
<link type="text/css" rel="stylesheet" href="../../css/w3.css">
<link type="text/css" rel="stylesheet" href="../../css/w3-colors-win8.css">
<script type="text/javascript" src="../../js/jquery-3.4.1.min.js"></script>
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
		width : 500px;
		height : 800px;
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
			$('#log').attr('href', 'login.c3');
			$('#nick').css('display', 'none');
			$('#joining').css('display', 'visible');
		} else {
			$('#log').text('로그아웃');
			$('#log').attr('href', 'logoutProc.c3');			
			$('#nick').css('display', 'visible');
			$('#joining').css('display', 'none');
		}
	
		var evt = document.getElementById('photo');
		evt.onchange = function(e){
			var tmp = URL.createObjectURL(e.target.files[0]);
			$('#img').attr('src',tmp);
		};
		
			
	$('#join').click(function(){
			var sname = $('#name').val();
			var skind = $('#kind').val();
			var sage = $('#age').val();
			var ssize = $('#size').val();
			if(!saname || !skind || !sage || !ssize){
				alert('')
			}
		}); 
		
		
		});	
	
		
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
			    <h4>${SID}</h4>
	    	</div>
	  </div>
	  <div class="w3-bar-block">
	    <a href="#portfolio" onclick="w3_close()" class="w3-bar-item w3-button w3-padding  list" style="width : 170px;">예약내역</a> 
	    <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-text-teal list" style="width : 170px;">반려동물 정보 관리</a> 
	    <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-padding list" style="width : 170px;">계정관리</a>
	  </div>
	</div>
	
<!-- 가운데 부분 -->
	<div class="cen">
		<form method="post" action="dogJoinProc.c3" id="frm" name="frm" style="margin-top : 80px;">
		
		<div class="w3-content w3-margin">
				<label for="id">애완동물 이름을 입력 : </label>
				<input type="text" name="pname" id="pname" class="w3-col m10 w3-input w3-border" placeholder="애완동물이름을 입력해주세요" required />	
		</div>
		<br><br>
		<h4> 견종 선택</h4>
		<select class="w3-select"  name="pkind" placeholder="견종선택" style="width:40%">
        <datalist id="pkind">
            <option value=1>포메라니안</option>        
            <option value=2>시츄</option>
            <option value=3>불독</option>
            <option value=4>허스키</option>
            <option value=5>치와와</option>
            <option value=6>슈나이저</option>
            <option value=7>닥스훈트</option>
            <option value=7>조원용</option>
        </datalist>
        </select>
     
		<h4> 견종 나이</h4><br>
		<select class="w3-select"  name="page" placeholder="견종 나이선택"  style="width:40%">
        <datalist id="page">
            <option value=1>강아지(1살이하)</option>
            <option value=2>성견(2~6살)</option>
            <option value=3>노령견(7살이상)</option>
            <option value=3>조원견(10살이상)</option>
        </datalist>
        </select>
      
		<h4> 반려견크기 </h4>
		<select  class="w3-select" name="psize" placeholder="반려견 크기선택" style="width:40%">
        <datalist id="psize">
            <option value=1>소형견(0~4.9kg)</option>
            <option value=2>중형견(5~1.14kg)</option>
            <option value=3>대형견(15kg이상)</option>
        </datalist>
        </select>

		<div class="w3-content w3-margin">
				<label for="id" style="margin-rigth: 500px;"><h3>애완동물 사진을 선택해주세요</h3> </label>
				<div class="w3-col w3-margin-top w3-margin-bottom w3-border "   style="width:200px; height:200px" >
					<img src="../../img/add.PNG" style="width:100%; height:100%" id="img" />
				</div>
				<div class="w3-content">
					<input type="file" id="photo" name="photo" class="w3-input" />
				</div>
			</div>
    		<input class="w3-cneter" type="submit" value="저장" id="join" style= "background-color: #86d6d4; color: white">
		</form>
	</div>
</body>
</html>