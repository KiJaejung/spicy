<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<script src="/with/js/admin/ContentLoader.js"></script>
<script src="/with/js/admin/ajax_member.js"></script>
<jsp:include page="/include/admin/head.jsp" />
<script>
window.onload =function ddddd(){	
	show_today_index();
}
</script>

</head>
<body>

	<!-- 헤더 네비게이션 -->
	<jsp:include page="/include/admin/header_navi.jsp" />
	<div class="container">
		<br />
		<br />
		<br />
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span3">
					<ul class="nav nav-tabs nav-stacked">
						<li><a href="/with/admin/todaylog/index"><b>TodayLog Statistics</b></a></li>
			<li><a href="/with/admin/memberlog/index"><b>MemberLog Statistics</b></a></li>
			<li><a href="/with/admin/writtenlog/index"><b>WrittenLog Statistics</b></a></li>
					<!-- <ul class="nav nav-pills nav-stacked">
  			<li><a href="#">Home</a></li>
			<li><a href="#">Drop</a></li>
			<li><a href="#">...</a></li>
  		</ul> -->
				</div>
				<h1> 오늘 통계 보기</h1>
				<!-- span3 -->
				<div class="span9">
					<div id="show_result">
					
					</div>
				<!-- span9 -->
				</div>
			</div>
			<!-- row-fluid -->
		</div>
		<!-- container-fluid -->
	</div>
	<!-- Container -->

</body>
</html>
