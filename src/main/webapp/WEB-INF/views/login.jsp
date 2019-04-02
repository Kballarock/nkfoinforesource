<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>RIR Инфоресурс</title>

    <style> <%@include file="/resources/css/w3.css" %> </style>
    <style> <%@include file="/resources/css/w3-theme-green.css" %> </style>

    <link rel="shortcut icon" href="${contextPath}/resources/img/logo_bookmark.ico" type="image/x-icon">
</head>
<body>


<div class="w3-container w3-th">

    <div class="w3-container w3-display-middle" style=height:570px;>
        <img src="${contextPath}/resources/img/logo-raschet.jpg"
             alt="logo-raschet" style="width:100%;max-width:320px">
    </div>

    <div class="w3-container w3-display-middle" style=height:170px;>
        <h2>ИНФОРМАЦИОННЫЙ РЕСУРС</h2>
    </div>

    <button onclick="document.getElementById('Login').style.display='block'"
            class="w3-button w3-theme-dark w3-large w3-display-middle">Войти
    </button>

    <div id="Login" class="w3-modal w3-theme-l3">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:500px">

            <div class="w3-center"><br>
                <span onclick="document.getElementById('Login').style.display='none'"
                      class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Закрыть">&times;</span>
                <img src="${contextPath}/resources/img/img_avatar.png" alt="Avatar"
                     style="width:30%" class="w3-circle w3-margin-top ">
            </div>

            <form method="POST" class="w3-container" action="${contextPath}/login">
                <div class="w3-section ${error != null ? 'has-error' : ''}">
                    <span> ${message}</span>
                    <label><b>Пользователь</b></label>
                    <input class="w3-input w3-border w3-margin-bottom" type="text"
                           placeholder="Введите имя пользователя"
                           name="username" required>
                    <label><b>Пароль</b></label>
                    <input class="w3-input w3-border" type="password" placeholder="Введите пароль" name="password"
                           required>
                    <span>${error}</span>

                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <button class="w3-button w3-block w3-theme-dark w3-section w3-padding" type="submit">Войти
                    </button>

                </div>
            </form>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <button onclick="document.getElementById('Login').style.display='none'" type="button"
                        class="w3-button w3-red">Выход
                </button>
                <span class="w3-right w3-padding w3-hide-small">Забыли <a href="#">пароль?</a></span>
            </div>

        </div>
    </div>
</div>

</body>
</html>