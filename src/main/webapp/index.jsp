<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>

    <meta charset="utf-8">

    <title>Smart Library</title>
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <link href="resources/css/small-business.css" rel="stylesheet">

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900' rel='stylesheet' type='text/css'>

    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

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
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="${pageContext.request.contextPath}">Home</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/provectusTestTask">To Books</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/jsp/adminPage.jsp">Admin Page</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="intro-header" style="background-image: url('resources/img/libraryIndex.jpg')">
    <div class="container overlay">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Smart Library</h1>
                    <hr class="small">
                    <span class="subheading">Now you can read all the books<br>of the world</span>
                </div>
            </div>
        </div>
    </div>
</header>

<script src="resources/js/jquery.js"></script>

<script src="resources/js/bootstrap.min.js"></script>

<script src="resources/js/small-business.min.js"></script>

<script src="resources/js/SmoothScroll.js"></script>

</body>
</html>
