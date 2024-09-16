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
    <title>Delete Dealer</title>
    <!-- Include CSS and JS files -->
</head>
<body>
<div class="container">

    <h1>Delete Dealer</h1>
    <form action="DeleteDealerServlet" method="post">
        <input type="hidden" name="id" value="<%= request.getParameter("id") %>"/>
        <p>Are you sure you want to delete this dealer?</p>
        <button type="submit" class="btn btn-danger">Delete</button>
        <a href="../Dealership.jsp" class="btn btn-secondary">Cancel</a>
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
<%--UserDao.deletedealer(u);--%>
<%--response.sendRedirect("../Dealership.jsp");--%>
<%--%>--%>