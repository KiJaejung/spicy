
var xLine;
var canvas;
var context;
var visitColor='#99ddaa';
var signupColor='#dd88cc';
var dropColor='#669988';
var memberColor='#aaccbb';
var xcan;
var ycan;
var xaxis;
var yaxis;
var maxnumber;
var increaseNum;
var plusNum;

//전체 리스트의 길이를 구하는 함수. 존재의의는 과연 뭘까? 뭐 있어야 할거 같다
//여기에 그래프를 그리기 전의 사전 준비도 좀 해놓았다. 걸레코드의 시작이다. 
function memberlog_result_draw(){
	var combo = document.memberlogform.period;
	combo.options[0].selected = true;
	xLine = document.getElementsByName('memberLogDate');
	var title = document.getElementById('statistics_title');
	title.innerHTML=xLine[0].value+'부터 '+xLine[xLine.length-1].value+'까지의 통계<br/><br/>';
	memberlog_on_canvas();
	
}

// DB에서 가져온 데이터를 선언해주고 그리기 함수로 보내는 곳, 여기도 대대적인 정리가 필요함
function memberlog_on_canvas(){
	canvas = document.getElementById('draw');
	context = canvas.getContext('2d');	
	canvas.addEventListener('click', on_canvas_click, false);
	xaxis = canvas.width*0.05;
	yaxis = canvas.height*0.1;
	xcan = canvas.width-xaxis;
	ycan = canvas.height-yaxis;
	canvas.width = canvas.width; 
	outlineGraph();
	context.lineWidth=3;
	context.lineJoin='round';
	var visit = document.getElementsByName('visitCount');
	var signup = document.getElementsByName('signupCount');
	var drop = document.getElementsByName('dropCount');
	var member = document.getElementsByName('memberCount');
	
	maxnumber=0;
	maxCount(visit);
	maxCount(signup);
	maxCount(drop);
	maxCount(member);

	painting_graph(visit,visitColor);
	painting_graph(signup,signupColor);
	painting_graph(drop,dropColor);
	painting_graph(member,memberColor);
	outlineresult();
	add_memberlog_checkbox();
}

function on_canvas_click(e){
	x	= e.clientX - e.target.offsetLeft-xaxis;
	y	= e.clientY - e.target.offsetTop;
	var resultpoint = parseInt(x*xLine.length/xcan);
	var visit = document.getElementsByName('visitCount');
	var signup = document.getElementsByName('signupCount');
	var drop = document.getElementsByName('dropCount');
	var member = document.getElementsByName('memberCount');
	alert(xLine[resultpoint].value+'의 기록\n'+visit[resultpoint].value+'명 방문\n'+signup[resultpoint].value
			+'명 가입\n'+drop[resultpoint].value+'명 탈퇴\n총 '+member[resultpoint].value
			+'명이 with와 함께하고 있습니다.');
}

// 캔버스 안에 x,y축을 그리는 메서드.
function outlineGraph(){
	context.beginPath();
	context.moveTo(xaxis,ycan);
	context.lineTo(canvas.width,ycan);
	context.moveTo(xaxis,0);
	context.lineTo(xaxis,ycan);
	context.stroke();
}

// 선택된 그래프 수치 중에 최대값을 구하는 메서드
function maxCount(list){
	for(var i=0;i < list.length;i++){
		if(maxnumber < list[i].value*1){
			maxnumber = list[i].value*1;
		}
	}
}

//실제로 그래프를 그리는 함수
function painting_graph(graphresult,graphcolor){
	var resultlength = xLine.length;
	increaseNum = parseInt(resultlength/20);	// 그래프가 평균 20개의 지점에서 꺾이도록 수치 계산
	if(increaseNum<1){
		increaseNum=1;	//이 수치가 1 미만이 되면 무한반복이 되므로 1로 고정값 줌
	}
	plusNum = increaseNum;
	var xwidth=xcan/resultlength;	//for문에서의 계산을 줄이기 위한 변수 선언
	var yheight=ycan/maxnumber*0.9;	// 상동
	context.strokeStyle=graphcolor;
	context.beginPath();
	context.moveTo(xaxis+(0)*(xwidth) , (ycan-(graphresult[0].value*yheight)));
	for(var i = increaseNum; i< resultlength; i ){
		increaseNum = increaseNum + plusNum;
		context.lineTo(xaxis+(i) *(xwidth) , (ycan-(graphresult[i].value*yheight)));
		i = increaseNum;
		//alert(xLine[i].value);
		//context.fillText(xLine[i].value,xaxis+(i) *(xcan/resultlength),ycan+yaxis*0.5,30);
	}
	context.lineTo(xaxis+(resultlength) *(xwidth) , (ycan-(graphresult[resultlength-1].value*yheight)));
	context.stroke();
}
/* 
function painting_graph(graphresult,graphcolor){
	context.strokeStyle=graphcolor;
	context.beginPath();
	context.moveTo( (0)*(xcan/xLine.length) , (ycan-(graphresult[0].value*ycan/maxnumber*0.9)));
	for(var i = 0; i< xLine.length; i++ ){
		context.lineTo( (i) *(xcan/xLine.length) , (ycan-(graphresult[i].value*ycan/maxnumber*0.9)));
	}
	context.stroke();
} */

