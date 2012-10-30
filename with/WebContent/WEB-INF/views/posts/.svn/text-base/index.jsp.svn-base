<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->
<jsp:include page="/include/head.jsp" />
<script src="/with/js/ContentLoader.js"></script>
<script src="/with/js/ajax_member.js"></script>
<script src="/with/js/ajax_posts.js"></script>
<script>

window.onload = start_function
function start_function() {
	load_more();
	request_list(${sessionScope.member.id});
	setInterval( function() {
		chat_response('${sessionScope.member.name}');
	}, 1000);
}


if (window.webkitNotifications){
	function requestingPopupPermission(callback){
  		window.webkitNotifications.requestPermission(callback);
	}
	function showPopup(chat_url, title, body){
  		if(window.webkitNotifications.checkPermission() > 0){
  			requestingPopupPermission(showPopup);
		}
		else{
			var thumb = 'http://aux2.iconpedia.net/uploads/379504322.png';	 

	        var popup = window.webkitNotifications.createNotification(thumb, title, body);
	        popup.onclick = function(x) { window.focus(); this.cancel(); window.open(chat_url,'_blank',"all=no, width=230,height=420");};
	        //Show the popup
	        popup.show();
 			
	        //set timeout to hide it
	        setTimeout(function(){
	        	popup.cancel();
	        }, '30000');
		}
	}
 }
else{
	
}

</script>

</script>
</head>

<body>

<!-- 헤더 네비게이션 -->
<jsp:include page="/include/header_navi.jsp" />

<div class="container">
	<div class="article-list" id="article-list">
		
		<!-- 글쓰기 타입 메뉴 -->
		<div class="post-memu-bubble">
			<div class="post-menu-avatar">
				<img src="/with/posts/fileReader/${ sessionScope.member.picture  }/4"></img>
			</div>
			<jsp:include page="/include/posts/select_type_menu.jsp" />
			<a href="javascript:login_list('${ sessionScope.member.id }');"><img src="/with/img/post_chat.png"></img></a>
			<div id="loginList"></div>
