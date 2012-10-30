<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
<script type="text/javascript" src="/with/js/admin/ContentLoader.js"></script>
<script type="text/javascript" src="/with/js/admin/ajax_member.js"></script>
<script type="text/javascript" src="/with/js/admin/memberlog_drawing.js"></script>
<link href="/with/css/style.css" rel="stylesheet">

<!-- 캘린더 관련 스타일시트 -->
<link rel="stylesheet" href="/with/css/calendar/zebra_datepicker.css" type="text/css">

<!-- 캘린더 관련 스크립트 -->
<script type="text/javascript" src="/with/js/calendar/jquery-1.8.1.js"></script>
<script type="text/javascript" src="/with/js/calendar/zebra_datepicker.js"></script>


<script type="text/javascript">	
 
 $(document).ready(function() {
	$('#control-start').Zebra_DatePicker(); 
});
 </script>
 
 <script type ="text/javascript">
 $(document).ready(function() {
    $('#control-end').Zebra_DatePicker(); });
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
		</ul>		
	</div> <!-- span3 -->

    <div class="span9">
    <div class = "memberAdmin">
    	<legend  ><img src="/with/img/admin/statistics.png" style="margin-bottom:5px;" width="25px" height="25px"></img>&nbsp;&nbsp;MemberLog Statistics</legend>
    
    	<form name="memberlogform" method="POST">
			<select name="period">
				<option selected value = "0">Period Select</option>
				<option value = "7">Week</option>
				<option value = "30">Month</option>
				<option value ="365">Year</option>
			</select> <br/>
<ul class="calarea">
	<li>
		<span>start day</span>		 
				<input id ="control-start" type="text" size="100" value="" readonly ="readonly" name="startPeriod" placeholder="View Calendar">
	</li>
	<li>
		<span>end day</span> 
				<input id = "control-end" type="text" size="100" value="" readonly ="readonly" name="endPeriod" placeholder="View Calendar">
	</li>
</ul>
		<p class="btnsel">
			<button class="btn btn-small btn-primary"
				onclick="show_memberlog_listaa();" type="button">SELECT</button>
		</p>
		</form>
		
		<div id="statistics_title"></div>
		<canvas id ="draw" style ="border: 0px solid;" width ="800" height ="400">
		</canvas>
		<div id="checkbox_result"></div>
		<div id="memberlog_result">
		</div>
		</div>
   	</div> <!-- span9 -->
    </div> <!-- row-fluid -->
    </div> <!-- container-fluid -->
</div> <!-- Container -->
<jsp:include page="/include/footer.jsp" />
</body>
</html>