// 그래프 바깥의 날짜와 값, 그래프 안의 격자를 그리는 메서드 
function outlineresult(){
	var resultlength = xLine.length;
	increaseNum = plusNum*2;
	if(resultlength<10){
		increaseNum = increaseNum/2;
	}
	plusNum = increaseNum;
	var xwidth=xcan/resultlength;
	var yheight=ycan+yaxis*0.5;
	context.lineWidth=1;
	context.strokeStyle='#cccccc';
	context.beginPath();
	context.textAlign='left';
	context.fillText(xLine[0].value.substr(5),xaxis+(0) *(xwidth),yheight,30);
	for(var i = increaseNum; i< resultlength; i ){
		increaseNum = increaseNum + plusNum;
		context.fillText(xLine[i].value.substr(5),xaxis+(i) *(xwidth),yheight,30);	// 날짜를 써준다
		context.moveTo(xaxis+(i) *(xwidth),ycan);	//세로줄 위치
		context.lineTo(xaxis+(i) *(xwidth),0);		//세로줄 긋기
		i = increaseNum;
		//alert(xLine[i].value);
		//context.fillText(xLine[i].value,xaxis+(i) *(xcan/resultlength),ycan+yaxis*0.5,30);
	}
	context.fillText(xLine[resultlength-1].value.substr(5),xaxis+(resultlength) *(xwidth),yheight,30);
	var graphterm = parseInt(ycan/6);
	for(var i = 0; i < 6; i++){
		context.fillText(parseInt(maxnumber*((i+1)/6)),xaxis/2,ycan-((i+1)*(graphterm)),30);
		context.moveTo(xaxis,ycan-((i+1)*(graphterm)));
		context.lineTo(canvas.width,ycan-((i+1)*(graphterm)));
	}
	context.stroke();
}

// 로그 리스트를 불러온 후에 체크박스를 생성시키는 함수
function add_memberlog_checkbox(){
	var out = document.getElementById("checkbox_result");
	out.innerHTML ="<form id='graph_checkbox'>"+
				"<input type='checkbox' name='select_graph' value='visit'/><b style='color:"+visitColor+"'>&nbsp;방문자 수</b>&nbsp;&nbsp;"+
				"<input type='checkbox' name='select_graph' value='signup'/><b style='color:"+signupColor+"'>&nbsp;가입자 수</b>&nbsp;&nbsp;"+
				"<input type='checkbox' name='select_graph' value='drop'/><b style='color:"+dropColor+"'>&nbsp;탈퇴자 수</b>&nbsp;&nbsp;"+
				"<input type='checkbox' name='select_graph' value='member'/><b style='color:"+memberColor+"'>&nbsp;총 회원 수</b><br/>"+
				"<p class='btnsel'>" +
				"<button class='btn btn-small btn-primary' onclick='selected_memberlog_graph(this.form.select_graph);' type='button'>SELECT</button> </p></form>";
}


// 체크박스에서 그래프가 선택되었는지 여부를 확인하는 함수
function selected_memberlog_graph(list){
	// 텍스트를 사용해서 고정된 색깔값을 구하기 위한 사전연습
	/* var text = 'abc';
	alert('텍스트의 길이 : '+text.length);
	for (var i = 0; i < text.length; i++) {
		alert((i+1)+'번째 글자는 '+text.charAt(i)+'이고 변환값은 '+text.charCodeAt(i));
	} */
	/*canvas.width = canvas.width; 
	outlineGraph();
	context.lineWidth=3;
	context.lineJoin='round';*/
	maxnumber=0;
	for (var i = 0; i < list.length; i++) {
		if(list[i].checked){
			var checkname = list[i].value + 'Count';
			var result = document.getElementsByName(checkname);
			maxCount(result);
		}
	}
	
	canvas.width = canvas.width; 
	outlineGraph();
	context.lineWidth=3;
	context.lineJoin='round';
	
	for (var i = 0; i < list.length; i++) {
		if(list[i].checked){
			redrawing_memberlog(list[i].value);
		}
	}
	outlineresult();
}

// 체크 박스에서 선택한 그래프를 그리기 함수로 보내기, 색깔 선택이 너무 더러우니까 나중에 바꾸자.
function redrawing_memberlog(check){
	var checkname = check + 'Count';
	var checkColor;
	if(check == 'visit'){
		checkColor = visitColor;
	}else if(check == 'signup'){
		checkColor = signupColor;
	}else if(check == 'drop'){
		checkColor = dropColor;
	}else{
		checkColor = memberColor;
	}
	var result = document.getElementsByName(checkname);
	painting_graph(result,checkColor);
}