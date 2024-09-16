<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid").equals(""))) {
        response.sendRedirect("index.jsp");
    } else {
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Delete Sale</title>
    <!-- Include CSS and JS files -->
</head>
<body>
<div class="container">

    <h1>Delete Sale</h1>
    <form action="DeleteSaleServlet" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>"/>
        <p>Are you sure you want to delete this sale transaction?</p>
        <button type="submit" class="btn btn-danger">Delete</button>
        <a href="../sales.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<!-- Include JS files -->
</body>
</html>
<% } %>
<%--<%@page import="com.inventory.dao.UserDao"%>--%>
<%--<jsp:useBean id="u" class="com.inventory.bean.User"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="u"/>--%>

<%--<%--%>
<%--UserDao.deleteSale(u);--%>
<%--response.sendRedirect("../sales.jsp");--%>
<%--%>--%>