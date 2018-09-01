<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/shop-homepage.css" rel="stylesheet">

<style>
	.footer-list{
		padding:30px;
	}
</style>

<script>
	$(function(){
		$('footer').addClass('text-center py-1').css('color', 'white');
		$('.footer-list a').css('padding', '10px').css('text-decoration', 'none');
		$('.footer-list').css('padding', '30px');
	});
</script>


<!-- Footer -->
<footer style="margin-top: 10px;" class="page-footer">
	<div class="footer-list text-center py-1" >
		<a href="#">사이트문의</a>
		<a href="#">공지사항</a>
		<a href="#">admin접속</a>
	</div>
	<div class="m-0 footer-copyright text-center py-1" >
		&copy; MoDacProject
	</div>
</footer>
