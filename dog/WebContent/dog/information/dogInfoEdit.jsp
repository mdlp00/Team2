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
						
			$('#update').click(function(){
				
				alert('펫정보 수정이 완료되었습니다.');
				$('#frm').attr('action','${pageContext.request.contextPath}/dog/information/dogInEditProc.c3');
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
		<form method="post" id="frm" name="frm">
		<div class="w3-content w3-margin">
				<label for="id">애완동물 이름을 입력 : </label>
				<input type="text" name="pname" id="pname" value="${PVO.p_name}"class="w3-col m10 w3-input w3-border" placeholder="애완동물이름을 입력해주세요" required />	
		</div>
		<br><br>
		<h4> 견종 선택</h4>
		<select class="w3-select"  id="pkind" name="pkind" style="width:40%">
<c:forEach  var="pk" items="${map.klist}">
         <c:if test="${ pk.pk_no eq PVO.pk_no  }">   
		    <option value="${pk.pk_no}"  selected="selected">${pk.pk_kinds}</option>
		 </c:if>
		 <c:if test="${ pk.pk_no ne PVO.pk_no  }">   
		    <option value="${pk.pk_no}" >${pk.pk_kinds}</option>
		 </c:if>   
</c:forEach>
        </select>
     
		<h4> 견종 나이</h4>
		<select class="w3-select"  name="page" style="width:40%">
<c:forEach var="pa" items="${map.alist}">
		<c:if test="${pa.pa_no eq PVO.pa_no}">
            <option value="${pa.pa_no}" selected="selected">${pa.pa_age}</option>
        </c:if>
        <c:if test="${pa.pa_no ne PVO.pa_no}">
            <option value="${pa.pa_no}">${pa.pa_age}</option>
        </c:if>
</c:forEach>
        </select>
      
		<h4> 반려견크기 </h4>
		<select  class="w3-select" name="psize" style="width:40%">
<c:forEach var="ps" items="${map.slist}">
		<c:if test="${ps.ps_no eq PVO.ps_no}">
            <option value="${ps.ps_no}" selected="selected">${ps.ps_size}</option>
        </c:if>
		<c:if test="${ps.ps_no ne PVO.ps_no}">
            <option value="${ps.ps_no}">${ps.ps_size}</option>
        </c:if>
</c:forEach>
        </select>
        
        <input type="hidden" id="pno" name="pno" value="${PVO.p_no}">

		<br><br>
    		<input class="w3-cneter" type="submit" value="수정완료" id="update" name="update" style= "background-color: #86d6d4; color: white">
		</form>
	</div>
</body>
</html>