<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>New Book</title>

    <meta charset="utf-8">

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.css">

    <link href="/resources/css/small-business.css" rel="stylesheet">
    <link href="/resources/css/owl.carousel.css" rel="stylesheet" media="screen">
    <link href="/resources/css/owl.theme.css" rel="stylesheet" media="screen">

    <link rel="stylesheet" type="text/css" href="/resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/responsive.css">
    <link rel="stylesheet" type="text/css" href="/resources/font/font-awesome/css/font-awesome.min.css">

</head>
<body>

<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SmartLibrary</a>
        </div>
        <header class="intro-header" style="background-image: url('/resources/img/library.jpg')">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="${pageContext.request.contextPath}/index.jsp">Home</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/provectusTestTask">To Books</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/jsp/adminPage.jsp">Admin Page</a>
                    </li>
                </ul>
            </div>
        </header>
    </div>
</nav>
<br><br><br><br>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="about-text">
                <div class="section-title">
                    <h4></h4>
                    <h2>Add new <strong>Book</strong></h2>
                    <hr>
                    <div class="clearfix"></div>
                </div>
                <div class="about-list">

                    <form action="${pageContext.request.contextPath}/provectusTestTask/book/admin" method="post">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Book title</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                           placeholder="Book title">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="price">Book price</label>
                                    <input class="form-control" id="price" name="price" placeholder="Book price">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description">Book description</label>
                                <input class="form-control" row="3" id="description" name="description"
                                       placeholder="Description"/>
                            </div>
                        </div>
                        <button type="submit" class="btn tf-btn btn-default">Confirm</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="/resources/img/book.jpg" class="img-responsive">
        </div>
    </div>
</div>
<script type="text/javascript" src="/resources/js/jquery.js"></script>

<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/SmoothScroll.js"></script>
<script type="text/javascript" src="/resources/js/jquery.isotope.js"></script>

<script src="/resources/js/owl.carousel.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script src="/resources/js/small-business.min.js"></script>
</body>
</html>