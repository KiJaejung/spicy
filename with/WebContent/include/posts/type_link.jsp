<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="type_link" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form name="text_write" action="/with/posts" method="POST">
		<legend><img src="/with/img/post_link copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Add a Link</legend>
		<label>Title</label>
		<p><input type="text" name="column1" placeholder="Insert Title" required style="width: 540px;" /></p>
		
		<span class="help-block">URL</span>
		<p><input type="text" name="column3" placeholder="http://" required style="width: 540px;" /></p><br />
		
		<span class="help-block">Description (optional)</span>
		<p><textarea name="column2" rows="10" style="width:540px;"></textarea></p>
		     	
		<input type="hidden" name="type" value="3" />
		<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
		<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
		<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
		<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
		<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
	</form>
</div>
