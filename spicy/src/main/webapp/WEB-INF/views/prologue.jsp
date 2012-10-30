<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<title>電撃志望中!</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
	body {
    	padding-top: 60px;
    }
</style>
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />" />
<link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/bootstrap-responsive.css" />" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
</head>

<body>
	<jsp:include page="/resources/include/top_navi.jsp" />
	<section id="article">
	
	<div id="prologue-article">
		<div class="alert alert-info">
			<p>当初、今回の課題は個人ですることだと存じました。
			しかし、私たち二人はITマスターでずっと同じチームとしてプロジェクトを行ってまいりました。<br/>
			それで、共同で作ったものを一人のものとして提出することはできないと思いました。</p>

			<p>その結果、二人の個性を表すと共に、今までしてきたチーム・パフォーマンスも見せることができる共同のサイトを作ることにしました。</p>
		</div>
		
		<p>今までのあらすじ</p>
	
		<p>ジョン・ダフンとキ・ジェジュン</p>
	
		<p>生まれて３１年の同い年<br/>
		IT専門家の夢を叶えるため、SMART ITマスターに入りました。</p>
		
		<p>それぞれ会計と法律を専攻した私たちに、<br/>
		新しい分野への挑戦は、まるで至難の業のように思われたかもしれません。</p>
		
		<p>しかし、ITの勉強は極めて楽しいことでした。<br/>
		初めてモニターに「Hello, world!」を出力したとき、<br/>
		嬉しくて写真を撮っておいたことは記憶に生々しいです。<br/>
		徹夜しながら工夫したアルゴリズムを完成させたとき、<br/>
		その喜びは今でも目に焼きついています。</p>
		
		<p>SMART ITマスターでの私たちの生活に<br/>
		一片の悔いもありません。<br/>
		そして今、私たちはIT専門家になるため、<br/>
		最初の一歩を踏み出そうとしています。</p>
		
		<p>これから、今まで一緒にやってきたもの、<br/>
		各自をご紹介させていただきたいと思います。<br/>
		</p>
		
		<p>
		私たち、SEとしては、まだまだ未熟なものですが、これから御社と一緒に成長していきたいと願っております。 
		</p>
		
		<p>どうぞよろしくお願いします。</p><br/>
	</div>
	
	<div id="prologue-footnote-img">
		<p><img src="<c:url value="/resources/img/dahoon.png" />"/>
		<img src="<c:url value="/resources/img/jaejung.png" />"/>
		&nbsp;&nbsp;ダイナミック・デュオ</p>
	</div>
	&nbsp;
	</section>
	
	<jsp:include page="/resources/include/footer.jsp" />
	
</body>
</html>
