<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.net.*" %>
<!DOCTYPE html>
<html>    
<meta charset="UTF-8">         
<title>자주하는질문</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/w3-colors-win8.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/dog.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
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
	.btn1{
	margin-top : 50px;
	width: 130px;
	height: 45px;
	text-align: center;
	}
	.qu{
		
	}
	.bd{
		/* display : none; */
	text-align: left;
	}
	
	#t2, #t3, #t4{
		display : none;
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
		
		$('.bd').fadeOut(0);
		$('.qu').click(function(){
			$('.bd').fadeOut(10);
			$(this).next().stop().fadeIn(300);
		});
			
		$('.btn1').click(function(){
			var btn = $(this).html();

			if(btn == "방문서비스"){
				$('#t2').css('display','none');
				$('#t3').css('display','none');
				$('#t4').css('display','none');
				$('#t1').css('display','block');
			}else if(btn == "위탁서비스"){
				$('#t1').css('display','none');
				$('#t3').css('display','none');
				$('#t4').css('display','none');
				$('#t2').css('display','block');				
			}else if(btn == '펫시터지원'){
				$('#t1').css('display','none');
				$('#t2').css('display','none');
				$('#t4').css('display','none');
				$('#t3').css('display','block');
			}else if(btn == '기타'){
				$('#t1').css('display','none');
				$('#t3').css('display','none');
				$('#t3').css('display','none');
				$('#t4').css('display','block');				
			}
		});
		
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

<div class="w3-col w3-center box">
	<h1 class="w3-container w3-text-white"  style="font-weight: bold; font-size: 500%;" > 다올 QnA</h1>
	<br>
	<h3 class="w3-container w3-text-white"  style="font-weight: bold;" > 다정한 다올 고객님, 도움이 필요하신가요?</h3> 
	<h5 class=" w3-text-white"> 운영시간 : 매일 10시 ~ 19시 / 점심시간 13시 ~ 14시 </h5>
</div>


<div class="w3-show-inline-block" >
  <div class="w3-bar">
    <button class="w3-btn w3-border w3-hover-teal btn1" id="">방문서비스</button>
    <button class="w3-btn w3-border w3-hover-teal btn1">위탁서비스</button>
    <button class="w3-btn w3-border w3-hover-teal btn1 ">펫시터지원</button>
    <button class="w3-btn w3-border w3-hover-teal btn1">기타</button>
  </div>
  
  
  <!-- 방문서비스 -->
  <div class=" w3-margin" id="t1">
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16 qu" >
        <span class="w3-large w3-left">Q. 방문펫시터 예약 방법</span><br>
      </li>
      <div class="bd">
      	다올 서비스는 펫시터가 고객님의 집으로 찾아가 강아지에 대해 산책,배식,배변정리,투약 등의 케어를 진행해드리는 서비스 입니다!<br>
                 먼저 서비스 이용을 위해서는 회원가입을 진행해주셔야 합니다.<br>
        <br>
        1. 펫시터 집으로 부르기를 선택합니다.<br>
        2. 방문 원하는 주소를 선택합니다.<br>
        3. 일반 방문을 선택합니다.<br>
        4. 강아지 정보 등록 및 맡기려는 강아지 선택 합니다.<br>
        5. 방문 희망하는 날짜/시간대를 선택 합니다.<br>
        6. 카드 정보 등록 및 예약내역을 확인합니다.<br>
        <br>
                  신청하신 예약은 담당 직원이 내용확인 후 개별적으로 연락드리고 있으며,<br>
                   평일 오후7시(19시) 이후 신청하신 방문 예약은 다음 영업일 오전 10시 이후 연락드리고 있습니다.
      </div>
      
      
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 방문펫시터 종일케어도 가능한가요?</span><br>
      </li> 
        <div class="bd">
      	 	펫시터를 고객님의 집으로 부르는 방문 서비스는 기본 서비스 제공 시간이 1시간입니다.<br>
      	 	하지만 기본 서비스 시간을 초과하여 방문을 희망하시는 경우 15000원의 비용으로 시간을 추가하여<br>
      	 	이용하실 수 있습니다.<br>
      	 	<br>
      	 	하지만 펫시터 방문시 최장 방문 시간은 3시간으로 제한하고 있습니다.<br>
      	 	<br>
      	 	방문펫시터의 경우 오랜시간 동안 강아지와 함께 있어주는 서비스라기 보다는 1시간 이내에 강아지<br>
      	 	에게 맞는 케어를 제공한 뒤 또 다른 강아지에 대한 방문이 이루어져야 하는 상황이다 보니 오랜시간<br>
      	 	캐어에 한계가 있는 점에 대해 양해해주시면 감사하겠습니다.
      	</div>
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 방문펫시터 당일예약도 가능한가요?</span><br>
      </li>           
      	<div class="bd">   
      	펫시터를 고객님의 집으로 부르는 방문 서비스의 경우 펫시터 별로 미리 예약된 돌봄 일정에 따라<br>
      	당일의 이동동선이 정해집니다. 따라서 급하게 예약문의를 주시는 경우 펫시터의 이동동선 및 예약일정<br>
      	여부에 따라 돌봄 기능 및 불가에 대해 안내드리고 있습니다.<br>
      	실제 돌봄 전 진행되어야 하는 사전만남을 고려하신다면 최소 방문 희망일로부터 1주일 전 미리 연락<br>
      	하셔서 문의주시면 수월하게 예약 진행이 가능합니다.
      	</div>
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 방문펫시터 서비스 이용가능 지역</span><br>
      </li>
        <div class="bd">
      	현재 다올 펫시터가 지븡로 찾아가는 방문서비스의 경우 서울에 한하여 서비스 제공이 가능합니다.<br>
      	<br>
      	현재 수도권 위주로 지역확장을 예정중이오니 서비스 불가 지역이라고 하더라도 미리 방문<br>
      	희망의사를 밝혀주시면 추후 지역확장시 참고하여 서비스 제공 도와드리겠습니다.
      	</div>
    </ul>   
  </div> 
