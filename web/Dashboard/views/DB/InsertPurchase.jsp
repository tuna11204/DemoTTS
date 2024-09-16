<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Purchase</title>
</head>
<body>
<h1>Add New Purchase</h1>
<form action="InsertPurchaseServlet" method="post">
    <div>
        <label for="code">Code:</label>
        <input type="text" name="code" required>
    </div>
    <div>
        <label for="category">Category:</label>
        <input type="text" name="category" required>
    </div>
    <div>
        <label for="product_name">Product Name:</label>
        <input type="text" name="product_name" required>
    </div>
    <div>
        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" required>
    </div>
    <div>
        <label for="unit">Unit:</label>
        <input type="text" name="unit" required>
    </div>
    <div>
        <label for="per_unit_price">Price per Unit:</label>
        <input type="number" step="0.01" name="per_unit_price" required>
    </div>
    <div>
        <label for="total_price">Total Price:</label>
        <input type="number" step="0.01" name="total_price" required>
    </div>
    <div>
        <label for="date">Date:</label>
        <input type="date" name="date" required>
    </div>
    <div>
        <button type="submit">Add Purchase</button>
    </div>
</form>

<% if (request.getAttribute("errorMessage") != null) { %>
<div style="color: red;">
    <%= request.getAttribute("errorMessage") %>
</div>
<% } %>
</body>
</html>
<%--<%@page import="com.inventory.dao.UserDao" %>--%>
<%--<jsp:useBean id="u" class="com.inventory.bean.User"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="u"/>--%>
<%--<%--%>
<%--    int i = UserDao.savepurchase(u);--%>
<%--    if (i > 0) {--%>
<%--        response.sendRedirect("../purchase.jsp");--%>
<%--    } else {--%>
<%--        out.println("unable to connect database");--%>
<%--    }--%>


<%--%>--%>