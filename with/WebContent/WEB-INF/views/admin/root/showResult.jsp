<!DOCUTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<input type = "hidden" id = "visitcount" name ="visitcount" value = "${bean.visitcount}" />
<input type = "hidden" id = "signupcount" name ="signupcount" value = "${bean.signupcount}" />
<input type = "hidden" id = "dropcount" name ="dropcount" value = "${bean.dropcount}" />
<input type = "hidden" id = "postscount" name ="postscount" value = "${bean.postscount}" />

오늘 총 방문자수 :
${bean.visitcount }
<br />
오늘 총 가입자수 :
${bean.signupcount }
<br />
오늘 총 탈퇴자수 : 
${bean.dropcount }
<br />
오늘 총 글작성수 : 
${bean.postscount }
<br />


