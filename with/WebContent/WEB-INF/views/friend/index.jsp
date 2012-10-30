<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->
<jsp:include page="/include/head.jsp" />
<script src="/with/js/ajax_member.js"></script>
<script src="/with/js/ContentLoader.js"></script>
<script>
window.onload = start_function
function start_function() {
	request_list(${sessionScope.member.id});
}
</script>
<style type="text/css">
body {
	background: none repeat scroll 0 0 #FAFAFA;
}
</style>
</head>

<body>
	<!-- 헤더 네비게이션 -->
	<jsp:include page="/include/header_navi.jsp" />
	<div class="container">
		<div class="write-posts-box">
			<div class="row-fluid">
				<c:forEach var="friend" items="${friendList}">
					<div class="span3">
						<div class="friend-list">
							<img src="/with/posts/fileReader/${ friend.picture }/4" class="img-polaroid" /><br /> 
							<a href="/with/posts/${friend.id}">${ friend.name }</a><br /> 
							${friend.introduce }
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>