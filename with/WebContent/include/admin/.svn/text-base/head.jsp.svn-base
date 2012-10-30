<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<title>With</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/with/css/admin/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/with/js/admin/bootstrap.js"></script>
<script>
var chat_status = 0;
function chat_call(name) {
	if (chat_status == 0) {
		document.getElementById('hidden_chat').innerHTML= "<div id=\"chat_room\" style=\"width:230px;height:400px;margin:50px -120px -400px 0;float:right; border-radius: 5px 5px 5px 5px;box-shadow: 0 0 3px #bbbbbb;\"></div>";
		document.getElementById('chat_room').innerHTML = "<iframe id=\"chat_room11\" src=\"http://127.0.0.1:52273?name="+name+"&room=123\" frameborder=\"0\" width=\"200\" height=\"400\">";
		chat_status = 1;
	} else if(chat_status == 1) {
		$('#hidden_chat').hide();
		chat_status = 2;
	} else if(chat_status == 2) {
		$('#hidden_chat').show();
		chat_status = 1;
	}
	
// 	window.open ("http://127.0.0.1:52273?name="+name+"&room=123","Chat","left=0, top=0, toolbar=no, location=0, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, width=230, height=400");
	
}
</script>