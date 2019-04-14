<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>RiR Вход</title>
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
            <h4 class="text-center" style="color: #20421d;">Вход в RiResource</h4>
            <div class="card">
                <div class="card-body text-center"><img alt="avatar" class="rounded-circle"
                                                        src="${contextPath}/resources/img/img_avatar.png" width="30%">
                    <h3 class="text-danger"></h3>
                    <form method="POST" action="${contextPath}/login">

                        <span style="color: red">${error != null ? 'Ошибка ввода данных!' : ''}</span>

                        <span style="color: green"> ${message}</span>

                        <div class="form-group text-left">
                            <label>Имя пользователя</label>
                            <input class="form-control" type="text" name="username"
                                   placeholder="Введите имя пользователя">
                        </div>

                        <div class="form-group text-left">
                            <label>Пароль</label>
                            <input class="form-control" type="password" name="password"
                                   placeholder="Введите пароль">
                        </div>

                        <span style="color: red";>${error}</span>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                        <button class="btn btn-success btn-block" type="submit" style="background-color: #20421d; margin-bottom: 10px;">
                            <strong>Войти</strong></button>

                        <a class="btn btn-link center-block" role="button" href="#">Забыли пароль?</a>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row row-login">
        <div class="col-10 col-sm-6 col-md-4 offset-1 offset-sm-3 offset-md-4">
            <div class="card">
                <div class="card-body text-center" style="height: 80px;">
                    <div></div>
                    <h3 class="text-danger"></h3>
                    <form>
                        <small class="form-text text-muted" style="font-size: 16px;height: 18px;margin: -10px;">Впервые
                            на сайте?
                        </small>
                        <a class="btn btn-link center-block" style="color: blue" role="button"
                           onclick="location.href='registration'">Создать
                            аккаунт.</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End: Login Center -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>