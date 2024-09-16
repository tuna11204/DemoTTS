<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Dealer</title>
</head>
<body>
<h1>Add New Dealer</h1>
<form action="InsertDealerServlet" method="post">
    <div>
        <label for="name">Name:</label>
        <input type="text" name="name" required>
    </div>
    <div>
        <label for="email">Email:</label>
        <input type="email" name="email" required>
    </div>
    <!-- Thêm các trường khác nếu cần -->
    <div>
        <button type="submit">Add Dealer</button>
    </div>
</form>

<% if (request.getAttribute("errorMessage") != null) { %>
<div style="color: red;">
    <%= request.getAttribute("errorMessage") %>
</div>
<% } %>
</body>
</html>
<%--<%@page import="com.inventory.dao.UserDao"%>--%>
<%--<jsp:useBean id="u" class="com.inventory.bean.User"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="u"/>--%>

<%--<%--%>
<%--int i=UserDao.savedealer(u);--%>
<%--if(i>0){--%>
<%--response.sendRedirect("../Dealership.jsp");--%>
<%--}else{--%>
<%--out.println("unable to connect database");--%>
<%--}--%>
<%--%>--%>