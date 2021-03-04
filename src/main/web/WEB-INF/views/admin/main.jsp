<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix ="sec" %>
<sec:authorize access="!isAuthenticated()">
    <script>
        window.location.replace("/admin/login");
    </script>
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>로그인 완료!</h1>
</body>
</html>
