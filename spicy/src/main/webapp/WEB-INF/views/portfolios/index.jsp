<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<title>電撃志望中!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
	body {
    	padding-top: 60px;
    }
</style>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
</head>

<body>
	<!-- Top Navi -->
	<jsp:include page="/resources/include/top_navi.jsp" />
	
	<!-- Write Button  -->
	<div id="post-write">
		<a data-toggle="modal" href="#type_text">
		<button class="btn btn-small" type="button"><i class="icon-pencil"></i> &nbsp;書き込み</button>
	</a>
	</div>
	
	<!-- Can't Write Warning  -->
	<div id="post-warning">
		<div class="alert">
			<button type="button" class="close" data-dismiss="alert">×</button>
		  	書き込みはアイパッドおよびパソコンでしてください。
		</div>
	</div>
	
	
	<c:forEach var="portfolios" items="${ portfoliosList }">
		<section id="article">
			<h2><span id="navi-profile"></span>${ portfolios.title }</h2>
			${ portfolios.contents }
			<p></br><a href="javascript:delArticle(${ portfolios.id })"><i class="icon-trash" style="opacity:0.5;float:right;"></i></a></p>
		</section>
	</c:forEach>
	
	
	<div id="type_text" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
		<form name="text_write" action="/spicy/portfolios" method="POST">
			<legend>&nbsp;&nbsp;Add a Text Post</legend>
			
			<label>Title</label>
			<p><input type="text" name="title" id="title" placeholder="Insert Title" required style="width:550px;height:30px;" /></p>
			<span class="help-block">Post</span>
			<p><textarea name="contents" id="contents" rows="10" required style="width:550px;"></textarea></p>
			<button type="button" class="btn btn-primary" id="post-btn" style="float:right;">Save Post</button>
			<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
		</form>
	</div>
	
	<jsp:include page="/resources/include/footer.jsp" />
	
	<script>
	$(window).ready(function() {
		$('#post-btn').click(function(event) {
			var title = $('#title').val();
			var contents = $('#contents').val();
			$.ajax({
				type : 'POST',
				url : '/spicy/portfolios',
				dataType : "json", 
				data: {"title":title,"contents":contents},
				success : function(data) {
					if(!data.result) {
						location.reload();
					} else {
						alert("Ooops. try again");
					}
				}
			});
		});
	});
	function delArticle(id) {
		var id = id;
		$.ajax({
			type : 'POST',
			url : '/spicy/portfolios/'+id,
			dataType : "json", 
			data: { _method:"DELETE"},
			success : function(data) {
				if(!data.result) {
					location.reload();
				} else {
					alert("Ooops. try again");
				}
			}
		});
	}
	</script>
</body>
</html>
