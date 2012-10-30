<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>	

<a data-toggle="modal" href="#type_text"><img src="/with/img/post_text.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>

<a data-toggle="modal" href="#type_quote"><img src="/with/img/post_quote.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>

<a data-toggle="modal" href="#type_link"><img src="/with/img/post_link.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>

<a data-toggle="modal" href="#type_photo"><img src="/with/img/post_photo.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>

<a data-toggle="modal" href="#type_movie"><img src="/with/img/post_movie.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>

<a data-toggle="modal" href="#type_audio"><img src="/with/img/post_music.png"></img></a>
<img class="post-vertical-line" src="/with/img/post_line.png"></img>


<div id="type_text" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form name="text_write" action="/with/posts" method="POST">
		<legend><img src="/with/img/post_text copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Add a Text Post</legend>
		
		<label>Title</label>
		<p><input type="text" name="column1" placeholder="Insert Title" required style="width:540px;" /></p>
		
		<span class="help-block">Post</span>
		<p><textarea name="column2" rows="10" required style="width:540px;"></textarea></p>
		
		<input type="hidden" name="type" value="1" />
		<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
		<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
		<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
		
		<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
		<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
	</form>	  
</div>

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

<div id="type_photo" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form:form name="text_write" action="/with/posts/create" method="POST" enctype="multipart/form-data">
		<legend><img src="/with/img/post_photo copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Upload a Photo</legend>
	
		<label>Upload Image Your Computer</label>
		<p><input type="file" name="image"></p>
		
		<span class="help-block">Use a URL</span>
		<p><input type="text" name="column3" placeholder="http://" style="width:300px;" /></p>
		
		<span class="help-block">Description (optional)</span>
		<p><textarea name="column2" rows="10" style="width:540px;"></textarea></p>
		
		<input type="hidden" name="type" value="4" />
		<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
		<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
		<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
		
		<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
		<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
	</form:form>
</div>

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

<div id="type_audio" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form:form name="text_write" action="/with/posts/create" method="POST" enctype="multipart/form-data">
		<legend><img src="/with/img/post_music copy.png" style="margin-bottom:5px;"></img>&nbsp;&nbsp;Upload a Audio</legend>
		
		<label>Upload Audio Your Computer</label>
		<p><input type="file" name="image"></p>
		
		<span class="help-block">Use a URL</span>
		<p><input type="text" name="column3" placeholder="http://" style="width:300px;" /></p>
		
		<span class="help-block">Description (optional)</span>
		<p><textarea name="column2" rows="10" style="width:540px;"></textarea></p>
		
		<input type="hidden" name="type" value="6" />
		<input type="hidden" name="writer" value="${ sessionScope.member.id }" />
		<input type="hidden" name="writer_picture" value="${ sessionScope.member.picture }" />
		<input type="hidden" name="owner" value="${ sessionScope.member.id }" />
		
		<button type="submit" class="btn btn-primary" style="float:right;">Save Post</button>
		<button type="button" class="btn" data-dismiss="modal" style="float:right;margin-right:10px;">Cancel</button>
	</form:form>
</div>

<%-- <jsp:include page="/include/posts/type_text.jsp" /> --%>
<%-- <jsp:include page="/include/posts/type_quote.jsp" /> --%>
<%-- <jsp:include page="/include/posts/type_link.jsp" /> --%>
<%-- <jsp:include page="/include/posts/type_photo.jsp" /> --%>
<%-- <jsp:include page="/include/posts/type_movie.jsp" /> --%>
<%-- <jsp:include page="/include/posts/type_audio.jsp" /> --%>

<%-- <a href="#" id="chat_bubble" rel="popover" data-content="#{sessionScope.member.picture}" data-original-title="Twitter Bootstrap Popover"><img src="/with/img/post_chat.png"></img></a> --%>

<!-- <script>   -->
<%-- $(function ()  
 { $("#chat_bubble").popover();

// });  --%>
<!-- </script>   -->

<!-- <a href="/with/posts/new/text"><img src="/with/img/post_text.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="/with/posts/new/quote"><img src="/with/img/post_quote.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="/with/posts/new/link"><img src="/with/img/post_link.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="/with/posts/new/photo"><img src="/with/img/post_photo.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="/with/posts/new/movie"><img src="/with/img/post_movie.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="/with/posts/new/audio"><img src="/with/img/post_music.png"></img></a> -->
<!-- <img class="post-vertical-line" src="/with/img/post_line.png"></img> -->
<!-- <a href="#"><img src="/with/img/post_chat.png"></img></a> -->