<%-- 			<a href="javascript:chat_call('${ sessionScope.member.name }');"><img src="/with/img/post_chat.png"></img></a> --%>
		</div>
		<c:forEach var="post" items="${postsList}" >
		<div class="post" id="post${ post.id }">
			
			<div class="post-avatar">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="side_avatar(${sessionScope.member.id}, ${post.writer}, ${post.id});">
					<img src="/with/posts/fileReader/${post.writer_picture}/4">
				</a>
				<div id="side_avatar"></div>
				<ul class="dropdown-menu" style="margin-left: -155px; margin-top: 70px;">
					<div id="side_avatar_Name${post.id}"></div>
					<div id="side_avatar_Homepage${post.id}"></div>
					<li class="divider"></li>
					<c:choose>
						<c:when test="${post.writer == sessionScope.member.id}">
							<li><a href="/with/member/${sessionScope.member.id}/edit" >정보수정</a></li>				
						</c:when>
						<c:otherwise> 
							<div id="side_avatar_friendship${post.id}"></div>
						</c:otherwise>
					</c:choose>
				</ul>
			</li>
			</div>	
			

			<c:choose>
				<c:when test="${post.type == '1'}">
				<c:choose>
					<c:when test="${post.writer == sessionScope.member.id}">
						<a href="javascript:deleteConfirm(${post.id});">
							<i class="icon-trash" style="float:right;margin-right:25px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
						<a href="/with/posts/editView/${ post.id }">
							<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
					</c:when>
				</c:choose>
					<div class="type-text">
						<h1>${ post.column1 }</h1>
						${ post.column2 }
					</div>
				</c:when>
				
				
				<c:when test="${post.type == '2'}">
				<c:choose>
					<c:when test="${post.writer == sessionScope.member.id}">
						<a href="javascript:deleteConfirm(${post.id});">
							<i class="icon-trash" style="float:right;margin-right:25px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
						<a href="/with/posts/editView/${ post.id }">
							<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
					</c:when>
				</c:choose>
					<div class="type-quote">
						<img src="/with/img/quotes-icon.png"></img>
					
						<div class="type-quote-quotation">
							${ post.column1 }
						</div>
					
						<div class="type-quote-via"> - ${ post.column3 }</div>
						${ post.column2 }
					</div>
				</c:when>
				
				
				<c:when test="${post.type == '3'}">
				<c:choose>
					<c:when test="${post.writer == sessionScope.member.id}">
						<a href="javascript:deleteConfirm(${post.id});">
							<i class="icon-trash" style="float:right;margin-right:25px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
						<a href="/with/posts/editView/${ post.id }">
							<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
						</a>
					</c:when>
				</c:choose>
					<div class="type-link">
						<div class="type-link-title">
							<a href="${ post.column3 }"> <h1>${ post.column1 } »</h1></a>
						</div>
						${ post.column2 }
					</div>
				</c:when>
				
				
				<c:when test="${post.type == '4'}">
					<div class="type-photo">
						<img src="/with/posts/fileReader/${ post.column1 }/${ post.type }"></img>
						<div class="type-music-movie-photo-room"> </div>
						<div class="type-music-movie-photo">
							<c:choose>
								<c:when test="${post.writer == sessionScope.member.id}">
									<a href="javascript:deleteConfirm(${post.id});">
										<i class="icon-trash" style="float:right;margin-right:12px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
									<a href="/with/posts/editView/${ post.id }">
										<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
								</c:when>
							</c:choose>
							${ post.column2 }
						</div>
					</div>
				</c:when>
				
				
				<c:when test="${post.type == '5'}">
					<div class="type-movie">
						<c:choose>
							<c:when test="${ post.column1 == null}">
								<iframe width="640" height="360" src="http://www.youtube.com/embed/${ post.column3 }?rel=0" frameborder="0" allowfullscreen></iframe>
							</c:when>
							<c:otherwise> 
								<video id="video" height="360" width="600" controls >
									<source src="/with/posts/fileReader/${ post.column1 }/${ post.type }" />
								</video>
							</c:otherwise>
						</c:choose>
						
						<div class="type-music-movie-photo-room"></div>
						<div class="type-music-movie-photo">
							<c:choose>
								<c:when test="${post.writer == sessionScope.member.id}">
									<a href="javascript:deleteConfirm(${post.id});">
										<i class="icon-trash" style="float:right;margin-right:12px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
									<a href="/with/posts/editView/${ post.id }">
										<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
								</c:when>
							</c:choose>
							${ post.column2 }
						</div>
					</div>
				</c:when>
				
				<c:when test="${post.type == '6'}">
					<div class="type-music">
						<audio id="player" name="player" src="/with/posts/fileReader/${ post.column1 }/${ post.type }" controls="controls" style="width:500px;margin:30px 0 30px 30px;"></audio>
						<div class="type-music-movie-photo">
							<c:choose>
								<c:when test="${post.writer == sessionScope.member.id}">
									<a href="javascript:deleteConfirm(${post.id});">
										<i class="icon-trash" style="float:right;margin-right:12px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
									<a href="/with/posts/editView/${ post.id }">
										<i class="icon-edit" style="float:right;margin-right:3px;opacity:0.5;filter:alpha(opacity=50)"></i>
									</a>
								</c:when>
							</c:choose>
							${ post.column2 }
						</div>
					</div>
				</c:when>
				
				<c:when test="${post.type == '7'}">
					<div class="type-text">
						아직 ui 고민중
					</div>
				</c:when>
			</c:choose>
			
			<div class="post-meta-like-comment">
				<button class="btn btn-mini" type="button" onClick='checkLikes(${post.id},${post.owner})'>
					<i class="icon-thumbs-up"></i>Like
				</button>
				<button class="btn btn-mini-bubble" id="likesButton${ post.id }" type="button"> ${ post.likesCount.counts } </button>
				<span class="btn-mini-bubble-triangle"></span>&nbsp;
				<button class="btn btn-mini" type="button"   onClick='getReplies(${post.id})'>Comment <span id="commentscount${ post.id }">${post.replyCount.counts} </span></button>
			</div>
		</div>
		<div id="reply_box${post.id}" style="display:none">
			<div class="input-append ">
				<button class="btn btn-mini btn-info" type="button" onclick="setReplies(${ post.id }, ${sessionScope.member.id}, '${sessionScope.member.name}' )" style="margin-right:20px;float:right;border-radius:4px;">Reply Save</button>
			  	<input class="span2" id="repliesText${ post.id }" type="text" style="float:right;height:13px;width:350px;">
			</div>
			<div id="reply_append${post.id}" style="float:right;width:430px;margin-right:20px;">
			
			</div>
		</div>
	</c:forEach>
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>