<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
</head>
<link href="/with/css/style.css" rel="stylesheet">
<body>
	<table class="table table-striped" width="600">
		<thead>
		<tr>
			<th style="width:10px;"> NO. </th>
			<th style="width:20px;"> Member ID </th>
			<th style="width:10px;"> Nickname </th>
			<th style="width:40px;"> Signup-Date </th>
			<th style="width:1px;"> </th>
		</tr>
		</thead>
		<tbody>		
		<c:forEach items="${memberadminList}" var="domain">
		<form:form name="delete${id}" method="DELETE">
			<tr align="center">
				<td style="width:10px;">${domain.id}</td>
				<td style="width:10px;">${domain.email}</td>
				<td>${domain.name}</td>
				<td>${domain.signup_date}</td>
				<td>
					<!-- <input type="hidden" name="_method" value="DELETE"> -->
					<button class="btn btn-small btn-danger" onclick="delete_member(${domain.id})" type="button">DELETE</button>
				</td>
			</tr>
		</form:form>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>