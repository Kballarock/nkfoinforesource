<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>RIR Главная</title>

    <style> <%@include file="/resources/css/w3.css" %> </style>
    <style> <%@include file="/resources/css/w3-theme-green.css" %> </style>

    <link rel="shortcut icon" href="${contextPath}/resources/img/logo_bookmark.ico" type="image/x-icon">
</head>
<body>

<div class="container">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>Welcome ${pageContext.request.userPrincipal.name} | <a class="w3-text-blue" onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>

    </c:if>

</div>

</body>
</html>