<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Book</title>
    <meta charset="utf-8">

    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.3/css/bootstrap-select.min.css" rel="stylesheet">

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
                    <h2>Edit <strong>Book</strong></h2>
                    <hr>
                    <div class="clearfix"></div>
                </div>
                <div class="about-list">
                    <form action="${pageContext.request.contextPath}/provectusTestTask/book/admin/edit" method="post">
                        <input type="hidden" name="id" value="${book.id}"/>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Book title</label>
                                    <input type="text" class="form-control" id="name" name="name"
                                           placeholder="Book title" value="${book.name}"/>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="price">Book price</label>
                                    <input class="form-control" id="price" name="price" placeholder="Book price"
                                           value="${book.price}"/>
                                </div>
                            </div>
                            <div class="form-group">
                                    <label for="description">Book description</label>
                                    <input class="form-control" row="3" id="description" name="description"
                                           placeholder="Description" value="${book.description}"/>
                            </div>
                        </div>
                        <button type=" submit" class="btn tf-btn btn-default">Confirm</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <img src="/resources/img/book.jpg" class="img-responsive">
        </div>
    </div>


    <div class="row">
        <div class="col-md-6">
            <div class="about-text">
                <ul class="about-list">
                    <strong>Authors of this Book</strong>
                    <c:forEach items="${book.authors}" var="author">
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>${author.name} ${author.lastname}</strong> <a
                                href="${pageContext.request.contextPath}/provectusTestTask/book/admin/removeAuthor/${author.id}/${book.id}">Remove
                            from this book</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="col-md-6">
            <div class="about-text">
                <div class="about-list">
                    <strong>Add Authors to this Book</strong>
                    <form action="${pageContext.request.contextPath}/provectusTestTask/book/admin/addAuthor/${book.id}"
                          method="get">
                        <select class="selectpicker" name="authors" multiple>
                            <c:forEach items="${availableAuthors}" var="author">
                                <option value="${author.id}">${author.name} ${author.lastname}</option>
                            </c:forEach>
                        </select>
                        <br><br>
                        <button type="submit" class="btn tf-btn btn-default">Confirm the addition of authors</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-6">
            <div class="about-text">
                <div class="about-list">
                    <strong>Add Genres to this Book</strong>
                    <form action="${pageContext.request.contextPath}/provectusTestTask/book/admin/addGenre/${book.id}"
                          method="get">
                        <select id="mysel" class="selectpicker" name="genres"  multiple>
                            <c:forEach items="${availableGenres}" var="genre">
                                <option value="${genre.id}">${genre.name}</option>
                            </c:forEach>
                        </select>
                        <br><br>
                        <button type="submit" class="btn tf-btn btn-default">Confirm the addition of genres</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="about-text">
                <ul class="about-list">
                    <strong>Genres of this Book</strong>
                    <c:forEach items="${book.genres}" var="genre">
                        <li>
                            <span class="fa fa-dot-circle-o"></span>
                            <strong>${genre.name}</strong> <a
                                href="${pageContext.request.contextPath}/provectusTestTask/book/admin/removeGenre/${genre.id}/${book.id}">Remove
                            from this book</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="/resources/js/jquery.js"></script>

<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/SmoothScroll.js"></script>
<script type="text/javascript" src="/resources/js/jquery.isotope.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.3/js/bootstrap-select.min.js"></script>
<script src="/resources/js/owl.carousel.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script src="/resources/js/small-business.min.js"></script>
</body>
</html>