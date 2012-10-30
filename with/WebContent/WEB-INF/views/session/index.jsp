<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
  <head>
  	
    <title>WITH</title>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="/with/css/style.css" rel="stylesheet">
    <style type="text/css">
      html {
        background: url(/with/img/pic_test.jpg) no-repeat center center fixed;
        -webkit-background-size: cover;
        -moz-background-size: cover;
        -o-background-size: cover;
        background-size: cover;
      }
    </style>
  </head>
  <body>
  
    <div class="container">
      <div class="index-login-welcome">
        Welcome to With.
      </div>
      
      <div class="index-login-welcome-message">
        Find out what’s happening, right now, with the people and organizations you care about.
      </div>
      
      <c:choose>
      <c:when test="${loginFault == 'name'}">
      	<div class="index-login-check">
          <div class="alert alert-error">
            Check Your Name!
          </div>
      </div>
      </c:when>
      <c:when test="${loginFault == 'password'}">
      	<div class="index-login-check">
          <div class="alert alert-error">
            Check Your Correct Password!
          </div>
      	</div>
      </c:when>
      </c:choose>
      
      <div class="index-login-form">
          <form name="login" action="/with/" class="form-inline" method="post">
           
          <input class="span4" type="text" name="name" placeholder="Username" required><br/>
          <input class="span3" type="password" name="password" placeholder="Password" required>
          <input type="submit" class="btn" value="Sign In"><br/>
          <label class="checkbox">
            <input type="checkbox"> Remember me
          </label>
        </form>
      </div>
		
      
      
      <c:if test='${!empty singupFault}'>
      	<div class="index-signup-check">
	          <div class="alert alert-error">
	            ${singupFault }
	          </div>
	      </div>
      </c:if>
     
      <div class="index-signup-form">
        <form:form name="signup" class="form-inline" action="/with/member/new" method="POST">
          <div class="index-signup-message">
            Member Sign Up
          </div>
          <input class="span4" type="text" name="name" placeholder="Name" required><br/>
          <input class="span4" type="text" name="email" placeholder="Email" required><br/>
          <input class="span4" type="password" name="password" placeholder="Password" required><br/>
          <input type="hidden" name="_method" value="POST"/>
          <input type="submit" class="btn" value="Sign up for With">
        </form:form>
      </div>

    </div>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>