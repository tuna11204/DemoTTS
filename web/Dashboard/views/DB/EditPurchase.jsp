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
    <title>Inventory System</title>
    <!-- Include CSS and JS files -->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Header and Sidebar code here -->

    <div class="content-wrapper">
        <section class="content">
            <main>
                <div class="panel panel-primary">
                    <div class="container">

                        <%@page import="com.inventory.dao.UserDao,com.inventory.bean.Purchase"%>
                        <%
                            String id = request.getParameter("id");
                            Purchase u = UserDao.getRecordByPurchaseId(Integer.parseInt(id));
                        %>

                        <form action="EditPurchaseServlet" method="post">
                            <input type="hidden" name="id" value="<%= u.getId() %>"/>
                            <label><h1>Purchase Details</h1></label>
                            <table>
                                <tr>
                                    <td>
                                        <div class="form-group">
                                            <label for="customer id">Category: </label><br>
                                            <input type="text" class="form-control" name="category" value="<%= u.getCategory() %>" placeholder="">
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <label for="category">Supplier Name:</label><br>
                                            <select class="form-control" name="dealer_name">
                                                <option><%= u.getDealer_name() %></option>
                                                <c:forEach var="supplier" items="${list}">
                                                    <option>${supplier.dealer_name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <label for="">Product Code</label><br>
                                            <input type="text" class="form-control" name="code" value="<%= u.getCode() %>" placeholder="">
                                        </div>
                                    </td>
                                </tr>
                                <!-- Các trường khác -->
                                <tr>
                                    <td>
                                        <div class="btn">
                                            <button class="btn btn-primary">Update</button>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </main>
        </section>
    </div>
</div>

<!-- Include JS files -->
</body>
</html>
<% } %>
<%--<%--%>
<%--    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {--%>
<%--        response.sendRedirect("index.jsp");--%>
<%--%>--%>

<%--<%} else {--%>

<%--%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--    <head>--%>
<%--        <meta charset="utf-8">--%>
<%--        <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--        <title>Inventory System</title>--%>
<%--        <!-- Tell the browser to be responsive to screen width -->--%>
<%--        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">--%>
<%--        <!-- Bootstrap 3.3.6 -->--%>
<%--        <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">--%>
<%--        <!-- Font Awesome -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">--%>
<%--        <!-- Ionicons -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">--%>
<%--        <!-- Theme style -->--%>
<%--        <link rel="stylesheet" href="../../../dist/css/AdminLTE.min.css">--%>
<%--       --%>
<%--        <link rel="stylesheet" href="../../../dist/css/skins/_all-skins.min.css">--%>
<%--        <!-- iCheck -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/iCheck/flat/blue.css">--%>
<%--        <!-- Morris chart -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/morris/morris.css">--%>
<%--        <!-- jvectormap -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">--%>
<%--        <!-- Date Picker -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/datepicker/datepicker3.css">--%>
<%--        <!-- Daterange picker -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/daterangepicker/daterangepicker.css">--%>
<%--        <!-- bootstrap wysihtml5 - text editor -->--%>
<%--        <link rel="stylesheet" href="../../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">--%>
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
<%--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>

<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>--%>
<%--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>


<%--        <link rel="stylesheet" href="style.css" type="text/css">--%>

<%--    </head>--%>
<%--    <body class="hold-transition skin-blue sidebar-mini">--%>
<%--        <div class="wrapper">--%>

<%--            <header class="main-header">--%>
<%--                <!-- Logo -->--%>
<%--                <a href="../../../index.jsp" class="logo">--%>
<%--                    <!-- mini logo for sidebar mini 50x50 pixels -->--%>
<%--                    <span class="logo-mini"><b>A</b>PL</span>--%>
<%--                    <!-- logo for regular state and mobile devices -->--%>
<%--                    <span class="logo-lg"><b>Admin</b>Panel</span>--%>
<%--                </a>--%>
<%--                <!-- Header Navbar: style can be found in header.less -->--%>
<%--                <nav class="navbar navbar-static-top">--%>
<%--                    <!-- Sidebar toggle button-->--%>
<%--                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">--%>
<%--                        <span class="sr-only">Toggle navigation</span>--%>
<%--                    </a>--%>

<%--                    <div class="navbar-custom-menu">--%>
<%--                        <ul class="nav navbar-nav">--%>
<%--                            <!-- Messages: style can be found in dropdown.less-->--%>
<%--                            <li class="dropdown messages-menu">--%>
<%--                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                                </a> --%>
<%--                            </li>--%>
<%--                            <!-- Notifications: style can be found in dropdown.less -->--%>
<%--                            <li class="dropdown notifications-menu">--%>
<%--                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                                </a>--%>

<%--                            </li>--%>
<%--                            <!-- Tasks: style can be found in dropdown.less -->--%>

<%--                            <!-- User Account: style can be found in dropdown.less -->--%>
<%--                            <li class="dropdown user user-menu">--%>
<%--                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
<%--                                    <img src="../../../Image/logo.png" class="user-image" alt="User Image">--%>
<%--                                    <span class="hidden-xs"> Optimus Prime</span>--%>
<%--                                </a>--%>
<%--                                <ul class="dropdown-menu">--%>
<%--                                    <!-- User image -->--%>
<%--                                    <li class="user-header">--%>
<%--                                        <img src="../../../Image/logo.png" class="img-circle" alt="User Image">--%>

<%--                                        <p>--%>
<%--                                            <i style="font-size: 18px"><%=session.getAttribute("userid")%></i><br>--%>
<%--                                            Optimus Prime - Web Developer--%>
<%--                                            <small>Member since 2016</small>--%>
<%--                                        </p>--%>
<%--                                    </li>--%>

<%--                                    <!-- Menu Footer-->--%>
<%--                                    <li class="user-footer">--%>
<%--                                        <div class="pull-left">--%>
<%--                                            <a href="#" class="btn btn-default btn-flat">Profile</a>--%>
<%--                                        </div>--%>
<%--                                        <div class="pull-right">--%>
<%--                                            <a href="../../../logout.jsp" class="btn btn-default btn-flat">Sign out</a>--%>
<%--                                        </div>--%>
<%--                                    </li>--%>
<%--                                </ul>--%>
<%--                            </li>--%>
<%--                            <!-- Control Sidebar Toggle Button -->--%>

<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </nav>--%>
<%--            </header>--%>
<%--            <!-- Left side column. contains the logo and sidebar -->--%>
<%--            <aside class="main-sidebar">--%>
<%--                <!-- sidebar: style can be found in sidebar.less -->--%>
<%--                <section class="sidebar">--%>
<%--                    <!-- Sidebar user panel -->--%>
<%--                    <div class="user-panel">--%>
<%--                        <div class="pull-left image">--%>
<%--                            <img src="../../../Image/logo.png" class="img-circle" alt="User Image">--%>
<%--                        </div>--%>
<%--                        <div class="pull-left info">--%>
<%--                            <p>Optimus Prime</p>--%>

<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- search form -->--%>
<%--                    <form action="#" method="get" class="sidebar-form">--%>
<%--                        <div class="input-group">--%>
<%--                            <input type="text" name="q" class="form-control" placeholder="Search...">--%>
<%--                            <span class="input-group-btn">--%>
<%--                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>--%>
<%--                                </button>--%>
<%--                            </span>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                    <!-- /.search form -->--%>
<%--                    <!-- sidebar menu: : style can be found in sidebar.less -->--%>
<%--                    <ul class="sidebar-menu">--%>
<%--                        <li class="header">MAIN NAVIGATION</li>--%>
<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-shopping-basket"></i> <span>Sales</span>--%>
<%--                                <span class="pull-right-container">--%>
<%--                                    <i class="fa fa-angle-left pull-right"></i>--%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li class="active"><a href="sales.jsp"><i class="fa fa-circle-o"></i> Product Sales</a></li>--%>
<%--                                <li><a href="#"><i class="fa fa-circle-o"></i> History</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-shopping-cart"></i>--%>
<%--                                <span>Purchase</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="purchase.jsp"><i class="fa fa-circle-o"></i> Product Purchase</a></li>--%>
<%--                                <li><a href="ProductList.jsp"><i class="fa fa-circle-o"></i> Product List</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>

<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-user"></i>--%>
<%--                                <span>Customer</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="customer_info.jsp"><i class="fa fa-circle-o"></i> Add New</a></li>--%>
<%--                                <li><a href="CustomerLists.jsp"><i class="fa fa-circle-o"></i> Membership Info</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-users"></i>--%>
<%--                                <span>User</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="user.jsp"><i class="fa fa-circle-o"></i> Add User</a></li>--%>

<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-users"></i>--%>
<%--                                <span>Dealership</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="Dealership.jsp"><i class="fa fa-circle-o"></i> Add Dealer</a></li>--%>

<%--                            </ul>--%>
<%--                        </li>--%>
<%--                    </ul>--%>

<%--                </section>--%>
<%--                <!-- /.sidebar -->--%>
<%--            </aside>--%>

<%--            <!-- Content Wrapper. Contains page content -->--%>
<%--            <div class="content-wrapper">--%>
<%--                <!-- Content Header (Page header) -->--%>
<%--                <section class="content-header">--%>
<%--                    <h1>--%>
<%--                        Dashboard--%>
<%--                        <small>Control panel</small>--%>
<%--                    </h1>--%>
<%--                    <ol class="breadcrumb">--%>
<%--                        <li><a href="../../../index.jsp"><i class="fa fa-dashboard"></i>Home</a></li>--%>

<%--                    </ol>--%>
<%--                </section>--%>

<%--                <!-- Main content -->--%>
<%--                <section class="content">--%>
<%--                    <!-- Small boxes (Stat box) -->--%>


<%--                    <main>--%>
<%--                        <div class="panel panel-primary">--%>
<%--                            <div class="container">--%>

<%--                                <%@page import="com.inventory.dao.UserDao,com.inventory.bean.User"%>--%>
<%--                                <%--%>
<%--                            String id=request.getParameter("id");--%>
<%--                            User u=UserDao.getRecordByPurchaseId(Integer.parseInt(id));--%>
<%--                                %>--%>

<%--                                <form class="" action="UpdatePurchase.jsp">--%>
<%--                                    <input type="hidden" name="id" value="<%=u.getId() %>"/>--%>
<%--                                    <label><h1>Purchase Details</h1></label>--%>
<%--                                    <table>--%>
<%--                                        --%>
<%--                                        <tr>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="customer id">Category: </label><br>--%>
<%--                                                    <input type="text" class="form-control" name="category" value="<%= u.getCategory()%>" placeholder="">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                            <%@page import="java.sql.*"%>--%>
<%--        <%@page import="com.inventory.dao.UserDao, com.inventory.bean.*, java.util.*"%>--%>
<%--        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--     --%>
<%--<%--%>
<%--List<User> list=UserDao.getAllRecords();--%>
<%--request.setAttribute("list",list);--%>
<%--%>--%>
<%--                                            <div class="form-group">--%>
<%--                                                <label for="category">Supplier Name:</label><br>--%>
<%--                                                <select class="form-control" id="category" NAME="dealer_name">--%>
<%--                                                    <option><%= u.getDealer_name()%></option>--%>
<%--                                                    <c:forEach var="u" items="${list}">--%>
<%--                                                        --%>
<%--                                                    <option>${u.dealer_name}</option>--%>
<%--                                                    --%>
<%--                                                    </c:forEach>--%>
<%--                                                </select>--%>
<%--                                            </div>--%>
<%--                                        </td>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Product Code</label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getCode()%>" name="code"  placeholder="Enter Branch">--%>
<%--                                                </div>--%>

<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                       --%>
<%--                                        <tr>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="customer id">Product Name:</label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getProduct_name()%>" name="product_name"  placeholder="Enter Quantity">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Company Name</label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getCompany_name()%>" name="company_name" placeholder="Enter Quantity">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Quantity </label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getQuantity()%>" name="quantity" id="customer id" placeholder="">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        --%>
<%--                                        <tr>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Unit</label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getUnit()%>" name="unit" placeholder="Enter date">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Per-Unit_price</label><br>--%>
<%--                                                    <input type="text" class="form-control" value="<%= u.getPer_unit_price()%>" name="per_unit_price" placeholder="Enter date">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                        --%>
<%--                                         <tr>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Product-Expire-Date</label><br>--%>
<%--                                                    <input type="date" class="form-control" value="<%=u.getProduct_exp_date()%>" name="product_exp_date" placeholder="Enter date">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                            <td>--%>
<%--                                                <div class="form-group">--%>
<%--                                                    <label for="">Purchase Date</label><br>--%>
<%--                                                    <input type="date" class="form-control" value="<%=u.getPurchase_date()%>" name="purchase_date" placeholder="Enter date">--%>
<%--                                                </div>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>
<%--                                       --%>

<%--                                        <tr>--%>
<%--                                            <td>--%>
<%--                                                <div class="btn">--%>
<%--                                                    <button class="btn btn-primary">Update</button>--%>
<%--                                                </div>--%>

<%--                                            </td>--%>
<%--                                        </tr>--%>

<%--                                    </table>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>



<%--                        &nbsp; <!--end of 1st part -->--%>
<%--                        <br>--%>
<%--                        <br>--%>





<%--                    </main>--%>

<%--                    <footer></footer>&nbsp;--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>

<%--                    <!-- ./col -->--%>

<%--                </section>--%>
<%--                <!-- /.content -->--%>
<%--            </div>--%>
<%--            <!-- /.content-wrapper -->--%>
<%--            <footer class="main-footer">--%>
<%--                <div class="pull-right hidden-xs">--%>

<%--                </div>--%>
<%--                <strong>Copyright &copy; 2016-2017 <a href="#">Optimus Prime</a>.</strong> The Group Of Friends--%>
<%--            </footer>--%>

<%--            <!-- Control Sidebar -->--%>
<%--            <aside class="control-sidebar control-sidebar-dark">--%>
<%--                <!-- Create the tabs -->--%>
<%--                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">--%>
<%--                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>--%>
<%--                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>--%>
<%--                </ul>--%>

<%--            </aside>--%>
<%--            <!-- /.control-sidebar -->--%>
<%--            <!-- Add the sidebar's background. This div must be placed--%>
<%--                 immediately after the control sidebar -->--%>
<%--            <div class="control-sidebar-bg"></div>--%>
<%--        </div>--%>


<%--        <!-- jQuery 2.2.3 -->--%>
<%--        <script src="../../../plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
<%--        <!-- jQuery UI 1.11.4 -->--%>
<%--        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->--%>
<%--        <script>--%>
<%--            $.widget.bridge('uibutton', $.ui.button);--%>
<%--        </script>--%>
<%--        <!-- Bootstrap 3.3.6 -->--%>
<%--        <script src="../../../bootstrap/js/bootstrap.min.js"></script>--%>
<%--        <!-- Morris.js charts -->--%>
<%--        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>--%>
<%--        <script src="../../../plugins/morris/morris.min.js"></script>--%>
<%--        <!-- Sparkline -->--%>
<%--        <script src="../../../plugins/sparkline/jquery.sparkline.min.js"></script>--%>
<%--        <!-- jvectormap -->--%>
<%--        <script src="../../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>--%>
<%--        <script src="../../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>--%>
<%--        <!-- jQuery Knob Chart -->--%>
<%--        <script src="../../../plugins/knob/jquery.knob.js"></script>--%>
<%--        <!-- daterangepicker -->--%>
<%--        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
<%--        <script src="../../../plugins/daterangepicker/daterangepicker.js"></script>--%>
<%--        <!-- datepicker -->--%>
<%--        <script src="../../../plugins/datepicker/bootstrap-datepicker.js"></script>--%>
<%--        <!-- Bootstrap WYSIHTML5 -->--%>
<%--        <script src="../../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>--%>
<%--        <!-- Slimscroll -->--%>
<%--        <script src="../../../plugins/slimScroll/jquery.slimscroll.min.js"></script>--%>
<%--        <!-- FastClick -->--%>
<%--        <script src="../../../plugins/fastclick/fastclick.js"></script>--%>
<%--        <!-- AdminLTE App -->--%>
<%--        <script src="../../../dist/js/app.min.js"></script>--%>
<%--        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->--%>
<%--        <script src="../../../dist/js/pages/dashboard.js"></script>--%>
<%--        <!-- AdminLTE for demo purposes -->--%>
<%--        <script src="../../../dist/js/demo.js"></script>--%>
<%--    </body>--%>
<%--</html>--%>
<%--<% } %>--%>

