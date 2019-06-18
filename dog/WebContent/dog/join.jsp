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
		text-align: center;
	}
	
	.box{
	 background-color : #86d6d4;
	 padding : 58px 0px 0px;
	 text-align: center;
	}
	
	.color1{
	 color: #86d6d4;
	}
	
	.b1{
	margin-left: 28%;
	padding-top: 2%;
	
	}
</style>

<script type="text/javascript">
</script>

</head>
<body>

<div class="w3-col w3-center box">
	<h3 class="w3-container w3-text-white"  style="font-weight: bold;" > 모든 좋은일이 다오는 </h3> 
	<h1 class="w3-container w3-text-white"  style="font-weight: bold; font-size: 500%;" >다올</h1>
</div> 
	

<div class="w3-row w3-center w3-col m5 " style="margin-left: 30%;">
<form method="POST" action="/dog/login.c3" class="w3-container w3-card-4 w3-light-grey w3-margin"> 
<h2 class="w3-center color1">회원가입</h2>

 
<div class="w3-row w3-center b1" >
    <label class="w3-col m2"  for="id">I D : </label>
    <div class="w3-rest  w3-col m5 ">
      <input class="w3-input w3-border " id="id" name="id" type="text" placeholder="아이디 입력">
    </div>
</div>

<div class="w3-row w3-center b1 ">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
    <label class="w3-col m2"  for="password">P W : </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="password" name="password" type="password" placeholder="비밀번호입력">
    </div>
</div>

<div class="w3-row w3-center b1 ">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-user"></i></div>
    <label class="w3-col m2"  for="password">P W 확인 : </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="password" name="password" type="password" placeholder="비밀번호재입력">
    </div>
</div>



<div class="w3-row w3-section b1">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-envelope-o"></i></div>
    <label class="w3-col m2" for="name">이 름 : </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="name" name="name" type="text" placeholder="이름 입력">
    </div>
</div>

<div class="w3-row w3-section b1">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-phone"></i></div>
    <label class="w3-col m2"  for="birth">생년월일: </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="birth" name="birth" type="date" placeholder="생년월일 입력">
    </div>
</div>
<div class="w3-row w3-section b1">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-phone"></i></div>
    <label class="w3-col m2" for="add">주 소 : </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="add" name="add" type="text" placeholder="주소입력">
    </div>
</div>
<div class="w3-row w3-section b1">
  <div class="w3-col" style="width:50px"><i class="w3-xxlarge fa fa-phone"></i></div>
    <label class="w3-col m2" for="phone">연 락 처  : </label>
    <div class="w3-rest  w3-col m5">
      <input class="w3-input w3-border" id="phone" name="phone" type="text" placeholder="연락처 입력">
    </div>
</div>
<button class="w3-button w3-section  w3-ripple " style= "background-color: #86d6d4; color: white" > 회원가입 </button>
<button class="w3-button w3-section  w3-ripple "  style= "background-color: #86d6d4; color: white"> 취소 </button>
</form>
</div>

</body>
</html>