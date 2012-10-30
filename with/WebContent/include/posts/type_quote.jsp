<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="type_quote" class="modal hide fade" style="display: none; width:550px; padding:30px; ">

<form name="text_write" action="/with/posts" method="POST">
	<legend><img src="/with/img/post_quote copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Add a Quote</legend>
	
	<label>Quote</label>
	<p><textarea name="column1" required rows="3" style="width: 540px;"></textarea></p>
	
	<p><span class="help-block" style="float:right; margin-right:4px;" >Via &nbsp;&nbsp;
	<input type="text" name="column3" placeholder="..." required style="width: 200px;margin-top:6px;" /></span></p><br />
	
	<span class="help-block" style="margin-top:20px;">Description (optional)</span>
	<p><textarea name="column2" rows="6" style="width: 540px;"></textarea></p>
	
	<input type="hidden" name="type" value="2" />
    <input type="hidden" name="writer" value="${ sessionScope.member.id }" />
    <input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
    <input type="hidden" name="owner" value="${ sessionScope.member.id }" />
    
   	<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
	<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
</form>
	   

</div>
