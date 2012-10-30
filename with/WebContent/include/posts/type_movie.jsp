<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div id="type_movie" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form:form name="text_write" action="/with/posts/create" method="POST" enctype="multipart/form-data">
		<legend><img src="/with/img/post_movie copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Upload a Movie</legend>
		
		<label>Upload Movie Your Computer</label>
		<p><input type="file" name="image" ></p>
		
		<span class="help-block">Embed Code...</span>
		<p><input type="text" name="column3" placeholder="http://" style="width:300px;" /></p>
		
		<span class="help-block">Description (optional)</span>
		<p><textarea name="column2" rows="10" style="width:540px;"></textarea></p>
		<input type="hidden" name="type" value="5" />
		<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
		<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
		<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
		
		<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
		<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
	</form:form>
</div>
