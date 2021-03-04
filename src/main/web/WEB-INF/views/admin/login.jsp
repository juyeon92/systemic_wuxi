<%--
  Author: 9111665
  Date: 2020-11-16
  Description: 
  
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix ="sec" %>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>

    <meta id="_csrf" name="_csrf" content="${_csrf.token}"/>
    <meta id="_csrf_header" name="_csrf_header" content="${_csrf.headerName}"/>
</head>
<body>

<form class="login-form" method="post" action="/login">
    <sec:csrfInput/>
    <div class="row">
        <div class="input-field col s12">
            <input id="userid" type="text" name="username" class="validate"/>
            <label for="userid">userid</label>
        </div>
    </div>
    <div class="row">
        <div class="input-field col s12">
            <input id="userpw" type="password" name="password" class="validate"/>
            <label for="userpw">Password</label>
        </div>
    </div>
    <input class="login-btn waves-effect waves-light btn" type="submit" value="로그인" />
</form>
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <font color="red">
        <p>
           ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
        </p>
        <c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
    </font>
</c:if>
</body>
</html>
