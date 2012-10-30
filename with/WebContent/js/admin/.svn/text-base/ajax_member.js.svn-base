// 회원관리 Page에서 회원 정보를 보여주고 삭제하는 기능을 담당

var period;		// 검색 범위저장 변수

// 회원정보를 받아오는데 사용하는 메소드 
function show_member_list() {
	period = document.getElementById("selectDay").value;
	
	if(period == 0){
		new net.ContentLoader("/with/admin/member/showWhole/"+period, show_member_info, onError, "GET", '');
	}else{
		new net.ContentLoader("/with/admin/member/show/"+period, show_member_info, onError, "GET", '');
	}
	
}

// 회원정보를 범위에 따라 받아오는 메소드
function show_member_periodList() {
	var periodStart = document.getElementById("start");
	var periodEdn = document.getElementById("end");
	new net.ContentLoader("/with/admin/member/showPeriod/"+periodStart.value+"/"+ periodEdn.value, show_member_info, onError, "GET", '');
	
}

// 받은 회원정보의 format을 만듬
function show_member_info() {
	//document.getElementById("memberList").innerHTML = xmlHttp.responseText;
	var result = this.req.responseText;
	var out = document.getElementById("memberList");
	out.innerHTML = result;
}

// 회원정보를 삭제하는 메소드 
function delete_member(member_id){
	if(confirm("Are you sure you want to delete member "+member_id+"?")) {
		var loader = new net.ContentLoader("/with/admin/member/"+member_id, show_member_list, show_member_list, "DELETE", '');
		alert(member_id+" has been deleted");
	} else {
		alert("You have chosen to cancel");
	}
}

function deleted_friend(){
}

// E-mail 검색창에 keyboard를 입력할때
function email_autocomplete(email){
	var email_add = email;
	if(email_add===""){
	} else {
		var loader = new net.ContentLoader("/with/admin/member/email/autocomplete/"+email_add, email_autocomplete_result, email_autocomplete_result, "POST", '');
	}
}

// E-mail 자동완성 검색결과를 보여주는 메소드
function email_autocomplete_result(){
	var result = this.req.responseText;
	console.log(result);
	var out = document.getElementById("autocompleteResult");
	out.innerHTML = result;
}

// 검색내용중 선택된 내용을 text로 보내주는 메소드
function load_to_text(email){
	var select_email = email;	
	var recipients = document.getElementById('recipients');
	recipients.value += select_email + ",";
}

// E-mail을 전송하는 메소드
function send_email(){
	var recipients = document.getElementById("recipients").value;
	var title = document.getElementById("title").value;
	var contents = CKEDITOR.instances.contents.getData();
	
	var information = "recipients="+recipients+"&title="+title+"&contents="+contents;
	
	new net.ContentLoader("/with/admin/member/email/send", transfer_result, onError, "POST", information);
}

// E-mail의 결과를 알려주는 Page
function transfer_result(){
	var result = this.req.responseText;
	var out = document.getElementById("resultSendEmail");
	out.innerHTML = result;
}

function onError() {
	alert('Ooops! Sorry. Try Again');
}

//회원글 받아오기
function show_contentsList(){
	var contentsNo= document.getElementById("selectDay").value;
	new net.ContentLoader("/with/admin/posts/index/"+contentsNo, show_contents_info, onError, "GET", '');
}
//회원 글 삭제
function delete_contents(posts_id){
	if(confirm("Are you sure you want to delete posts "+posts_id+"?")) {
		alert(posts_id+" has been deleted");
		var loader = new net.ContentLoader("/with/admin/posts/deleteContents/"+posts_id, show_contentsList, show_contentsList, "DELETE", '');
		console.log(loader);
	} else {
		alert("You have chosen to cancel");
	}
}

function show_contents_info() {
	//document.getElementById("memberList").innerHTML = xmlHttp.responseText;
	var result = this.req.responseText;
	var out = document.getElementById("contentsList");
	out.innerHTML = result;
}

/////////////////////////////////////////////////////////////////////////
///////////////// 멤버로그 관련 js /////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

//멤버 로그 받아오기
function show_memberlog_listaa(){
	var member	= document.memberlogform;
	var param	= 'period='+member.period.value+'&startPeriod='
	+member.startPeriod.value+'&endPeriod='+member.endPeriod.value;
	new net.ContentLoader("/with/admin/memberlog/show/exam", show_memberlog_info, onError, "POST", param);
}
//받아온 결과 뿌리기
function show_memberlog_info(){
	var result = this.req.responseText;
	var out = document.getElementById("memberlog_result");
	out.innerHTML = result;
	memberlog_result_draw();
}


/////////////////////////////////////////////////////////////////////
////////////글통계, 오늘의 통계 종합///////////////////////////////////////
////////////////////////////////////////////////////////////////////

function show_writtenLog(){
	//글 통계를 보여주는
	var written = document.writtenlogform;
	var param = 'period='+written.period.value+'&startPeriod='+written.startPeriod.value+'&endPeriod='+written.endPeriod.value;
	var loader = new net.ContentLoader("/with/admin/writtenlog/showss", show_statistics_result, onError, "POST", param);	
}
function show_todayLog(){	
	var loader = new net.ContentLoader("/with/admin/todaylog/showss", show_today_result, onError, "GET",'');
	var loader_all = new net.ContentLoader("/with/admin/todaylog/showssAll", show_today_all_result, onError, "GET",'');
}
function show_today_index()
{
	var asd = document.aa;	
	var loader = new net.ContentLoader("/with/admin/todaylog/showIndex", show_today_result, onError, "GET",'');
}

function show_today_result()
{
	var result = this.req.responseText;
	var out = document.getElementById("show_result");
	out.innerHTML = result;
	
}
function show_today_all_result()
{
	var result = this.req.responseText;
	var out = document.getElementById("show_all_result");										
	out.innerHTML = result;
	}
function show_statistics_result(){	
	var result = this.req.responseText;	
	var out = document.getElementById("writtenlog_result");	
	out.innerHTML = result;
	writtenlog_result_draw();
}

