<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <% if (request.getAttribute("errorMessage") != null) { %>
    <div class="alert alert-danger">
        <%= request.getAttribute("errorMessage") %>
    </div>
    <% } %>
    <form action="LoginServlet" method="post">
        <div class="form-group">
            <label for="name">Username:</label>
            <input type="text" class="form-control" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
    </form>
</div>
<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
<%--<%@ page import ="java.sql.*" %>--%>
<%--<%--%>
<%--    String userid = request.getParameter("name");--%>
<%--    String pwd = request.getParameter("password");--%>
<%--    Class.forName("com.mysql.jdbc.Driver");--%>
<%--    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root", "");--%>
<%--    Statement st = con.createStatement();--%>
<%--    ResultSet rs;--%>
<%--    rs = st.executeQuery("select * from staff where staff_id='" + userid + "' and password='" + pwd + "'");--%>
<%--    if (rs.next()) {--%>
<%--        session.setAttribute("userid", userid);--%>
<%--        //out.println("welcome " + userid);--%>
<%--        //out.println("<a href='logout.jsp'>Log out</a>");--%>
<%--        response.sendRedirect("main.jsp?name="+userid);--%>
<%--    } else {--%>
<%--        out.println("Invalid password <a href='index.jsp'>try again</a>");--%>
<%--    }--%>
<%--%>--%>