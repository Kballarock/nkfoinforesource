<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>RiR Регистрация</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/styles.min.css">

    <link rel="shortcut icon" href="${contextPath}/resources/img/logo_bookmark.ico" type="image/x-icon">
</head>

<body style="background-color: rgb(222,212,212);">
<!-- Start: Login Center -->
<div class="container">
    <div class="row row-login">
        <div class="col-10 col-sm-6 col-md-4 offset-1 offset-sm-3 offset-md-4">
            <h4 class="text-center" style="color: #20421d;">Создайте аккаунт в RiResource</h4>
            <div class="card">
                <div class="card-body text-center"><img alt="avatar" class="rounded-circle"
                                                        src="${contextPath}/resources/img/img_avatar.png"
                                                        width="25%">
                    <form:form method="POST" modelAttribute="userForm" class="form-group text-left">
                        <spring:bind path="userName">
                            <form:label path="userName">Имя пользователя</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="text" path="userName" class="form-control" placeholder="Введите имя пользователя"
                                            autofocus="true"/>
                                <form:errors path="userName"/>
                            </div>
                        </spring:bind>

                        <spring:bind path="userPassword">
                            <form:label path="userPassword">Пароль</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="password" path="userPassword" class="form-control" placeholder="Введите пароль"/>
                                <form:errors path="userPassword"/>
                            </div>
                        </spring:bind>

                        <spring:bind path="userConfirmPassword">
                            <form:label path="userConfirmPassword">Подтверждение пароля</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="password" path="userConfirmPassword" class="form-control"
                                            placeholder="Введите пароль еще раз"/>
                                <form:errors path="userConfirmPassword"/>
                            </div>
                        </spring:bind>

                        <spring:bind path="userEmail">
                            <form:label path="userEmail">Email</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="text" path="userEmail" class="form-control"
                                            placeholder="Введите Email"/>
                                <form:errors path="userEmail"/>
                            </div>
                        </spring:bind>

                        <spring:bind path="userFio">
                            <form:label path="userFio">ФИО</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="text" path="userFio" class="form-control"
                                            placeholder="Введите ФИО"/>
                                <form:errors path="userFio"/>
                            </div>
                        </spring:bind>

                        <spring:bind path="userOrganisation">
                            <form:label path="userOrganisation">Наименование организации</form:label>
                            <div class="form-group ${status.error ? 'has-error' : ''}" style="color: red; font-size: 11px;">
                                <form:input type="text" path="userOrganisation" class="form-control"
                                            placeholder="Введите название организации"/>
                                <form:errors path="userOrganisation"/>
                            </div>
                        </spring:bind>


                        <button class="btn btn-success btn-block" type="submit" style="background-color: #20421d;">
                            <strong>Создать аккаунт</strong></button
                    </form:form>
                    <%--<form>
                        <div class="form-group text-left" style="height: 55px;">
                        <label class="text-left">Имя
                       пользователя</label>
                       <input class="form-control" type="text"></div>

                        <div class="form-group text-left" style="height: 60px;"><label>Пароль</label><input
                                class="form-control" type="password"></div>
                        <div class="form-group text-left" style="height: 60px;"><label>Подствердите пароль</label><input
                                class="form-control" type="password"></div>
                        <div class="form-group text-left" style="height: 60px;"><label>Email</label><input
                                class="form-control" type="password"></div>
                        <div class="form-group text-left" style="height: 60px;"><label>Введите ФИО</label><input
                                class="form-control" type="password"></div>
                        <div class="form-group text-left" style="height: 60px;"><label>Наименование
                            организации</label><input class="form-control" type="password"></div>
                        <button class="btn btn-success btn-block" type="submit" style="background-color: #20421d;">
                            <strong>Создать аккаунт</strong></button>
                    </form>--%>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End: Login Center -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>


<%--
<body>

<div class="container">

    <form:form method="POST" modelAttribute="userForm" class="form-signin">
        <h2 class="form-signin-heading">Create your account</h2>
        <spring:bind path="userName">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="text" path="userName" class="form-control" placeholder="Username"
                            autofocus="true"/>
                <form:errors path="userName"/>
            </div>
        </spring:bind>

        <spring:bind path="userPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="userPassword" class="form-control" placeholder="Password"/>
                <form:errors path="userPassword"/>
            </div>
        </spring:bind>

        <spring:bind path="userConfirmPassword">
            <div class="form-group ${status.error ? 'has-error' : ''}">
                <form:input type="password" path="userConfirmPassword" class="form-control"
                            placeholder="Confirm your password"/>
                <form:errors path="userConfirmPassword"/>
            </div>
        </spring:bind>

        <spring:bind path="userEmail">
            <div class="form-group ">
                <form:input type="text" path="userEmail" class="form-control"
                            placeholder="Enter Email"/>
            </div>
        </spring:bind>

        <spring:bind path="userFio">
            <div class="form-group ">
                <form:input type="text" path="userFio" class="form-control"
                            placeholder="Enter yuor name"/>
            </div>
        </spring:bind>

        <spring:bind path="userOrganisation">
            <div class="form-group ">
                <form:input type="text" path="userOrganisation" class="form-control"
                            placeholder="Enyer yuor organisation name"/>
            </div>
        </spring:bind>


        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
    </form:form>
</div>
--%>


</body>
</html>