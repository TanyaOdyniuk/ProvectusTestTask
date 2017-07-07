<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Books</title>

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

<div class="container center">
    <div class="row">
        <div class="books-info">
            <h2><strong>Choose one and Edit</strong></h2>
            <div class="line"></div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Authors</th>
                    <th>Genres</th>
                    <th>Options</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.name}</td>
                        <td>${book.description}</td>
                        <td>${book.price}</td>
                        <td>
                            <c:forEach items="${book.authors}" var="author">
                                <ul>
                                    <li>${author.name} ${author.lastname}</li>
                                </ul>
                            </c:forEach>
                        </td>

                        <td>
                            <c:forEach items="${book.genres}" var="genre">
                                <ul>
                                    <li>${genre.name}</li>
                                </ul>
                            </c:forEach>
                        </td>
                        <td>
                            <ul>
                                <a href="${pageContext.request.contextPath}/provectusTestTask/book/admin/edit/${book.id}">Edit</a></li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td colspan="2"><a href="${pageContext.request.contextPath}/provectusTestTask/book/admin/new">Add new book</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript" src="/resources/js/jquery.js"></script>
<script src="https://use.fontawesome.com/4e772b2212.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/SmoothScroll.js"></script>
<script type="text/javascript" src="/resources/js/jquery.isotope.js"></script>
<script src="/resources/js/owl.carousel.js"></script>
<script type="text/javascript" src="/resources/js/main.js"></script>
<script src="/resources/js/small-business.min.js"></script>
</body>
</html>