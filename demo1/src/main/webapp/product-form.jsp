<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/19/2024
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>${product == null ? "New Product" : "Edit Product"}</h2>
<form action="${product == null ? 'insert' : 'update'}" method="post">
    <input type="hidden" name="id" value="${product.id}" />
    <label>Name:</label>
    <input type="text" name="name" value="${product.name}" /><br>
    <label>Description:</label>
    <input type="text" name="description" value="${product.description}" /><br>
    <label>Price:</label>
    <input type="text" name="price" value="${product.price}" /><br>
    <input type="submit" value="Submit" />
</form>
</body>
</html>
