<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
<script type="text/javascript" src="/with/js/admin/ContentLoader.js"></script>
<script type="text/javascript" src="/with/js/admin/ajax_member.js"></script>
<link href="/with/css/style.css" rel="stylesheet">

<script>
window.onload =function getStatistics(){	
	show_todayLog();
}
</script>

</head>
<body>

	<!-- 헤더 네비게이션 -->
	<jsp:include page="/include/admin/header_navi.jsp" />
	<div class="container">	
	<br />		
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span3">
					<ul class="nav nav-tabs nav-stacked">
						<li><a href="/with/admin/todaylog/index"><b>TodayLog Statistics</b></a></li>
						<li><a href="/with/admin/memberlog/index"><b>MemberLog Statistics</b></a></li>
						<li><a href="/with/admin/writtenlog/index"><b>WrittenLog Statistics</b></a></li>
				</div>				
				<!-- span3 -->			
				<div class="span9">
					<div class = "todaySs">			
				<legend ><img src="/with/img/admin/statistics.png" style="margin-bottom:5px;" width="25px" height="25px"></img>&nbsp;&nbsp;Today's Statistics</legend>
					<div id="show_result"></div>
					<div id ="show_all_result"></div>
					</div>
					
				<!-- span9 -->
				
				</div>
			
			</div>
			<!-- row-fluid -->
		</div>
		<!-- container-fluid -->
	</div>
	<!-- Container -->
<jsp:include page="/include/footer.jsp" />
</body>
</html>
