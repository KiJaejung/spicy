<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<script src="/with/js/admin/ContentLoader.js"></script>
<script src="/with/js/admin/ajax_member.js"></script>

<ui class="nav nav-list">
	<li class="nav-header">Email Search List</li>
	<c:forEach items="${searchList}" var="domain">
		<li><a href="#" onclick="load_to_text('${domain.email}')">${domain.email}</a></li>
	</c:forEach>
</ui>