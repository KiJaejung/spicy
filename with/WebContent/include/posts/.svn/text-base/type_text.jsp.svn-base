<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="type_text" class="modal hide fade" style="display: none; width:550px; padding:30px; ">

<form name="text_write" action="/with/posts" method="POST" onsubmit="convertCKEDITOR();">
	<legend><img src="/with/img/post_text copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Add a Text Post</legend>
	
	<label>Title</label>
	<p><input type="text" name="column1" placeholder="Insert Title" required style="width:540px;" /></p>
	
	<span class="help-block">Post</span>
	<p><textarea id="contents" name="contents" rows="10" required style="width:540px;"></textarea></p>
	
	<input type="hidden" name="type" value="1" />
	<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
	<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
	<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
	<input type="hidden" name="column2" />
	
	<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
	<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
</form>	   

</div>