</div>

  <!-- 위탁서비스 -->
  <div class=" w3-margin" id="t2">
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16 qu" >
        <span class="w3-large w3-left">Q. 가정집 펫시터 서비스 이용방법</span><br>
      </li>
      <div class="bd">
      	도그메이트의 펫시터는 오직 고객님의 강아지만 돌봐드립니다.<br>
      	마음에 드는 펫시터를 찾으셨다면 맡기는 날짜를 선택하고 펫시터와 직접 대화를 나눠보세요.<br>
      	<br>
      	펫시터에게 궁금한 내용이 있으신가요? 펫시터의 상세 페이지에서는 펫시터의 소개글을 <br>
      	확인하실 수 있습니다.<br>
      	펫시터로부터 답변이 도착하면 홈페이지 상단 메시지 아이콘 알람과 가입시 작성하신 휴대폰 번호로<br>
      	답변에 대한 알림을 전송해드리고 있습니다.<br>
      	펫시터 승인 후 결제가 완료되면 회원가입시 등록하신 휴대폰 번호로 펫시터의 연락처가 안내됩니다.
      </div>
      
      
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 가정집 펫시터를 예약했어요. 준비물은 뭐가 있나요?</span><br>
      </li> 
        <div class="bd">
			펫시터 집에 맡겨진 강어지가 맡겨진 기간동안 편안하게 지내가 위해서는<br>
			'집과 가장 비슷한 환경'을 만들어 주는 것이 좋습니다!<br>
			<br>
			따라서 펫시터의 집에 강아지를 맡기실 때 강아지가 평소에 이용하는 배변판과 배번패드, 평소에<br>
			먹던 사료, 강아지 방석 및 침대, 장난감 그리고 주인의 냄새가 베어있는 옷가지 등을 함께 펫시터에게<br>
			전달해주시는 것이 좋습니다.<br>
			<br>
			강아지 위탁시 준비해주셔야하는 물품은 펫시터의 집에서 사전만남을 진행할실 때 상세하게 안내<br>
			받으실 수 있습니다.<br>
			<br>
			강아지 위탁시 준비물품 : <br>
			강아지 배변판 및 배변패드 <br>
			강아지가 평소에 먹는 사료 및 간식 <br>
			주인의 냄새가 베어있는 옷<br>
      	</div>
      	
      	
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 방문펫시터 당일예약도 가능한가요?</span><br>
      </li>   
      	<div class="bd">
      	펫시터를 고객님의 집으로 부르는 방문 서비스의 경우 펫시터 별로 미리 예약된 돌봄 일정에 따라<br>
      	당일의 이동동선이 정해집니다. 따라서 급하게 예약문의를 주시는 경우 펫시터의 이동동선 및 예약일정<br>
      	여부에 따라 돌봄 기능 및 불가에 대해 안내드리고 있습니다.<br>
      	실제 돌봄 전 진행되어야 하는 사전만남을 고려하신다면 최소 방문 희망일로부터 1주일 전 미리 연락<br>
      	하셔서 문의주시면 수월하게 예약 진행이 가능합니다.
      	</div>
      	
      	
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left">Q. 가정집 펫시터 예약 시, 사전만남?</span><br>
      </li>
        <div class="bd">
		펫시터 집에 맡기기 서비스를 처음 이용핫는 경우 돌봄 전 미리 강아지와 함께 펫시터의 집을 방문해보세요.<br>
		<br>
		사전만남을 통해 펫시터를 직접 만나 돌봄환경을 확인하실 수 있습니다. 펫시터와 함께 산책을 진행<br>
		하며 강아지의 산책 스타일에 대해 알려주시고, 견주가 없을 때 반려견이 어떻게 행동하는지 펫시터가<br>
		확인할 수 있도록 해주세요.<br>
		<br>
		돌봄 전 미리 펫시터의 집을 방문하기 때문에 맡겨지는 강아지는 돌봄 당일에 빠르게 안정을 찾을 수 있습니다.<br>
		또한 펫시터는 사전만남 때 받은 강아지의 정보를 토대로 더욱 안전하고 세심한 돌봄을 진행할 수 있습니다.
      	</div>
    </ul>
  </div>

  <!-- 펫시터지원 -->
  <div class=" w3-margin" id="t3">
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16 qu" >
        <span class="w3-large w3-left">Q. 가정집 펫시터로 활동하고 싶어요</span><br>
      </li>
      <div class="bd">
		펫시터의 집에서 강아지를 돌보는 위탁펫시터로 활동하고 싶으신가요?<br>
		<br>
		도그메이트 위탁펫시터는<br>
		1) 서울 거주자<br>
		2) 25세 이상 60세 미만으로 최근 5년 이내 반려경험이 있으신 분<br>
		주로 집에서 많은 시간을 보내시는 주부,프리랜서,재택근무자에게 추천드립니다!<br>
		<br>
		*다올 위탁펫시터 등록 절차<br>
		지원서 작성 -> 지원서 합격 후 교육비 결제 -> 온라인 교육 이수 및 온라인 테스트 통과(70점 이상)<br>
		-> 오프라인 교육(4시간) 이수 및 계약서 작성 -> 펫시터 최종 등록<br>
		<br>
		다올 위탁펫시터로 지원해보세요!
      </div>
      
      
      <li class="w3-padding-16 qu" >
        <span class="w3-large w3-left ">Q. 도그메이트 방문펫시터 파트너를 모집합니다!</span><br>
      </li> 
        <div class="bd"><br><br>
			<h1>도그메이트 펫시터 모집( 방문매니저 급구!)</h1><br>
			
			<h2>미래유망직 '펫시터(도그워커)' 를 모집합니다</h2><br>
			<br>
			펫시터란, 바쁜 반려인을 대신해 집에서 반려동물을 돌봐주는 케어서비스 입니다.<br>
			은퇴걱정없이 펫시터는 이미 선진국에서 미래유망직으로 자리잡고 있습니다.<br>
			<h5>도그메이트의 펫시터 교육을 통해 함께 성장할 수 있는 파트너를 찾고 있습니다</h5><br>
			<br>
			<img src="../img/mo2.PNG" >
			<br>
      	</div>
    </ul>
  </div>
  
  
   <!-- 기타 -->
  <div class=" w3-margin" id="t4">
    <ul class="w3-ul w3-hoverable w3-white">
      <li class="w3-padding-16 qu"  >
        <span class="w3-large w3-left ">Q. 강아지 외 다른 반려동물도 밭길 수 있나요?</span><br>
      </li>
      <div class="bd">
      	다올에서는 강아지 이외의 동물은 케어가 불가능합니다.<br>
      	<br>
      	설치류,조류,파충류,양서류 등의 동물에 대해서는 충분한 경험과 지식을 갖춰야 안전하고 편안한 돌봄으로<br>
      	이어질 수 있으므로 현재로서는 강아지 이외의 동물에 대한 케어는 제공해드리기 힘든점 양해부탁드립니다.
      </div>
      
      
      <li class="w3-padding-16  qu">
        <span class="w3-large w3-left">Q. 펫시터 서비스란?</span><br>
      </li> 
        <div class="bd">
			펫시터(Pet Sitter)는 주인이 없을 때 반려동물을 대신 돌봐주는 사람을 말합니다.<br>
			펫시터는 왜 필요할까요? 한국에서는 많은 견주들이 여행을 가거나<br>
			자리를 비울 때 애견호텔에 강아지를 맡깁니다.<br>
			<br>
			애견호텔은 조그만 케이지에 강아지들을 가둬두기 때문에 강아지들이 정신적, 신체적으로<br>
			많은 스트레스를 받는 경우가 많습니다. 그럴 불편함을 해결하고자<br>
			다올 위탁펫시터 서비스를 시행하게 되었습니다.<br>
			<br>
			많은 견주분들께서 휴가, 여행, 출장 등 바쁜 일이 있을 때 대부분의 강아지들은<br>
			애견호텔 케이지에 갇혀 주인을 기다리고 있습니다.<br>
			<br>
			이제 좁고 답답한 케이지가 아닌 펫시터의 집에, 아니면 펫시터와 함께 산책할 수 있도록<br>
			우리 강아지에게 펫시터를 선물해주세요!
      	</div>
      	
      	
      <li class="w3-padding-16 qu">
        <span class="w3-large w3-left ">Q. 탈퇴 후 동일한 핸드폰 번호로 가입하기</span><br>
      </li>   
      	<div class="bd">
      	안녕하세요. <br>
      	<br>
      	도그메이트에서는 어뷰징을 막기 위해 탈퇴 후 일정 기간 동안 고객님의<br>
      	핸드폰 번호를 보관하고 있습니다.<br>
      	<br>
      	그래서 만약 탈퇴한 후 다시 가입하실 경우, 탈퇴 전에 사용하셨던 핸드폰 번호로는<br>
      	다시 가입이 어렵습니다.<br>
      	다른 핸드폰 번호로 가입 부탁드립니다!
      	</div>
      	
    </ul>
  </div>
  
  
</body>
</html>