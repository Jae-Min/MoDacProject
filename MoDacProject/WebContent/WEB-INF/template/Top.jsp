<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
 <!-- 부트스트랩 -->
 <link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 <script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
 <style>
  	a{
  		color:white;	
  	}
	
	body{
		padding-top:100px;
	}
	
	.active{
		font-weight: bolder;
	}	
	
	.navbar-brand{
		padding-top: 0px;
	}
	
</style>
<script>  	
	$(function(){	 		
		$(".navbar-right li a").click(function(){		 			
			 $('.navbar-right li').each(function(){
  				$(this).removeClass("active");
  			});    			
			$(this).parent().addClass("active");
		});
		$('.nav').css('padding', '20px');
	});	
 </script>
<!-- 네비게이션바 시작 -->
<nav class="navbar navbar-default navbar-fixed-top navbar-fixed-width  navbar-inverse" style="background-color: #32323C;">
<div class="container" >
  <div class="navbar-header">
  <!-- 화면크기가 작을때 보여지는 메뉴버튼 -->
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapseMenu">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>		        
    </button>	
	
	<c:if test="${not empty sessionScope.PARTNER_ID}" var="isGeneralUser">       
    	<a class="navbar-brand" href="index.jsp">		      		
    </c:if>
    <c:if test="${not isGeneralUser }">
    	<a class="navbar-brand" href="PartnerPage.jsp">	
    </c:if>	      		
        <img src="<c:url value='/Images/logo.png'/>" alt="로고이미지" />
    </a>
    
  </div><!-- navbar-header -->
  
<!-- 일반사용자용 top -->
	<c:if test="${empty sessionScope.PARTNER_ID}" var="isGeneralUser">
	    <div class="collapse navbar-collapse" id="collapseMenu">
	    	<ul class="nav navbar-nav navbar-right">
				<li id="navbar-page" ><a href="index.jsp">홈</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">
						찾기
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category">약국찾기</a></li>
						<li class="divider"></li>
						<li><a href="/category/1">병원찾기</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">
						예약/접수
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category">예약/접수</a></li>
						<li class="divider"></li>
						<li><a href="/category/1">수납</a></li>
	<!-- 					<li class="divider"></li> -->
	<!-- 					<li><a href="/category/1">예약문의</a></li> -->
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">
						문의
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category">자가진단</a></li>
						<li class="divider"></li>
						<li><a href="/category/1">병원에증상문의</a></li>
					</ul>
				</li>
				<c:if test="${not empty sessionScope.USER_ID}" var="isMember">
					<li id="navbar-tag"><a href="#">로그아웃</a></li>
					<li id="navbar-guestbook"><a href="#">마이페이지</a></li>
				</c:if>	
				<c:if test="${not isMember }">			
					<li id="navbar-tag"><a href="#">로그인</a></li>
					<li id="navbar-guestbook"><a href="#">회원가입</a></li>
				</c:if>
	    	</ul>
	    </div>
    </c:if>
    <!-- 일반사용자용 top -->
    <!-- 병원사용자용 top -->
    <c:if test="${not isGeneralUser}">
    	 <div class="collapse navbar-collapse" id="collapseMenu">
	    	<ul class="nav navbar-nav navbar-right">
				<li id="navbar-page" ><a href="PartnerPage.jsp">홈</a></li>
				<li class="dropdown">
					<a href="#" class="dropdown-category" id="dropdownCategoryMenu" data-toggle="dropdown">
						예약접수관리
					</a>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownCategoryMenu">
						<li><a href="/category">예약</a></li>
						<li class="divider"></li>
						<li><a href="/category/1">접수</a></li>
					</ul>
				</li>
				<li id="navbar-tag"><a href="#">환자문의</a></li>
				<li id="navbar-guestbook"><a href="#">로그아웃</a></li>
				<li id="navbar-guestbook"><a href="#">마이페이지</a></li>
			</ul>
	    </div>
    </c:if>
    <!-- 병원사용자용 top -->
    
</div><!-- div:container-fluid -->
</nav>
<!-- 네비게이션바 끝 -->  
