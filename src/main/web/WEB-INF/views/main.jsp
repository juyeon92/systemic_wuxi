<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix ="sec" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>WTF 왜 나 꽈찌쭈는</title>
    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
</head>
<body>
<h1>Hello world!</h1>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
<p>
    <a href="<c:url value='/main?lang=ko' />">한국어</a>
    <a href="<c:url value='/main?lang=en' />">English</a>
</p>
<p>site.title : <spring:message code="site.title" text="default text" /></p>

<p>site.count : <spring:message code="site.count" arguments="첫번째" text="default text" /></p>

<p>site.count using EL : <spring:message code="site.count" arguments="${siteCount}" text="default text" /></p>

<p>not.exist : <spring:message code="not.exist" /></p>

<p>Client Locale : <c:out value="${clientLocale}" /></p>

<p>Session Locale : <c:out value="${sessionLocale}" /></p>



</body>
</html>
