/////////////////////////////////////////////
//////// 	타임라인 받아오기		/////////////
/////////////////////////////////////////////

// 화면이 시작되자마자 0번페이지를 받는다
var page=0;
function load_more(){
	new net.ContentLoader("/with/posts/timeline/"+page, load_posts, onError, "GET", '');
	page +=1;
}

function load_posts(){
	var result = this.req.responseText;
	// 크롬 사파리용
	$(result).hide().appendTo('#load_posts').show(400);

	// 파폭까지 호환
	//document.getElementById('load_posts').innerHTML+=result;
}



// 글 삭제 관련
var post_id;
function deleteConfirm(id) {
	post_id = id;
	if(confirm("Delete this post?")) {
		new net.ContentLoader('/with/posts/'+id, deleteResult, onError, "DELETE", '');
	 } else {
		 
	 }
}
function deleteResult() {
	var result = this.req.responseText;
 	if (result.indexOf('true')!='-1') {
 		var del = "#post"+post_id;
 		$(del).hide(300);
 	}
} 











var replies_id;
function getReplies (reply_id) {
	replies_id = reply_id;
	new net.ContentLoader("/with/reply/"+replies_id, showReplies, onError, "GET", '');
	$("#reply_box"+ replies_id).toggle(10);
	
}
function showReplies () {
	var result = this.req.responseText;
	$("#reply_append"+ replies_id).html(result);
}

function setReplies(post_id, replier_id, replier_name) {
	var contents = $("#repliesText"+ post_id).val();
	var params = "post_no="+post_id+"&replier="+replier_id+"&contents=" +contents + "&replier_name=" + replier_name;
	$.ajax({
		type : 'POST',
		url : '/with/reply',
		data: params,
		success : function(data) {
			 
			 getReplies(post_id);
			 $("#reply_box"+ post_id).show(300);	 
			 $("#repliesText"+ post_id).val('');
			 show_reply_count(post_id);
		}
	});
}

function show_reply_count(post_id) {
	$.ajax({
		type : 'GET',
		url : '/with/reply/result/'+post_id,
		success : function(data) {
			$("#commentscount"+ post_id).html(data);	
		}
	});
}
var regrette;
function delete_reply(reply_id, post_no) {
	regrette = post_no;
	new net.ContentLoader("/with/reply/"+reply_id, deleted_reply, onError, "DELETE", '');
}

function deleted_reply() {
	var result = this.req.responseText;
	getReplies(regrette);
	$("#reply_box"+ regrette).show(300);	 
	show_reply_count(regrette);
}

function onError() {
	alert('Ooops! Sorry. Try Again');
}

/////////////////////////////////////////////////////////////////////////////////////////////
////////좋아요 버튼 클릭 관련	/////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

var likes_post_id;
var owner_no;
var param;
function checkLikes(id,owner){
	likes_post_id = id;
	owner_no = owner;
	param = "post_no="+id+"&owner="+owner;
	new net.ContentLoader('/with/likes/check', insertLikes, onError, "POST", param);
}
function insertLikes(){
	var result = this.req.responseText;
 	if (result.indexOf('true')!='-1') {
 		var loader=new net.ContentLoader('/with/likes/up', likesResult, onError, "POST", param);
 	} else{
 		var deletelike = confirm("You already checked this!\n delete your count?");
 		if(deletelike){
 			var loader2=new net.ContentLoader('/with/likes/'+result, likesResult, onError, "DELETE", param);
 		}else{}
 	}
}

function likesResult(){
	var loader=new net.ContentLoader('/with/likes/result/'+likes_post_id, spreadLikes, onError, "GET", '');
}
function spreadLikes(){
	var result = this.req.responseText;
	var a = document.getElementById('likesButton'+likes_post_id);
	a.innerHTML=result;

}