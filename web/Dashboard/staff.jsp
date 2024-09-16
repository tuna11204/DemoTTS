<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<h1>You are not logged in</h1><br/>
<a href="index.jsp">Please Login</a>
<% } else { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Staff Management</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- Thêm các CSS khác cần thiết -->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!-- Header và Sidebar code ở đây -->

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <h1>Staff Management</h1>
        </section>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <form action="StaffServlet" method="post">
                        <input type="hidden" name="action" value="add">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="position">Position:</label>
                            <input type="text" class="form-control" id="position" name="position" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Add Staff</button>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3>Staff List</h3>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="staff" items="${staffList}">
                            <tr>
                                <td>${staff.name}</td>
                                <td>${staff.position}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <!-- Footer code ở đây -->
</div>
<!-- jQuery và Bootstrap JS -->
</body>
</html>
<% } %>
<%--<%--%>
<%--    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {--%>
<%--%>--%>
<%--<h1>You are not logged in</h1><br/>--%>
<%--<a href="index.jsp">Please Login</a>--%>
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
<%--        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">--%>
<%--        <!-- Font Awesome -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">--%>
<%--        <!-- Ionicons -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">--%>
<%--        <!-- Theme style -->--%>
<%--        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">--%>

<%--        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">--%>
<%--        <!-- iCheck -->--%>
<%--        <link rel="stylesheet" href="../plugins/iCheck/flat/blue.css">--%>
<%--        <!-- Morris chart -->--%>
<%--        <link rel="stylesheet" href="../plugins/morris/morris.css">--%>
<%--        <!-- jvectormap -->--%>
<%--        <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">--%>
<%--        <!-- Date Picker -->--%>
<%--        <link rel="stylesheet" href="../plugins/datepicker/datepicker3.css">--%>
<%--        <!-- Daterange picker -->--%>
<%--        <link rel="stylesheet" href="../plugins/daterangepicker/daterangepicker.css">--%>
<%--        <!-- bootstrap wysihtml5 - text editor -->--%>
<%--        <link rel="stylesheet" href="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">--%>
<%--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--%>
<%--     --%>
<%--    </head>--%>
<%--    <body class="hold-transition skin-blue sidebar-mini">--%>
<%--        <div class="wrapper">--%>

<%--            <header class="main-header">--%>
<%--                <!-- Logo -->--%>
<%--                <a href="../main.jsp" class="logo">--%>
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
<%--                                    <img src="../Image/logo.png" class="user-image" alt="User Image">--%>
<%--                                    <span class="hidden-xs"> Optimus Prime</span>--%>
<%--                                </a>--%>
<%--                                <ul class="dropdown-menu">--%>
<%--                                    <!-- User image -->--%>
<%--                                    <li class="user-header">--%>
<%--                                        <img src="../Image/logo.png" class="img-circle" alt="User Image">--%>

<%--                                        <p>--%>
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
<%--                                            <a href="../logout.jsp" class="btn btn-default btn-flat">Sign out</a>--%>
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
<%--                            <img src="../Image/logo.png" class="img-circle" alt="User Image">--%>
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
<%--                                <li class="active"><a href="views/sales.jsp"><i class="fa fa-circle-o"></i> Product Sales</a></li>--%>
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
<%--                                <li><a href="views/purchase.jsp"><i class="fa fa-circle-o"></i> Product Purchase</a></li>--%>
<%--                                <li><a href="views/ProductList.jsp"><i class="fa fa-circle-o"></i> Product List</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>

<%--                        <li class="treeview">--%>
<%--                            <a href="#">--%>
<%--                                <i class="fa fa-user"></i>--%>
<%--                                <span>Membership</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="views/MemberShip.jsp"><i class="fa fa-circle-o"></i> Add New</a></li>--%>
<%--                                <li><a href="views/MemberList.jsp"><i class="fa fa-circle-o"></i> Membership Info</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                    </li><li class="treeview">--%>
<%--                    <a href="#">--%>
<%--                        <i class="fa fa-users"></i>--%>
<%--                        <span>Staff</span>--%>
<%--                        <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                        </span>--%>
<%--                    </a>--%>
<%--                    <ul class="treeview-menu">--%>
<%--                        <li><a href="views/Staff.jsp"><i class="fa fa-circle-o"></i>Details Of Staff</a></li>--%>

<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li class="treeview">--%>
<%--                    <a href="#">--%>
<%--                        <i class="fa fa-users"></i>--%>
<%--                        <span>Supplier</span>--%>
<%--                        <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                        </span>--%>
<%--                    </a>--%>
<%--                    <ul class="treeview-menu">--%>
<%--                        <li><a href="views/Dealership.jsp"><i class="fa fa-circle-o"></i>Details Of Supplier</a></li>--%>

<%--                    </ul>--%>
<%--                </li>--%>
<%--            </ul>--%>



<%--        </section>--%>
<%--        <!-- /.sidebar -->--%>
<%--    </aside>--%>

<%--    <!-- Content Wrapper. Contains page content -->--%>
<%--    <div class="content-wrapper">--%>
<%--        <!-- Content Header (Page header) -->--%>
<%--        <section class="content-header">--%>
<%--            <h1>--%>
<%--                Dashboard--%>
<%--                <small>Control panel</small>--%>
<%--            </h1>--%>
<%--            <ol class="breadcrumb">--%>
<%--                <li><a href="../main.jsp"><i class="fa fa-dashboard"></i> Home</a></li>--%>

<%--            </ol>--%>
<%--        </section>--%>

<%--        <!-- Main content -->--%>
<%--        <section class="content">--%>
<%--            <!-- Small boxes (Stat box) -->--%>
<%--            <div class="row">--%>
<%--                <div class="col-lg-3 col-xs-6">--%>
<%--                    <!-- small box -->--%>
<%--                    <div class="small-box bg-lime">--%>
<%--                        <div class="inner">--%>

<%--                            <h3><b><sup style="font-size: 20px">Details Of Staff</sup></b></h3>--%>

<%--                            <p>Details Of Staff</p>--%>

<%--                        </div>--%>
<%--                        <div class="icon">--%>
<%--                            <i class="ion ion-ios-contact-outline"></i>--%>
<%--                        </div>--%>
<%--                        <a href="views/Staff.jsp" class="small-box-footer">More Info <i class="fa fa-arrow-circle-right"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                --%>

<%--        </section>--%>
<%--        <!-- /.content -->--%>
<%--    </div>--%>
<%--    <!-- /.content-wrapper -->--%>
<%--    <footer class="main-footer">--%>
<%--        <div class="pull-right hidden-xs">--%>

<%--        </div>--%>
<%--        <strong>Copyright &copy; 2016-2017 <a href="#">Optimus Prime</a>.</strong> The Group Of Friends--%>
<%--    </footer>--%>

<%--    <!-- Control Sidebar -->--%>
<%--    <aside class="control-sidebar control-sidebar-dark">--%>
<%--        <!-- Create the tabs -->--%>
<%--        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">--%>
<%--            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>--%>
<%--            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>--%>
<%--        </ul>--%>

<%--    </aside>--%>
<%--    <!-- /.control-sidebar -->--%>
<%--    <!-- Add the sidebar's background. This div must be placed--%>
<%--         immediately after the control sidebar -->--%>
<%--    <div class="control-sidebar-bg"></div>--%>
<%--</div>--%>
<%--<!-- ./wrapper -->--%>

<%--<!-- jQuery 2.2.3 -->--%>
<%--<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
<%--<!-- jQuery UI 1.11.4 -->--%>
<%--<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->--%>
<%--<script>--%>
<%--    $.widget.bridge('uibutton', $.ui.button);--%>
<%--</script>--%>
<%--<!-- Bootstrap 3.3.6 -->--%>
<%--<script src="../bootstrap/js/bootstrap.min.js"></script>--%>
<%--<!-- Morris.js charts -->--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>--%>
<%--<script src="../plugins/morris/morris.min.js"></script>--%>
<%--<!-- Sparkline -->--%>
<%--<script src="../plugins/sparkline/jquery.sparkline.min.js"></script>--%>
<%--<!-- jvectormap -->--%>
<%--<script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>--%>
<%--<script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>--%>
<%--<!-- jQuery Knob Chart -->--%>
<%--<script src="../plugins/knob/jquery.knob.js"></script>--%>
<%--<!-- daterangepicker -->--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
<%--<script src="../plugins/daterangepicker/daterangepicker.js"></script>--%>
<%--<!-- datepicker -->--%>
<%--<script src="../plugins/datepicker/bootstrap-datepicker.js"></script>--%>
<%--<!-- Bootstrap WYSIHTML5 -->--%>
<%--<script src="../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>--%>
<%--<!-- Slimscroll -->--%>
<%--<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>--%>
<%--<!-- FastClick -->--%>
<%--<script src="../plugins/fastclick/fastclick.js"></script>--%>
<%--<!-- AdminLTE App -->--%>
<%--<script src="../dist/js/app.min.js"></script>--%>
<%--<!-- AdminLTE dashboard demo (This is only for demo purposes) -->--%>
<%--<script src="../dist/js/pages/dashboard.js"></script>--%>
<%--<!-- AdminLTE for demo purposes -->--%>
<%--<script src="../dist/js/demo.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%--<% } %>--%>