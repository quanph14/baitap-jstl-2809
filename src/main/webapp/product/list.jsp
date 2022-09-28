<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 9/27/2022
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products List</h1>
<p>
    <a href="/products?action=create">Create new product</a>
</p>
<form action="/products" method="post">
    <input name="search"placeholder="Type something to search">
    <input type="hidden" name="action" value="search">
    <button type="submit">Search</button>
    <a href="/products?action=create">Add</a>
</form>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Amount</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getAmount()}</td>
            <td>${product.getPrice()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

</body>
</html>
