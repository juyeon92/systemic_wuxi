<%--
  Author: 9111665
  Date: 2020-11-16
  Description: 
  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>접근 권한이 없습니다</h1>
<h4><c:out value="${exception.getMessage()}"></c:out></h4>
<ul>
    <c:forEach items="${exception.getStackTrace() }" var="stack">
        <li><c:out value="${stack}"></c:out></li>
    </c:forEach>
</ul>
</body>
</html>
