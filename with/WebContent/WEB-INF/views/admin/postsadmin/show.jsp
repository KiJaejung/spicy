<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/include/admin/head.jsp" />	
</head>
<body>
	<table class="table" width="80%" align="center">
		<thead>
		<tr align="center">

			<th style="width:5px;"> Type</th>
			<th style="width:20px;"> No </th>
			<th style="width:20px;"> name </th>
			<th style="width:80px;"> email </th>
			<th style="width:200px;"> Title </th>
			<th style="width:300px;"> contents </th>
			<th style="width:100px;"> Date</th>
			<th style="width:5px;"> </th>

		</tr>
		</thead>
		<tbody>		
		<c:forEach items="${contentsList}" var="domain">
		<form:form name="deleteContents" method="DELETE">
			<c:choose>
				<c:when test="${domain.type == 1}">
					<tr align="center">
						<td><img src="/with/img/post_text.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
				<c:when test="${domain.type == 2}">
					<tr align="center" ><!-- bgcolor="#FFBB00" -->
						<td><img src="/with/img/post_quote.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
				<c:when test="${domain.type == 3}">
					<tr align="center" ><!-- bgcolor="#47C83E" -->
						<td><img src="/with/img/post_link.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
				<c:when test="${domain.type == 4}">
					<tr align="center" ><!-- bgcolor="#FF6C6C" -->
						<td><img src="/with/img/post_photo.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
				<c:when test="${domain.type == 5}">
					<tr align="center" ><!-- bgcolor="#BDBDBD" -->
						<td><img src="/with/img/post_movie.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
				<c:when test="${domain.type == 6}">
					<tr align="center" ><!-- bgcolor="#9999FF" -->
						<td><img src="/with/img/post_music.png" class="img-mini"></td>
						<td style="width:10px;">${domain.id}</td>
						<td>${domain.member.name}</td>
						<td>${domain.member.email}</td> 
						<td>${domain.column1}</td>
						<td>${domain.column2}</td>
						<td>${domain.post_date}</td>
						<td>
							<input type="hidden" name="_method" value="DELETE" >
							<button class="btn btn-small btn-danger" onclick="delete_contents(${domain.id})" type="button">DELETE</button>
						</td>
					</tr>				
				</c:when>
			</c:choose>

		</form:form>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>