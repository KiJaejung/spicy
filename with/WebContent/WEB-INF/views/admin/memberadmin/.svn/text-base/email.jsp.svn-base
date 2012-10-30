<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
<script src="/with/js/admin/ContentLoader.js"></script>
<script src="/with/js/admin/ajax_member.js"></script>
<link href="/with/css/style.css" rel="stylesheet">


<script type="text/javascript" src="/with/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/with/ckeditor/adapters/jquery.js"></script>

<script type="text/javascript">
$(window).ready(function() {
	$('#searchEmail').keyup(function(){
		email_autocomplete($('#searchEmail').val());
	});	
});
</script>

<script type="text/javascript">
$(document).ready(function(){
	$('#').val();
});
</script>
</head>
<body>
<!-- 헤더 네비게이션 -->
<jsp:include page="/include/admin/header_navi.jsp" />

<div class="container">
<br />
    <div class="container-fluid">
    	<div class="row-fluid">
    		<div class="span3">
				<ul class="nav nav-tabs nav-stacked">
					<li><a href="/with/admin/member/show"><b>Member Managements</b></a></li>
					<li><a href="/with/admin/member/email"><b>Notice Email Transfer</b></a></li>
				</ul>
			</div> <!-- span3 -->
  			<div class="span9">
  				<legend><img src="/with/img/admin/Envelope.png" style="margin-bottom:5px;" width="25px" height="25px"></img>&nbsp;&nbsp;Notice Email Tranfer</legend>
  				<form name="sendEmail" method="post">
  				<h4>To</h4><span><input type="text" id="searchEmail" placeholder="Please input the email address"style="width:28%;"></span>
  				<input type="text" name="recipients" id="recipients" placeholder="Send to all members if this textbox is blank." style="width:65.6%;"/>
  				
  				<!-- 자동 완성 기능을 보여주는 창 -->
  				<div id="autocompleteResult"></div>
  				
   				<h4>Title</h4>
   				<input type="text" name="title" id="title" width="100%" /><br />
   				<h4>Contents</h4>
   				<textarea id="contents" name="contents" cols="400" rows="10"></textarea>
   				<script type="text/javascript">
				//<![CDATA[
				CKEDITOR.replace('contents');
				//]]
				</script>
   				<button class="btn btn-large btn-block btn-primary" type="button" onclick="send_email();">Send E-mail</button>
   				
   				<!-- Email 전송 결과를 보여주는 창 -->
   				<div id="resultSendEmail"></div>
   				</form>
   			</div> <!-- span9 -->
    	</div> <!-- row-fluid -->
    </div> <!-- container-fluid -->
</div> <!-- Container -->
<jsp:include page="/include/footer.jsp" />
</body>
</html>