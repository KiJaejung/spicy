<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>With</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link href="/with/css/style.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/with/js/bootstrap.js"></script>

<script>
function member_search_form() {
	var a = document.getElementById("member_search").value;
	location.href='/with/member/search/'+a;
}

var chat_condition=0;
function chat_call(name) {
 	window.open("http://203.233.196.193:52273?name="+name+"&room=102","Chat","all=no, width=230,height=420");

// 	}
}
</script>