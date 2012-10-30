<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<button class="btn btn-small btn-info" type="button" id="noti_permission" onClick="showPopup('${ sessionScope.member.name }')" style="float: right; margin-right:-92px; margin-top:-90px;">allow</button>
<div id="chat_List" style="float: right; margin-right:-100px; margin-top:-60px; width:60px; border:1px solid #cccccc; border-radius:5px;">
<div id="list_room" style="margin-top:10px;"/>
<c:forEach var="member" items="${loginList}" >
	<a href="javascript:chat_request('${ sessionScope.member.name }', '${member.name}');">
		<img src="/with/posts/fileReader/${member.picture}/4" style="width:50px;height:50px; border-radius:5px; margin: 0px 0 10px 5px;"></img>
	</a>
</c:forEach>
</div>
