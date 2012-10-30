<!DOCUTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<input type = "hidden" id = "visitcount" name ="visitcount" value = "${bean.visitcount}" />
<input type = "hidden" id = "signupcount" name ="signupcount" value = "${bean.signupcount}" />
<input type = "hidden" id = "dropcount" name ="dropcount" value = "${bean.dropcount}" />
<input type = "hidden" id = "postscount" name ="postscount" value = "${bean.postscount}" />

<ul class="totarea">
	<li>
		<span>오늘 방문자수</span>
		<p>${bean.visitcount }</p>
	</li>
	<li>
		<span>오늘 가입자수</span>
		<p>${bean.signupcount }</p>
	</li>
	<li>
		<span>오늘 탈퇴자수</span>
		<p>${bean.dropcount }</p>
	</li>
	<li>
		<span>오늘 글작성수</span>
		<p>${bean.postscount }</p>
	</li>
</ul>
