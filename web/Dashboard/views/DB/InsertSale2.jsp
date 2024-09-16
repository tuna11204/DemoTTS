<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert Sale</title>
</head>
<body>
<h1>Add New Sale</h1>
<form action="InsertSale2Servlet" method="post">
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
        <button type="submit">Add Sale</button>
    </div>
</form>

<% if (request.getAttribute("errorMessage") != null) { %>
<div style="color: red;">
    <%= request.getAttribute("errorMessage") %>
</div>
<% } %>
</body>
</html>
<%--<%@ page import="java.io.*,java.util.*,java.sql.*"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>--%>
<%-- --%>
<%--<html>--%>
<%--    <head>--%>
<%--        <title> Operation</title>--%>
<%--    </head>--%>
<%--    <body>--%>
<%--        --%>
<%--        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"--%>
<%--                           url="jdbc:mysql://localhost/inventory"--%>
<%--                           user="root"  password=""/>--%>
<%-- --%>
<%-- --%>
<%--        <sql:update dataSource="${dbsource}" var="result">--%>
<%--            INSERT INTO sale(code, category,product_name,quantity,unit,per_unit_price,total_price,date) VALUES (?,?,?,?,?,?,?,?);--%>
<%--            <sql:param value="${param.code}" />--%>
<%--            <sql:param value="${param.category}" />--%>
<%--            <sql:param value="${param.product_name}" />--%>
<%--            <sql:param value="${param.quantity}" />--%>
<%--            <sql:param value="${param.unit}" />--%>
<%--            <sql:param value="${param.per_unit_price}" />--%>
<%--            <sql:param value="${param.total_price}" />--%>
<%--            <sql:param value="${param.date}" />--%>
<%--        </sql:update>--%>
<%--        <c:if test="${result>=1}">--%>
<%--            <font size="5" color='green'> Congratulations ! Data inserted--%>
<%--            successfully.</font>--%>
<%-- --%>
<%--            <c:redirect url="../sales.jsp" >--%>
<%--                <c:param name="susMsg" value="Congratulations ! Data inserted--%>
<%--            successfully." />--%>
<%--            </c:redirect>--%>
<%--        </c:if> --%>
<%-- --%>
<%-- --%>
<%--    </body>--%>
<%--</html>--%>