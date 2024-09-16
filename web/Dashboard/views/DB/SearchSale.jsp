<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Search Sale</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Search Sale</h1>
    <form action="SearchSaleServlet" method="get">
        <div class="form-group">
            <label for="code">Purchase Code:</label>
            <input type="text" name="code" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <c:if test="${not empty user}">
        <h2>Search Results</h2>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
            </tr>
            </tbody>
        </table>
    </c:if>
</div>
</body>
</html>
<%-- <%@page import="com.inventory.dao.UserDao,com.inventory.bean.User"%>--%>
<%--                        <%--%>
<%--                    String code=request.getParameter("code");--%>
<%--                    User u=UserDao.getRecordByPurchaseCode(code);--%>
<%--                        %>--%>
<%--                        --%>
<%--                        <jsp:include page="../sales.jsp" >--%>
<%--                            <jsp:param name="param" value="u" />--%>
<%--                        </jsp:include>--%>