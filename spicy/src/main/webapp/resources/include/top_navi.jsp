<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="/spicy">電撃志望中!</a>
			<div class="nav-collapse">
				<ul class="nav">
					<c:choose>
						<c:when test="${ prologueNavi == 'true' }">
							<li class="active"><a href="/spicy/prologue">あらすじ</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/spicy/prologue">あらすじ</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${ portfoliosNavi == 'true' }">
							<li class="active"><a href="/spicy/portfolios">ポートフォリオ</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/spicy/portfolios">ポートフォリオ</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${ jaejungNavi == 'true' }">
							<li class="active"><a href="/spicy/jaejung">キ･ジェジュン</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/spicy/jaejung">キ･ジェジュン</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${ dahoonNavi == 'true' }">
							<li class="active"><a href="/spicy/dahoon">ジョン･ダフン</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/spicy/dahoon">ジョン･ダフン</a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${ restNavi == 'true' }">
							<li class="active"><a href="/spicy/rest">レスト API</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="/spicy/rest">レスト API</a></li>
						</c:otherwise>
					</c:choose>
					
				</ul>
				<a class="btn btn-danger pull-right"
					href="http://www.spicysoft.com/">Spicy Soft</a>
			</div>
		</div>
	</div>
</div>