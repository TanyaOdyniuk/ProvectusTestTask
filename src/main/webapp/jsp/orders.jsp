<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Orders</title>
</head>
<body>
    <table>
        <th>Customer name</th>
        <th>Customer lastname</th>
        <th>Customer address</th>
        <th>Ordered book</th>
        <th>Book count</th>
        <c:forEach items="${orders}" var="order">
            <tr>
                <td>${order.customerFirstname}</td>
                <td>${order.customerLastname}</td>
                <td>${order.address}</td>
                <td>${order.book.name}</td>
                <td>${order.bookCount}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>