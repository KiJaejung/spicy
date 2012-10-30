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
<script src="/with/js/bootstrap-popover.js"></script>

<script type="text/javascript">

$(window).ready(function() {
	load_more();
	request_list('${sessionScope.member.id}');
	
	$('a[href=#top]').click(function(){
        $('html, body').animate({scrollTop:0}, 'slow');
        return false;
    });
	
	setInterval( function() {
		chat_response('${sessionScope.member.name}');
	}, 1000);
	
});

$(window).scroll(function(e){
	if  ($(window).scrollTop() == $(document).height() - $(window).height()){ 
		load_more();
      } 
});

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
	        }, '100000');
		}
	}
 }
else{
	
}

</script>
</head>

<body>
<a name="top"></a>
<!-- 헤더 네비게이션 -->
<jsp:include page="/include/header_navi.jsp" />
<div class="container">
	
<!-- 	일단은 버 -->
	

	<div class="article-list" id="article-list">
		
		<!-- 글쓰기 타입 메뉴 -->
		<div class="post-memu-bubble">
			<div class="post-menu-avatar">
				<img src="/with/posts/fileReader/${ sessionScope.member.picture }/4"></img>
			</div>
			<jsp:include page="/include/posts/select_type_menu.jsp" />
			
			<a href="javascript:login_list('${ sessionScope.member.id }');"><img src="/with/img/post_chat.png"></img></a>
			<div id="loginList"></div>
<%-- 		<a href="javascript:chat_call('${ sessionScope.member.name }');"><img src="/with/img/post_chat.png"></img></a> --%>
			
			
			
		</div>
		<div id="load_posts">
		</div>

<%-- 		<a href="javascript:load_more(${ sessionScope.member.id })"> --%>
<!-- 			<button class="btn btn-info" type="button" style="float:right;width:606px;margin-top:10px;">Back to Top</button> -->
<!-- 		</a> -->
		<div id="backToTop">
			<a href="#top" title="Back to the Top">
				<button class="btn btn-info" type="button" style="float:right;width:606px;margin-top:10px;">Back to Top</button>
			</a>
		</div>
		
	</div>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>