<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Member</title>
</head>
<body>
<h1>Add New Member</h1>
<form action="InsertMemberServlet" method="post">
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
        <button type="submit">Add Member</button>
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
<%--int i=UserDao.saveMember(u);--%>
<%--if(i>0){--%>
<%--response.sendRedirect("../MemberShip.jsp");--%>
<%--}else{--%>
<%--out.println("unable to connect database");--%>
<%--}--%>
<%--%>--%>
