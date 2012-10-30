<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="/with/css/style.css" rel="stylesheet">
<c:forEach items="${memberLogList}" var="bean">
	<input type="hidden" name="visitCount" value="${bean.visitCount}"/>
	<input type="hidden" name="signupCount" value="${bean.signupCount}"/>
	<input type="hidden" name="dropCount" value="${bean.dropCount}"/>
	<input type="hidden" name="memberCount" value="${bean.memberCount}"/>
	<input type="hidden" name="memberLogDate" value="${bean.memberLogDate}"/>
</c:forEach>