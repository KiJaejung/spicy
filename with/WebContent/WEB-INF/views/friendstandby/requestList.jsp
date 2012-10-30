<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<li id="top_requested_list">
<a href="#">Friends Request 
	<c:if test="${fn:length(requestList) != '0'}">
		<span class="badge badge-important" style="margin: 0 -10px 10px 5px;"><span id="top_request2">${fn:length(requestList)}</span></span>
	</c:if>
</a>

<!--  신청자들 목록 -->
<c:forEach var="requestedFriend" items="${requestList}">
	<div id="top_requestedList${ requestedFriend.id }">
		<a href="/with/posts/${ requestedFriend.id }">
		<img src="/with/posts/fileReader/${requestedFriend.picture}/4" style="width: 25px; height: 25px; border-radius: 15% 15% 15% 15%;" />
		<span class="requestAvatar" style="font-size: 13px; color: #777777;">${requestedFriend.name}</span>
		</a>
		<a href="javascript:make_friend_request_deny(${sessionScope.member.id}, ${requestedFriend.id});">
			<i class="icon-remove" style="margin-top:-25px;margin-right:-10px;float:right;opacity:0.2;filter:alpha(opacity=20)"></i>
		</a>
		<a href="javascript:make_friend_request(${sessionScope.member.id}, ${requestedFriend.id});">
			<i class="icon-ok" style="float:right;margin-top:-32px;margin-right:10px;opacity:0.2;filter:alpha(opacity=20)"></i>
		</a>
	</div>
</c:forEach>

</li>