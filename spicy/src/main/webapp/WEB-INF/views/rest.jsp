<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<title>電撃志望中!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
body {
	padding-top: 60px;
}
</style>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/prettify.css" />" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/prettify.js" />"></script>
</head>

<body>
	<jsp:include page="/resources/include/top_navi.jsp" />
	<section id="article">
	
	<p>
	<b>URL:http://203.233.196.177:8090/spicy</b>
	</p>
	<p>
	リクルート承認<br/>
	POST &nbsp;&nbsp;&nbsp;/recruit
	</p>
	
		&nbsp;Request Parameter
		<table class="table table-bordered" style="font-size:13px;margin-top:7px;">
			
			<thead>
				<tr>
					<th><center>Field</center></th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width=50px><center>status</center></td>
					<td>hire, interview, consideringの中で一つを送ってください。</td>
				</tr>
			</tbody>
		</table>
		
		&nbsp;Response Parameter
		<table class="table table-bordered" style="font-size:13px;margin-top:7px;">
			
			<thead>
				<tr>
					<th><center>Field</center></th>
					<th>Description</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td width=50px><center>result</center></td>
					<td>リクエストに対する私たちの一言です。</td>
				</tr>
			</tbody>
		</table>
		&nbsp; - Response  Sample<br>
		{“result”:”Thank you very much”}
		
	</section>
	<jsp:include page="/resources/include/footer.jsp" />
</body>
</html>
