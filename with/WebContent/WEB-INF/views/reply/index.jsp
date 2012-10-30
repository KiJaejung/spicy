<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="reply" items="${replyList}" >
	
	<table class="table table-hover" style="margin-top:10px;">
		<TR style="border:none">
			<TD style="width:50px; border:none; line-height: 16px;">${reply.replier_name }</TD>
			<TD style="width:350px;border:none; line-height: 16px;color:#777777;">${reply.contents }</TD>
			<TD style="border:none; line-height: 10px;color:#777777;">
				<a href="javascript:delete_reply(${reply.id }, ${reply.post_no })"><i class="icon-trash" style="opacity:0.5;filter:alpha(opacity=50)"></i></a>
			</TD>
		</TR> 
	</table>
</c:forEach>