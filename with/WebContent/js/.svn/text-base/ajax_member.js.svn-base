////////////////////////////////////
////	친구 관계 관련 AJAX 		////
////////////////////////////////////


// 사이드 아바타를 클릭하면 회원 정보, 나와의 관계를 확인하는 비동기 메서드를 2개 실행한다
// member_info()
// relation_check()
var owner;
var writer;
var post_id;
function side_avatar (params_owner, params_writer, params_post_id) {
	owner = params_owner;
	writer = params_writer;
	post_id = params_post_id;
 	new net.ContentLoader('/with/member/show/'+writer, member_info, onError, "GET", '');
 	new net.ContentLoader("/with/friend/" + owner + "/find/" + writer, relation_check, onError, "GET", '');
}


// 멤버 정보를 받아오면 화면에 표시한다
function member_info() {
 	var a = this.req.responseText.split(',');
 	document.getElementById("side_avatar_Name"+post_id).innerHTML = "<li><a href=\"/with/posts/"+a[2]+"\">" + a[0] + "</a></li>";
 	document.getElementById("side_avatar_Homepage"+post_id).innerHTML = "<li><a href=\""+a[1]+"\">" + a[1] + "</a></li>";
}


// 나와의 관계를 받아오면, 적절한 메뉴를 표시한다 : ex) 친구이면 친구 신청, 친구가 아니면 친구 끊기
// friend_request()
// friend_remove()
function relation_check() {
 	var result = this.req.responseText;
 	if(result.indexOf('Friend') =='-1') {
 		document.getElementById("side_avatar_friendship"+post_id).innerHTML = "<li><a href=\"javascript:friend_request();\">친구 신청</a></li>";
 	} else {
 		document.getElementById("side_avatar_friendship"+post_id).innerHTML = "<li><a href=\"javascript:friend_remove("+ owner + "," + writer +");\">친구 끊기</a></li>"; 		
 	}
}


// 친구 신청을 하면 우선 친구 신청이 되어있는 상태인지 확인한다
// make_standby()
function friend_request() {
	new net.ContentLoader("/with/friendstandby/"+owner+"/find/"+writer, make_standby, onError, "GET", '');
}


// 친구 신청이 되어있지 않는 상태이면 친구 신청 상태로 만들고, 친구신청이 되어있다면 기다리라는 알림을 띄운다
// make_friend_request_confirm()
function make_standby() {
	var result = this.req.responseText;
	if (result.indexOf('FriendStandby')=='-1') {
		var loader3=new net.ContentLoader("/with/friendstandby/", make_friend_request_confirm, onError, "POST", 'request='+owner+'+&accept='+writer);
 	} else {
 		alert('Wait please. friend requested.');
 	}
}


// 친구 신청 상태로 만들기 성공
function make_friend_request_confirm() {
	var result = this.req.responseText;
	if (result.indexOf('true')!='-1') {
		alert('Friend Requested!');
 	} else {
 		alert('Ooops! Sorry. Try Again');
 	}
}

// 친구 요청 수락
// accepted_friend()
function make_friend_request(my_id, request_id) {
	var params = 'accept='+my_id+'&request='+request_id;
	if(confirm("Accept friend request?")) {
		new net.ContentLoader("/with/friendstandby", accepted_friend, onError, "PUT", params);
	} else {
		 
	}
}

// 친구 요청 수락 완료
function accepted_friend() {
	window.location.reload();
}


// 친구 요청 거절
// denied_friend
var top_request_delete_div;
function make_friend_request_deny(my_id, request_id) {
	top_request_delete_div = request_id;
	var params = 'accept='+my_id+'&request='+request_id;
	if(confirm("Deny friend request?")) {
		new net.ContentLoader("/with/friendstandby", denied_friend, onError, "DELETE", params);
	} else {
		 
	}
}

// 친구 요청 거절
function denied_friend() {
	var result = this.req.responseText;
	alert('Denied Friend');
	document.getElementById("top_request1").innerHTML = result;
	document.getElementById("top_request2").innerHTML = result;
	a = document.getElementById("top_requestedList"+top_request_delete_div);
	document.getElementById('top_requested_list').removeChild(a);
}


// 친구 끊기
// deleted_friend()
function friend_remove(my_id, friend_num) {
	if(confirm("Delete Friend?")) {
		new net.ContentLoader("/with/friend/"+my_id+"/delete/"+friend_num, deleted_friend, onError, "DELETE", '');
	} else {
		 
	}
}

// 친구 끊김
function deleted_friend() {
	window.location.reload();
}





//////////////////////////////////////
/////		친구 요청수 확인		//////
//////////////////////////////////////

function request_list(id) {
	new net.ContentLoader("/with/friendstandby/requestList/"+id, request_listed, onError, "GET", '');
}
function request_listed() {
	var result = this.req.responseText;
	document.getElementById('request_list').innerHTML+=result;
	if(document.getElementById('top_request2').innerHTML!='0') {
		document.getElementById('request_badge').innerHTML = "<span class=\"badge badge-important\" id=\"top_request_button2\" style=\"margin-left: 5px;\"><span id=\"top_request1\">"+document.getElementById('top_request2').innerHTML+"</span></span>";
	} else {
		
	}
}

//////////////////////////////////////
/////	로그인한 친구 확인		//////
//////////////////////////////////////

function login_list(id) {
	new net.ContentLoader("/with/loginList/"+id, login_listed, onError, "GET", '');
}

function login_listed() {
	var result = this.req.responseText;
	$('#loginList').html(result);
}


function chat_request(me, you) {
	new net.ContentLoader("/with/"+me+"/chatRequest/"+you, chat_requested, onError, "GET", '');
}

function chat_requested() {
	var result = this.req.responseText;
	window.open(result,'_blank',"all=no, width=230,height=420");
}


function chat_response(me) {
	new net.ContentLoader("/with/chatResponse/"+me, chat_responsed, onError, "GET", '');
}

function chat_responsed(me) {
	var result = this.req.responseText;
	if(result.indexOf('http') != '-1') {
		showPopup(result, 'Chat Invited', 'Enjoy!');
	}
}






////////////////////////////////////
///////		 실시간 회원 검색		////////
////////////////////////////////////

function member_search_form(search_key) {
	console.log(search_key.length);
	if(search_key.length != 0) {
		new net.ContentLoader("/with/member/search/"+search_key, member_search_form_result, onError, "GET", '');
	}

}

function member_search_form_result() {
	var result = this.req.responseText;
	$('#seo').show(200);
//	$('#search_member_list').appendTo(result);
	var out = document.getElementById("search_member_list");
	out.innerHTML = result;
	
}

////////////////////////////////////
///////		 AJAX Error		////////
////////////////////////////////////

function onError() {
	alert('Ooops! Sorry. Try Again');
}