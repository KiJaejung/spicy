<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 공통 head 설정 -->
<jsp:include page="/include/head.jsp" />

<!-- 캘린더 관련 스타일시트 -->
<link rel="stylesheet" href="/with/css/calendar/zebra_datepicker.css"
	type="text/css">

<!-- 캘린더 관련 스크립트 -->
<script type="text/javascript" src="/with/js/calendar/jquery-1.8.1.js"></script>
<script type="text/javascript"
	src="/with/js/calendar/zebra_datepicker.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		// assuming the controls you want to attach the plugin to 
		// have the "datepicker" class set
		$('#calendar').Zebra_DatePicker();
	});
</script>

</head>

<body>

	<!-- 헤더 네비게이션 -->
	<jsp:include page="/include/header_navi.jsp" />
	<div class="container">
		<div class="account-setting">
<%-- 			<> --%>

			<form:form class="form-horizontal" action="/with/member/updateImage/${sessionScope.member.id}" method="POST" enctype="multipart/form-data">
			<div class="control-group" align="center">
				<img src="/with/posts/fileReader/${ sessionScope.member.picture }/4" height="420" width="300" align="center"></img>
			</div>
			<div class="control-group" align="center">
				<span><input type="file" id="picture" name="image" /></span>
				<span><input type="submit" value="Change" /></span>
			</div>
			
			<input type="hidden" name="introduce" value="${ sessionScope.member.introduce }" />
		    <input type="hidden" name="homepage" value="${ sessionScope.member.homepage }" />
		    <input type="hidden" name="region" value="${ sessionScope.member.region }" />
		    <input type="hidden" name="school" value="${ sessionScope.member.school }" />
		    <%-- <input type="hidden" name="birth" value="${ sessionScope.member.birth }" /> --%>
		    
			</form:form>

			<form:form class="form-horizontal" action="/with/member/update/${sessionScope.member.id}" method="PUT">
 				
				<div class="control-group">
					<label class="control-label" for="inputIntroduce">Introduce</label>
					<div class="controls">
						<input type="text" id="introduce" name="introduce"
							placeholder="Introduce" value="${sessionScope.member.introduce}" />
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputHomepage">Homepage</label>
					<div class="controls">
						<input type="text" id="homepage" name="homepage"
							placeholder="Homepage" value="${ sessionScope.member.homepage }">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputHomepage">Region</label>
					<div class="controls">
						<select name="region" id="region"
							value="${ sessionScope.member.region }">
							<option value="1">서울</option>
							<option value="2">부산</option>
							<option value="3">구미</option>
							<option value="4">광주</option>
							<option value="5">대전</option>
						</select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputUniversity">University</label>
					<div class="controls">
						<input type="text" id="university" name="school"
							placeholder="University" value="${ sessionScope.member.school }">
					</div>
				</div>

				<div class="control-group">
					<label class="control-label" for="inputHomepage">Birth</label>
					<div class="controls">
						<input id="calendar" type="text" readonly="readonly"
							name="tempBirth" value="${ sessionScope.member.birth }">
					</div>
				</div>

				<input type="hidden" name="picture" value="${ sessionScope.member.picture }" />
				<input type="hidden" name="_method" value="PUT" />
				<input type="hidden" name="id" value="${sessionScope.member.id}">

				<div class="control-group">
					<div class="controls">
						<button type="submit" class="btn">Save</button>
					</div>
				</div>
				<div class="control-group">
					<div class="controls" style="color:red">
						<a data-toggle="modal" href="#delete_member">회원 탈퇴</a>
					</div>
				</div>
				
			</form:form>
		</div>
	</div>
	

<div id="delete_member" class="modal hide fade" style="display: none; width:550px; padding:30px; ">
	<form:form action="/with/member/delete/" method="DELETE">
			<label class="radio"> <input type="radio" name="dropreason" id="optionsRadios1" value="1" checked>
				중독성이 너무 강하다
			</label>
			<label class="radio"> <input type="radio" name="dropreason" id="optionsRadios2" value="2">
				너무 잘 만들어져서 부담스럽다
			</label>
			<label class="radio"> <input type="radio" name="dropreason" id="optionsRadios3" value="3">
				내가 사용하기엔 너무 멋진 싸이트다
			</label>
			<label class="radio"> <input type="radio" name="dropreason" id="optionsRadios4" value="4">
				친구가 없어서 할 것이 없다
			</label>
			<label class="radio"> <input type="radio" name="dropreason" id="optionsRadios5" value="5">
				기타
			</label>
			<input type="hidden" name="_method" value="DELETE" /><br/>
			<input type="hidden" name="member_id" value="${sessionScope.member.id}">
			<input type="hidden" name="email" value="${sessionScope.member.email}">
			<input type="submit" value="Delete" />
	</form:form>
</div>
<jsp:include page="/include/footer.jsp" />
</body>
</html>