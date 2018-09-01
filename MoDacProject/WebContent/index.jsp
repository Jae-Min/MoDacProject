<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 병원: PARTNER_ID / 일반: USER_ID 로 아이디 저장 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<title>Insert title here</title>
<style>
	html,body{
		height:100%
	}
	body{
		margin:0
	}
	.container{
		min-height: 100%;
	}
	.footer{
		background-color: #32323C;
		min-height:10%;
	}
	.row{
		margin:0 auto;
		text-align:center;
	}
	.row .col-md-4{
		margin-top:10px;
		outline:1px pink solid;
		height:200px;
	}
</style>
</head>
<body>
	<!-- topMenu -->
	<div class="topMenu">
		<jsp:include page="/WEB-INF/template/Top.jsp"/>
	</div><!-- topMennu -->
	<!-- body 시작 -->
	<div class="container">
		<!-- 서비스 소개 캐러셀 -->
		<div class="row carousel"><!-- first_row -->
			<div id="carousel" class="carousel slide" data-ride="carousel" style="bacground-color:red">
				<!-- Indicators -->
				<ol class="carousel-indicators">
				  <li data-target="#carousel" data-slide-to="0" class="active"></li>
				  <li data-target="#carousel" data-slide-to="1"></li>
				  <li data-target="#carousel" data-slide-to="2"></li>
				</ol>
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
					  <img src="#" alt="슬라이드1" style="width:100%;height:300px;">
					  <div class="carousel-caption">
					    <h2>첫번째 슬라이드</h2>
					  </div>
					</div>
					<div class="item">		    
					  <img src="#" alt="슬라이드2" style="width:100%;height:300px">		      
					  <div class="carousel-caption">
					    <h2>두번째 슬라이드</h2>
					  </div>
					</div>
					<div class="item">
					  <img src="#" alt="슬라이드3" style="width:100%;height:300px">		      
					  <div class="carousel-caption">
					    <h2>세번째 슬라이드</h2>
					  </div>
					</div>		    
				</div>
				<!-- Wrapper for slides -->
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel" data-slide="prev">
				  <span class="glyphicon glyphicon-chevron-left"></span>	   
				</a>
				<a class="right carousel-control" href="#carousel" data-slide="next">
				  <span class="glyphicon glyphicon-chevron-right" ></span>	   
				</a>
				<!-- Controls -->
				
			</div><!-- carousel -->
  		</div><!-- first_row -->
  		<!-- 서비스 소개 캐러셀 -->
  		
  		<!-- themeSearch -->
  		<div class="row themeSearch-header">
  			<h2 style="color:balck;"><br/>테마 검색</h2>
  		</div><!-- second_row -->
		<div class="row themeSearch-contents">
		  <div class="col-md-4"></div>
		  <div class="col-md-4"></div>
		  <div class="col-md-4"></div>
  		</div>
		<div class="row themeSearch-contents">
		  <div class="col-md-4"></div>
		  <div class="col-md-4"></div>
		  <div class="col-md-4"></div>
  		</div>
  		<!-- themeSearch -->
  	</div><!-- container -->
  	<!-- body 끝 -->
  	
	<!--footer를 감싸는 div 시작--> 
    <div class="footer" >
   	 	<jsp:include page="/WEB-INF/template/Footer.jsp"/>
    </div>
    <!--footer를 감싸는 div 끝-->

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</body>
</html>