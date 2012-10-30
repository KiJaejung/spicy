
var xLine;
var canvas;
var context;
var textColor='#bbddaa';
var quoteColor='#dd88cc';
var linkColor='#669988';
var photoColor='#aaccbb';
var movieColor='#883355';
var musicColor='#ee5577';
var totalColor='#aaaa99';
var replyColor='#44bbbb';
var xcan;
var ycan;
var xaxis;
var yaxis;
var maxnumber;
var increaseNum;
var plusNum;

//전체 리스트의 길이를 구하는 함수. 존재의의는 과연 뭘까? 뭐 있어야 할거 같다
//여기에 그래프를 그리기 전의 사전 준비도 좀 해놓았다. 걸레코드의 시작이다. 
function writtenlog_result_draw(){	
	var combo = document.writtenlogform.period;
	combo.options[0].selected = true;
	xLine = document.getElementsByName('writtenlogdate');
	var title = document.getElementById('statistics_title');
	title.innerHTML=xLine[0].value+'부터 '+xLine[xLine.length-1].value+'까지의 통계<br/><br/>';
	writtenlog_on_canvas();
	
}

// DB에서 가져온 데이터를 선언해주고 그리기 함수로 보내는 곳, 여기도 대대적인 정리가 필요함
function writtenlog_on_canvas(){
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
	var text = document.getElementsByName('textcount');
	var quote = document.getElementsByName('quotecount');
	var link = document.getElementsByName('linkcount');
	var photo = document.getElementsByName('photocount');
	var movie = document.getElementsByName('moviecount');
	var music = document.getElementsByName('musiccount');
	var total = document.getElementsByName('totalcount');
	var reply = document.getElementsByName('replycount');

	
	maxnumber=0;
	maxCount(text);
	maxCount(quote);
	maxCount(link);
	maxCount(photo);
	maxCount(movie);
	maxCount(music);
	maxCount(total);
	maxCount(reply);

	painting_graph(text,textColor);
	painting_graph(quote,quoteColor);
	painting_graph(link,linkColor);
	painting_graph(photo,photoColor);
	painting_graph(movie,movieColor);
	painting_graph(music,musicColor);
	painting_graph(total,totalColor);
	painting_graph(reply,replyColor);
	outlineresult();
	add_writtenlog_checkbox();
}

function on_canvas_click(e){
	x	= e.clientX - e.target.offsetLeft-xaxis;
	y	= e.clientY - e.target.offsetTop;
	var resultpoint = parseInt(x*xLine.length/xcan);
	var text = document.getElementsByName('textcount');
	var quote = document.getElementsByName('quotecount');
	var link = document.getElementsByName('linkcount');
	var photo = document.getElementsByName('photocount');
	var movie = document.getElementsByName('moviecount');
	var music = document.getElementsByName('musiccount');
	var total = document.getElementsByName('totalcount');
	var reply = document.getElementsByName('replycount');
	alert(xLine[resultpoint].value+'의 기록\n'+text[resultpoint].value+'건의 텍스트글\n'+quote[resultpoint].value
			+'건의 인용글\n'+link[resultpoint].value+'건의 링크글\n'+photo[resultpoint].value
			+'건의 사진글\n'+movie[resultpoint].value+'건의 동영상글\n'+music[resultpoint].value
			+'건의 음악글\n'+total[resultpoint].value+'건의 전체글\n'+reply[resultpoint].value
			+'건의 리플이 작성되었습니다.');
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
function add_writtenlog_checkbox(){
	var out = document.getElementById("checkbox_result");
	out.innerHTML ="<form id='graph_checkbox'>"+
		"<input type='checkbox' name='select_graph' value='text'/><b style='color:"+textColor+"'>&nbsp;텍스트글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='quote'/><b style='color:"+quoteColor+"'>&nbsp;인용글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='link'/><b style='color:"+linkColor+"'>&nbsp;링크글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='photo'/><b style='color:"+photoColor+"'>&nbsp;사진글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='movie'/><b style='color:"+movieColor+"'>&nbsp;동영상글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='music'/><b style='color:"+musicColor+"'>&nbsp;음악글</b><br/>"+
		"<input type='checkbox' name='select_graph' value='total'/><b style='color:"+totalColor+"'>&nbsp;전체글</b>&nbsp;&nbsp;"+
		"<input type='checkbox' name='select_graph' value='reply'/><b style='color:"+replyColor+"'>&nbsp;리플</b><br/>"+
		"<p class='btnsel'>" +
		"<button class='btn btn-small btn-primary' onclick='selected_writtenlog_graph(this.form.select_graph);' type='button'>SELECT</button> </p></form>";
}


// 체크박스에서 그래프가 선택되었는지 여부를 확인하는 함수
function selected_writtenlog_graph(list){
	// 텍스트를 사용해서 고정된 색깔값을 구하기 위한 사전연습
	/* var text = 'abc';
	alert('텍스트의 길이 : '+text.length);
	for (var i = 0; i < text.length; i++) {
		alert((i+1)+'번째 글자는 '+text.charAt(i)+'이고 변환값은 '+text.charCodeAt(i));
	} */

	maxnumber=0;
	for (var i = 0; i < list.length; i++) {
		if(list[i].checked){
			var checkname = list[i].value + 'count';
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
	var checkname = check + 'count';
	var checkColor;
	if(check == 'text'){
		checkColor = textColor;
	}else if(check == 'quote'){
		checkColor = quoteColor;
	}else if(check == 'link'){
		checkColor = linkColor;
	}else if(check == 'photo'){
		checkColor = photoColor;
	}else if(check == 'movie'){
		checkColor = movieColor;
	}else if(check == 'music'){
		checkColor = musicColor;
	}else if(check == 'total'){
		checkColor = totalColor;
	}else{
		checkColor = replyColor;
	}
	var result = document.getElementsByName(checkname);
	painting_graph(result,checkColor);
}