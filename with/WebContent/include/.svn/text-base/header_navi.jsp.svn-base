<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="navbar navbar-fixed-top">
<div class="navbar-inner">
	<div class="container">
		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
			<span class="icon-bar"></span> 
			<spanclass="icon-bar"></span> <span class="icon-bar"></span>
		</a> 
		<a class="brand" href="/with"><img src="/with/img/admin/logo.png" /></a>
		<div class="nav-collapse">
			<ul class="nav pull-right">
				<li><a href="/with">TimeLine</a></li>
				<li><a href="/with/posts/${sessionScope.member.id}">Me</a></li>
				<li class="dropdown" id="top_request_button1">
					<a href="#" class="dropdown-t                                       oggle" data-toggle="dropdown">Friends <b class="caret"></b> 
						<span id="request_badge"></span>
					</a>
					
					<!-- 친구 신청한 사람들의 목록 및 드랍메뉴 -->
					<ul class="dropdown-menu">
					
						<!-- 신청자들의 수 -->
						<div id="request_list"></div>
						<li class="divider"></li>
						<li><a href="/with/friend/">Friends List</a></li>
					</ul>
				</li>

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Setting<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li>
							<a href="/with/member/${sessionScope.member.id}/edit">Account Setting</a></li>
						<li class="divider"></li>
						<li>
							<a href="/with/FAQ/index">FAQ</a>
						</li>
					</ul>
				</li>

				<!-- 로그아웃 -->
				<li><a href="#"
					onclick="document.forms['logoutForm'].submit();return false;"><i
						class="icon-off icon-white"></i></a></li>

				<!-- 검색 -->
				<form class="navbar-search" action="javascript:member_search_form();">
					<input type="text" id="member_search" name="name" class="search-query span2" placeholder="Member Search" autocomplete='off'>
				</form>
				<li class="dropdown"  >
					<span class="dropdown-toggle" data-toggle="dropdown" ></span>
					<ul class="dropdown-menu" id="seo"  style="margin-left:-150px;margin-top:45px;">
<!-- 						<li > -->
<%-- 							<a href="/with/member/${sessionScope.member.id}/edit">Account Setting</a></li> --%>
<!-- 						<li class="divider"></li> -->
<!-- 						<li> -->
<!-- 							<a href="#">FAQ</a> -->
<!-- 						</li> -->
						<div id="search_member_list"></div>
					</ul>
				</li>
			</ul>
			<script>
				$('#member_search').keyup(function() {
					member_search_form($('#member_search').val());
// 					$('#seo').show(500);
				});
			</script>
			<!-- 로그아웃  폼-->
			<form:form name="logoutForm" action="/with/" method="DELETE">
				<input type="hidden" name="_method" value="DELETE" />
			</form:form>
		</div>
		<!-- /.nav-collapse -->
	</div>
	<!-- /.container -->
</div>
<!-- /.navbar-inner -->
</div>
<!-- /.navbar -->