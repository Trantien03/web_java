<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<form action="ProductController" method="post">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="${product.id}">
    <div>
        <label for="name">Product Name:</label>
        <input type="text" id="name" name="name" value="${product.name}" required>
    </div>
    <div>
        <label for="price">Price:</label>
        <input type="number" id="price" name="price" step="0.01" value="${product.price}" required>
    </div>
    <div>
        <button type="submit">Update Product</button>
    </div>
</form>
</body>
</html>
