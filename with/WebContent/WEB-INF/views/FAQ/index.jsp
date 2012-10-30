<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->

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
</head>
<body>

	<!-- 헤더 네비게이션 -->
<jsp:include page="/include/header_navi.jsp" />

<!-- head -->
<div id = "head">
	<h1> About</h1>
</div>
<!--// head -->

<!-- all div -->
<div  id="all">
	<!-- left menu -->
	<div id="menu">
		<ul class="leftmenu">
			<li><a href="/with/FAQ/index">about With</a></li>
			<li><a href ="/with/FAQ/faq">FAQ</a></li>
		</ul>
	</div>
	<!--// left menu -->
	
	<!-- contents -->
	<div id="content" class="about">	 
      <h2 id="tagline">The fastest, simplest way to stay close to everything you care about.</h2>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  An information network</h3>
      <p>With is a real-time information network that connects you to the latest stories, ideas, opinions and news about what you find interesting. Simply find the accounts you find most compelling and follow the conversations.</p>
      <p>At the heart of With are small bursts of information called contents. Each contents is 140 characters long, but don’t let the small size fool you—you can discover a lot in a little space. You can see photos, videos and conversations directly in contentss to get the whole story at a glance, and all in one place. See it in action.</a></p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  You don’t have to contents to get value from With</h3>
      <p>You don’t have to build a web page to surf the web, and you don’t have to contents to enjoy With. Whether you contents 100 times a day or never, you still have access to the voices and information surrounding all that interests you. You can contribute, or just listen in and retrieve up-to-the-second information. Visit fly.With.com to learn more about what’s yours to discover.</p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  With for Businesses</h3>
      <p>With connects businesses to customers in real time—and businesses use With to quickly share information with people interested in their products and services, gather real-time market intelligence and feedback, and build relationships with customers, partners and influencers. From brand lift to CRM to direct sales, With offers businesses an easy way to reach an engaged audience. Visit With 101 for Businesses to learn more</p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  With around the world</h3>
      <p>With was founded in IT-master in Korea, but it's used by people in nearly every country in the world. The service is available in more than 20 languages, and we continue to add them. You can change your language preference in your user settings with just a few clicks.</p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  With on the go</h3>
      <p>Experience With on your mobile device by using one of our free With apps for iPhone, iPad, Android, BlackBerry and Windows 7. To get the latest apps, go to With.com/download on your mobile device.</p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  With for SMS</h3>
      <p>With for SMS is an instant infrastructure for mobile communications. Individuals, businesses and social causes can use With for SMS and our Fast Follow program to connect directly to anyone with a mobile phone. Here’s a list of all the countries that offer With for SMS; we are actively working to add even more.</p>

      <h3><img src="/with/img/admin/bul_arrow.gif" />  With in the Community</h3>
      <p>With lends itself to cause and action. Every day, we are inspired by stories of people using With to help make the world a better place in unexpected ways. Visit stories.With.com to learn more.</p>
      <p>And with just a contents, millions of people learn about or show their support for positive initiatives that might have otherwise gone unnoticed. Programs like With Ads for Good offer a way for non-profit organizations to promote their efforts the same way as businesses can. As more community-centric organizations join the platform, citizens will increasingly engage with the efforts taking place to move their community forward. Follow @WithGood and @WithSF for more on these topics.</p>
    </div>
	<!-- contents -->
  
</div> <!-- /row -->
<!--// all div -->
	<jsp:include page="/include/footer.jsp" />
</body>
</html>