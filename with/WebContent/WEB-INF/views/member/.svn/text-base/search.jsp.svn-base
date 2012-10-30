<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>




<c:if test="${fn:length(searchList) == '0'}">
	<a href="#">No Result</a>
</c:if>

<c:forEach var="friend" items="${searchList}">
	<li>
		<a href="/with/posts/${friend.id}"><img src="/with/posts/fileReader/${ friend.picture }/4" class="img-polaroid" style="width:20px; height:20px; radius:4px;" /> ${ friend.name }</a><br />
		
	</li>
</c:forEach>


