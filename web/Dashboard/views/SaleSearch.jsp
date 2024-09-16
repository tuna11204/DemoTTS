<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="yourpackage.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form action="SaleSearchServlet" method="get">
    <input type="text" name="val" placeholder="Enter Product Code" value="${param.val}">
    <button type="submit">Search</button>
</form>

<c:if test="${not empty products}">
    <div class="container">
        <label><h1>Sales</h1></label>
        <table class="table">
            <tr>
                <th>Code</th>
                <th>Category</th>
                <th>Product Name</th>
                <th>Unit</th>
                <th>Per Unit Price</th>
            </tr>
            <c:forEach var="product" items="${products}">
                <tr>
                    <td><c:out value="${product.code}"/></td>
                    <td><c:out value="${product.category}"/></td>
                    <td><c:out value="${product.productName}"/></td>
                    <td><c:out value="${product.unit}"/></td>
                    <td><c:out value="${product.perUnitPrice}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</c:if>
</body>
</html>
<%--<%--%>
<%--    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--%>--%>

<%--<%} else {--%>

<%--%>--%>

<%--<%@ page import="java.sql.*"%>--%>
<%--<html>--%>
<%--    <head>--%>
<%--        <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">--%>
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
<%--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
<%--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
<%--    </head>--%>
<%--    <body>--%>

<%--        <%  --%>
<%--        String s=request.getParameter("val");--%>
<%--        String Code,Category,Product_Name,Unit,P_U_Price;--%>
<%--        int id;--%>
<%--        if(s==null || s.trim().equals("")){--%>
<%--        //out.print("Please enter AccountID");  --%>
<%--        }else{--%>
<%--        //int id=Integer.parseInt(s);--%>
<%--        //out.print(id);  --%>
<%--        try{  --%>
<%--        Class.forName("com.mysql.jdbc.Driver");  --%>
<%--        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","");  --%>
<%--        PreparedStatement ps=con.prepareStatement("select * from purchase where code=?");  --%>
<%--        //ps.setInt(1,id);--%>
<%--        ps.setString(1, s);--%>
<%--        ResultSet rs=ps.executeQuery();  --%>
<%--        while(rs.next()){ --%>
<%--        Code=rs.getString(2);--%>
<%--        Category=rs.getString(4);--%>
<%--        Product_Name=rs.getString(5);--%>
<%--        Unit=rs.getString(8);--%>
<%--        P_U_Price=rs.getString(9);--%>
<%--        %>--%>
<%--        <div class="">--%>
<%--            --%>
<%--            <div class="container">--%>
<%--                <form class="form-inline" action="DB/InsertSale2.jsp">--%>
<%--                    <label><h1>Sales</h1></label>--%>
<%--                    <table>--%>
<%--                        <tr>--%>
<%--                            <td>--%>


<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Code :</label><br>--%>
<%--                                    <input type="text" name="code" value="<% out.print(Code);%>" class="form-control" id="customer id" placeholder="Enter Tag Number">--%>
<%--                                </div><br>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Category :</label><br>--%>
<%--                                    <input type="text" name="category" value="<% out.print(Category);%>" class="form-control" id="customer id" >--%>
<%--                                </div><br>--%>
<%--                            </td>--%>

<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Product Name: </label><br>--%>
<%--                                    <input type="text" name="product_name" value="<% out.print(Product_Name);%>" class="form-control" id="customer id" placeholder="Enter Product Name">--%>
<%--                                </div><br>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Quantity:</label><br>--%>
<%--                                    <input type="text" name="quantity" class="form-control" id="customer id" placeholder="Enter Quantity">--%>
<%--                                </div><br>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Unit:</label><br>--%>
<%--                                    <input type="text" name="unit" value="<% out.print(Unit);%>" class="form-control" id="customer id" >--%>
<%--                                </div><br>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Per Unit Price: </label><br>--%>
<%--                                    <input type="text" name="per_unit_price" value="<% out.print(P_U_Price);%>" class="form-control" id="customer id" placeholder="Enter  per unit price">--%>
<%--                                </div><br>--%>
<%--                            </td>--%>

<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Total Price: </label><br>--%>
<%--                                    <input type="text" name="total_price" class="form-control" id="customer id" placeholder="Enter Total Price">--%>
<%--                                </div><br>--%>
<%--                            </td>--%>
<%--                            <td>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="customer id">Date: </label><br>--%>
<%--                                    <input type="date" name="date" class="form-control">--%>
<%--                                </div>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        <tr>--%>
<%--                            <td>--%>
<%--                                <div class="btn">--%>
<%--                                    <button class="btn btn-vimeo">Add Product</button>--%>
<%--                                </div>--%>

<%--                            </td>--%>
<%--                        </tr>--%>
<%--                        </tr>--%>
<%--                    </table>--%>
<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--     --%>
<%--        --%>
<%--        <% --%>
<%--        }--%>
<%--        con.close();  --%>
<%--        }catch(Exception e){e.printStackTrace();}  --%>
<%--        }  --%>
<%--        %>  --%>

<%--    </body>--%>
<%--</html>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>
