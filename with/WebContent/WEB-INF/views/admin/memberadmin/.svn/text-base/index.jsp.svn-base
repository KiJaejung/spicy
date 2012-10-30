<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
<script type="text/javascript" src="/with/js/admin/ContentLoader.js"></script>
<script type="text/javascript" src="/with/js/admin/ajax_member.js"></script>
<link href="/with/css/style.css" rel="stylesheet">

<!-- 캘린더 관련 스타일시트 -->
<link rel="stylesheet" href="/with/css/calendar/zebra_datepicker.css" type="text/css">

<!-- 캘린더 관련 스크립트 -->
<script type="text/javascript" src="/with/js/calendar/jquery-1.8.1.js"></script>
<script type="text/javascript" src="/with/js/calendar/zebra_datepicker.js"></script>

<script type="text/javascript">	

 $(document).ready(function() {
	$('#start').Zebra_DatePicker();
 });

 $(document).ready(function() {
	$('#end').Zebra_DatePicker();
 }); ss
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
					<li><a href="/with/admin/member/show"><b>Member Managements</b></a></li>
					<li><a href="/with/admin/member/email"><b>Notice Email Transfer</b></a></li>
				</ul>
				<!-- <ul class="nav nav-pills nav-stacked">
  					<li><a href="#">Home</a></li>
					<li><a href="#">Drop</a></li>
					<li><a href="#">...</a></li>
  				</ul> -->
			</div> <!-- span3 -->
  			<div class="span9">
   				<div class="memberAdmin">
				<legend><img src="/with/img/admin/member_group.png" style="margin-bottom:5px;" width="25px" height="25px"></img>&nbsp;&nbsp;Member Managements</legend>
				<span name="memberList" method="GET">					
					<select name="selectDay" id="selectDay" style="width:100px;">
						<option value="1">Today</option>
						<option value="7">Week</option>
						<option value="30">Month</option>
						<option value="0">Whole</option>
					</select>
					
					<button class="btn btn-small btn-primary" onclick="show_member_list();" type="button">SELECT</button>					<!-- <input type="button"  name="periodList" value="select"> -->
					&nbsp;
				</span>
				<span id="select"  method="GET">
					<input id="start" type="text" name="start" style="width:180px;" >&nbsp;&nbsp;-&nbsp;
					<input id="end" type="text" name="daye" value="" style="width:180px;">
					<button class="btn btn-small btn-primary" onclick="show_member_periodList();" type="button">SELECT</button>
				</span>		
				<div id="memberList"></div>
				</div>
   			</div> <!-- span9 -->
    	</div> <!-- row-fluid -->
    </div> <!-- container-fluid -->
</div> <!-- Container -->

<jsp:include page="/include/footer.jsp" />
</body>
</html>