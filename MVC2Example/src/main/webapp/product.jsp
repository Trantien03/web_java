<%@ page import="java.util.List" %>
<%@ page import="com.example.mvc2example.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Management</title>
</head>
<body>
<h1>Product List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Action</th>
    </tr>
    <%-- JSP scriptlets: embedding Java code in the HTML page --%>
    <%
        List<Product> products = (List<Product>) request.getAttribute("products");
        if (products != null) {
            for (Product product : products) {
    %>
    <tr>
        <td><%= product.getId() %></td>
        <td><%= product.getName() %></td>
        <td><%= product.getPrice() %></td>
        <td>
            <a href="ProductController?action=delete&id=<%= product.getId() %>">Delete</a>
        </td>
        <td>
            <a href="ProductController?action=update&id=<%= product.getId() %>">Update</a>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<br/>
<form action="ProductController" method="post">
    <input type="hidden" name="action" value="add">
    Name: <input type="text" name="name" required><br><br>
    Price: <input type="number" name="price" step="0.01" required><br><br>
    <input type="submit" value="Add Product">
</form>
</body>
</html>
