<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>RiResource</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/styles.min.css">

    <link rel="shortcut icon" href="${contextPath}/resources/img/logo_bookmark.ico" type="image/x-icon">
</head>
<body class="text-center" style="color: rgb(208,53,39);">
<!-- Start: Navigation with Button -->
<div>
    <nav class="navbar navbar-light navbar-expand-lg shadow-sm navigation-clean-button"
         style="color: #ffffff;background-color: #20421d;height: 55px;">
        <div class="container"><a class="navbar-brand" href="#">RiResource</a>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse"
                 id="navcol-1">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="color: #ffffff;">Контакты</a>
                    </li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" style="color: #ffffff;">О
                        проекте</a></li>
                </ul>
                <span class="navbar-text actions">
                <button class="btn btn-primary btn-lg action-button" type="button" style="background-color: #dc4f24;"
                        onclick="location.href='login'">Войти</button>
                <button class="btn btn-primary btn-lg action-button" type="button" style="background-color: #f8b715;"
                        onclick="location.href='registration'">Регистрация</button></span>
            </div>
        </div>
    </nav>
</div>
<!-- End: Navigation with Button --><img alt="nkfologo" class="rounded d-lg-flex mx-auto"
                                         src="${contextPath}/resources/img/logo-raschet.jpg"
                                         style="width: 100%;max-width: 350px;filter: grayscale(0%);margin-top: 20px;">
<h4 class="text-uppercase text-center"
    style="color: rgb(32,66,29);font-style: normal;opacity: 1;filter: blur(0px) sepia(0%);font-weight: bold;">
    Информационный ресурс</h4>
<!-- Start: Features Boxed -->
<div class="features-boxed">
    <div class="container">
        <!-- Start: Intro -->
        <div class="intro"></div>
        <!-- End: Intro -->
        <!-- Start: Features -->
        <div class="row justify-content-center features">
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="far fa-folder icon" style="color: rgb(32,66,29);"></i>
                    <h3 class="name">Документы</h3>
                    <p class="description">Письма и разъяснения по законодательству от Министерства
                        жилищно-коммунольного хозяйства.</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-gear icon" style="color: rgb(32,66,29);"></i>
                    <h3 class="name">АИС "Расчет-ЖКУ"</h3>
                    <p class="description">Инструкции и технологическая документация по работе с модулем АСИ
                        "Расчет-ЖКУ".</p>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div class="box"><i class="fa fa-comments icon" style="color: rgb(32,66,29);"></i>
                    <h3 class="name">Вопрос - Ответ</h3>
                    <p class="description">В рубрике "Вопрос-Ответ" Вы можете получить дополнительную информацию от
                        специалистов "НКФО "ЕРИП"</p>
                </div>
            </div>
        </div>
        <!-- End: Features -->
    </div>
</div>
<!-- End: Features Boxed -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
