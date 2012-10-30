<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
</head>

<body>
	<jsp:include page="/resources/include/top_navi.jsp" />
	<section id="article"></section>
</body>
</html>
