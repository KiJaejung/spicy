<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
<script src="/with/js/admin/ContentLoader.js"></script>
<script src="/with/js/admin/ajax_member.js"></script>
<link href="/with/css/style.css" rel="stylesheet">

<!-- 캘린더 관련 스타일시트 -->
<link rel="stylesheet" href="/with/css/admin/calendar/zebra_datepicker.css" type="text/css">

<!-- 캘린더 관련 스크립트 -->
<script type="text/javascript" src="/with/js/calendar/jquery-1.8.1.js"></script>
<script type="text/javascript" src="/with/js/calendar/zebra_datepicker.js"></script>
<script type="text/javascript">	
 
 $(document).ready(function() {
	$('#start').Zebra_DatePicker();
 });
 $(document).ready(function() {
	$('#end').Zebra_DatePicker();
 }); 
/*  var startDate = document.getElementById("start");
 alert(startDate); */
</script>
</head>
<body>
<!-- 헤더 네비게이션 -->
<jsp:include page="/include/admin/header_navi.jsp" />

<div class="container">
<br />
    <div class="container-fluid">
    	<div class="row-fluid">
    		<!-- <div class="span3">
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="/with/admin/posts/index"><b>Contents Managements</b></a></li>
				</ul>
			</div> span3 -->
  			<div>
   				<div class="postsAdmin">
				<legend><img src="/with/img/admin/text.png" style="margin-bottom:5px;" width="25px" height="25px"></img>&nbsp;&nbsp;Contents Managements</legend>
				<span name="contentsList" method="GET">
						<!-- 전체조회 -->
						<p>The whole check</p>
						<select name="selectDay" id="selectDay" style="width:100px;">
						<option value="1">whole</option>
					</select>
					<button class="btn btn-small btn-primary" onclick="show_contentsList();" type="button">SELECT</button>
				</span>
				
<!-- 			이름으로 조회	
				<span id="select"  method="GET">
					<input type="text" name="userName" id="userName" placeholder="UserName">
					<button class="btn btn-small btn-primary" onclick="show_contents_Member();" type="button">SELECT</button>
					<input type="button"  name="periodList" value="select">
				</span>
				<span id="select"  method="GET">
					<input id="start" type="text" name="start" style="width:180px;"> ~ 
					<input id="end" type="text" name="daye" value="" style="width:180px;">
					<button class="btn btn-small btn-primary" onclick="show_contentsList();" type="button">SELECT</button>
				</span>	 -->	
				<div id="contentsList"></div>
				</div>
   			</div>
    	</div> <!-- row-fluid -->
    </div> <!-- container-fluid -->
</div> <!-- Container -->


<jsp:include page="/include/footer.jsp" />
</body>
</html>