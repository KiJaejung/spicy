<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
</head>
<body>
	<div class="alert alert-info">
		<strong>Succeeded in sending E-mail!</strong>
		You sended to 
		<c:forEach items="${sendEmailList}" var="domain">
			${domain.email} | 
		</c:forEach>
	</div>
</body>
</html>