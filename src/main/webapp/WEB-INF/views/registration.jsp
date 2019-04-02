<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Добавление нового пользователя</title>

    <style> <%@include file="/resources/css/w3.css" %> </style>
    <style> <%@include file="/resources/css/w3-theme-green.css" %> </style>

    <link rel="shortcut icon" href="${contextPath}/resources/img/logo_bookmark.ico" type="image/x-icon">
</head>

<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="userName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="userName" class="form-control" placeholder="Username"
                            autofocus="true"></form:input>
                <form:errors path="userName"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="userPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="userPassword" class="form-control" placeholder="Password"></form:input>
                <form:errors path="userPassword"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="userConfirmPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="userConfirmPassword" class="form-control"
                            placeholder="Confirm your password"></form:input>
                <form:errors path="userConfirmPassword"></form:errors>
            </div>
        </spring:bind>

        <spring:bind path="userEmail">
            <div class="form-group ">
                <form:input type="text" path="userEmail" class="form-control"
                            placeholder="Enter Email"></form:input>
            </div>
        </spring:bind>

        <spring:bind path="userFio">
            <div class="form-group ">
                <form:input type="text" path="userFio" class="form-control"
                            placeholder="Enter yuor name"></form:input>
            </div>
        </spring:bind>

        <spring:bind path="userOrganisation">
            <div class="form-group ">
                <form:input type="text" path="userOrganisation" class="form-control"
                            placeholder="Enyer yuor organisation name"></form:input>
            </div>
        </spring:bind>


        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>

</div>


</body>
</html>