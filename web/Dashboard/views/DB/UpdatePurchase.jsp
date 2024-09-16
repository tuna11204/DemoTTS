<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Update Purchase</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Update Purchase Information</h1>
    <form action="UpdatePurchaseServlet" method="post">
        <input type="hidden" name="id" value="<%= u.getId() %>"/>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" name="name" class="form-control" value="<%= u.getName() %>" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" class="form-control" value="<%= u.getEmail() %>" required>
        </div>
        <!-- Thêm các trường khác nếu cần -->
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
<%--<%@page import="com.inventory.dao.UserDao"%>--%>
<%--<jsp:useBean id="u" class="com.inventory.bean.User"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="u"/>--%>

<%--<%--%>
<%--int i=UserDao.updatepurchase(u);--%>
<%--response.sendRedirect("../ProductList.jsp");--%>
<%--%>--%>
