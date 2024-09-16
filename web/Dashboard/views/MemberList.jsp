<%@ page import="java.lang.reflect.Member" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("userid") == null) {
%>
<h1>You are not logged in</h1><br/>
<a href="index.jsp">Please Login</a>
<% } else {
    List<Member> members = (List<Member>) request.getAttribute("members");
%>
<!DOCTYPE html>
<html>
<head>
    <title> Member List</title>
    <!-- Các link CSS -->
</head>
<body>
<h1>Member List</h1>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Email</th>
    </tr>
    </thead>
    <tbody>
    <% for (Member member : members) { %>
    <tr>
        <td><%= member.getName() %></td>
        <td><%= member.getEmail() %></td>
    </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>
<%
    }
%>
<%--<%--%>
<%--    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {--%>
<%--        response.sendRedirect("index.jsp");--%>
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
<%--        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">--%>
<%--        <!-- Font Awesome -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">--%>
<%--        <!-- Ionicons -->--%>
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">--%>
<%--        <!-- Theme style -->--%>
<%--        <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">--%>
<%--        --%>
<%--        <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">--%>
<%--        <!-- iCheck -->--%>
<%--        <link rel="stylesheet" href="../../plugins/iCheck/flat/blue.css">--%>
<%--        <!-- Morris chart -->--%>
<%--        <link rel="stylesheet" href="../../plugins/morris/morris.css">--%>
<%--        <!-- jvectormap -->--%>
<%--        <link rel="stylesheet" href="../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">--%>
<%--        <!-- Date Picker -->--%>
<%--        <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">--%>
<%--        <!-- Daterange picker -->--%>
<%--        <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css">--%>
<%--        <!-- bootstrap wysihtml5 - text editor -->--%>
<%--        <link rel="stylesheet" href="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">--%>
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
<%--                <a href="../../main.jsp" class="logo">--%>
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
<%--                                    <img src="../../Image/logo.png" class="user-image" alt="User Image">--%>
<%--                                    <span class="hidden-xs"> Optimus Prime</span>--%>
<%--                                </a>--%>
<%--                                <ul class="dropdown-menu">--%>
<%--                                    <!-- User image -->--%>
<%--                                    <li class="user-header">--%>
<%--                                        <img src="../../Image/logo.png" class="img-circle" alt="User Image">--%>

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
<%--                                                                                        <a href="logout.jsp" class="btn btn-default btn-flat">Sign out</a>--%>

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
<%--                            <img src="../../Image/logo.png" class="img-circle" alt="User Image">--%>
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
<%--                                <span>Membership</span>--%>
<%--                                <i class="fa fa-angle-left pull-right"></i>                                                       --%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                            <ul class="treeview-menu">--%>
<%--                                <li><a href="MemberShip.jsp"><i class="fa fa-circle-o"></i> Add New</a></li>--%>
<%--                                <li><a href="MemberList.jsp"><i class="fa fa-circle-o"></i> Membership Info</a></li>--%>
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
<%--                        <li><a href="Staff.jsp"><i class="fa fa-circle-o"></i>Details Of Staff</a></li>--%>

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
<%--                        <li><a href="Dealership.jsp"><i class="fa fa-circle-o"></i>Details Of Supplier</a></li>--%>

<%--                    </ul>--%>
<%--                </li>--%>
<%--            </ul>--%>

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
<%--                        <li><a href="../../main.jsp"><i class="fa fa-dashboard"></i>Home</a></li>--%>

<%--                    </ol>--%>
<%--                </section>--%>

<%--                <!-- Main content -->--%>
<%--                <section class="content">--%>
<%--                    <!-- Small boxes (Stat box) -->--%>


<%--                    <main>--%>


<%--                        <%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>--%>
<%--                        <%@ page import="java.sql.PreparedStatement"  %>--%>
<%--                        <%@ page import="java.sql.ResultSet" %>--%>
<%--                        <%@ page import="java.sql.Connection" %>--%>
<%--                        <%@ page import="java.sql.DriverManager" %>--%>
<%--                        <%!--%>
<%--                        public int nullIntconv(String str)--%>
<%--                        {   --%>
<%--                            int conv=0;--%>
<%--                            if(str==null)--%>
<%--                            {--%>
<%--                                str="0";--%>
<%--                            }--%>
<%--                            else if((str.trim()).equals("null"))--%>
<%--                            {--%>
<%--                                str="0";--%>
<%--                            }--%>
<%--                            else if(str.equals(""))--%>
<%--                            {--%>
<%--                                str="0";--%>
<%--                            }--%>
<%--                            try{--%>
<%--                                conv=Integer.parseInt(str);--%>
<%--                            }--%>
<%--                            catch(Exception e)--%>
<%--                            {--%>
<%--                            }--%>
<%--                            return conv;--%>
<%--                        }--%>
<%--                        %>--%>
<%--                        <%--%>
<%-- --%>
<%--                            Connection conn = null;--%>
<%--                            Class.forName("com.mysql.jdbc.Driver").newInstance();--%>
<%--                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root", "");--%>
<%-- --%>
<%--                            ResultSet rsPagination = null;--%>
<%--                            ResultSet rsRowCnt = null;--%>
<%--     --%>
<%--                            PreparedStatement psPagination=null;--%>
<%--                            PreparedStatement psRowCnt=null;--%>
<%--     --%>
<%--                            int iShowRows=10;  // Number of records show on per page--%>
<%--                            int iTotalSearchRecords=10;  // Number of pages index shown--%>
<%--     --%>
<%--                            int iTotalRows=nullIntconv(request.getParameter("iTotalRows"));--%>
<%--                            int iTotalPages=nullIntconv(request.getParameter("iTotalPages"));--%>
<%--                            int iPageNo=nullIntconv(request.getParameter("iPageNo"));--%>
<%--                            int cPageNo=nullIntconv(request.getParameter("cPageNo"));--%>
<%--     --%>
<%--                            int iStartResultNo=0;--%>
<%--                            int iEndResultNo=0;--%>
<%--     --%>
<%--                            if(iPageNo==0)--%>
<%--                            {--%>
<%--                                iPageNo=0;--%>
<%--                            }--%>
<%--                            else{--%>
<%--                                iPageNo=Math.abs((iPageNo-1)*iShowRows);--%>
<%--                            }--%>
<%--     --%>
<%-- --%>
<%--     --%>
<%--                            String sqlPagination="SELECT SQL_CALC_FOUND_ROWS * FROM membership limit "+iPageNo+","+iShowRows+"";--%>
<%-- --%>
<%--                            psPagination=conn.prepareStatement(sqlPagination);--%>
<%--                            rsPagination=psPagination.executeQuery();--%>
<%--     --%>
<%--                            //// this will count total number of rows--%>
<%--                             String sqlRowCnt="SELECT FOUND_ROWS() as cnt";--%>
<%--                             psRowCnt=conn.prepareStatement(sqlRowCnt);--%>
<%--                             rsRowCnt=psRowCnt.executeQuery();--%>
<%--      --%>
<%--                             if(rsRowCnt.next())--%>
<%--                              {--%>
<%--                                 iTotalRows=rsRowCnt.getInt("cnt");--%>
<%--         --%>
<%--                              }--%>
<%--                        %>--%>
<%--                        <div class="panel panel-primary" style="overflow: auto">--%>
<%--                            <div class="container">--%>

<%--                                <h2>Membership Details</h2>--%>

<%--                                <table class="table table-hover" style="height: 300px; width: 600px;">--%>

<%--                                    <thead>--%>
<%--                                        <tr>--%>
<%--                                            <th>Sl No. </th>--%>
<%--                                            <th>Member ID</th>--%>
<%--                                            <th>Name</th>--%>
<%--                                            <th>Gender</th>--%>
<%--                                            <th>Pass.</th>--%>
<%--                                            <th>Email</th>--%>
<%--                                            <th>Cell</th>--%>
<%--                                            <th>NID</th>--%>
<%--                                            <th>Present Adds.</th>--%>
<%--                                            <th>Permanent Adds.</th>--%>
<%--                                            <th>Payment(TK)</th>--%>
<%--                                            <th>Category</th>--%>
<%--                                            <th>Date</th>--%>
<%--                                            <th>Action</th>--%>
<%--                                        </tr>--%>
<%--                                    </thead>--%>
<%--                                    <tbody>--%>

<%--                                        <%--%>
<%--                                            int a=1;--%>
<%--  while(rsPagination.next())--%>
<%--  {--%>
<%--    --%>
<%--                                        %>--%>
<%--                                        <tr>--%>
<%--                                            <td><% out.print(a++); %></td>--%>
<%--                                            <td><%=rsPagination.getString("member_id")%></td>--%>
<%--                                            <td><%=rsPagination.getString("name")%></td>--%>
<%--                                            <td><%=rsPagination.getString("gender")%></td>--%>
<%--                                            <td><%=rsPagination.getString("password")%></td>--%>
<%--                                            <td><%=rsPagination.getString("email")%></td>--%>
<%--                                            <td><%=rsPagination.getString("mobile_no")%></td>--%>
<%--                                            <td><%=rsPagination.getString("nid")%></td>--%>
<%--                                            <td><%=rsPagination.getString("pre_address")%></td>--%>
<%--                                            <td><%=rsPagination.getString("per_address")%></td>--%>
<%--                                            <td><%=rsPagination.getString("payment")%></td>--%>
<%--                                            <td><%=rsPagination.getString("category")%></td>--%>
<%--                                            <td><%=rsPagination.getString("date")%></td>--%>
<%--                                            <td>--%>
<%--                                                <a href="DB/EditMember.jsp?id=<%=rsPagination.getInt("id")%>" class="btn btn-success btn-sm btn-icon icon-left" role="button">--%>
<%--                                                    <i class="entypo-pencil"></i>--%>
<%--                                                    Edit--%>
<%--                                                </a>--%>

<%--                                                <a href="DB/DelMember.jsp?id=<%=rsPagination.getInt("id")%>"  class="btn btn-danger btn-sm btn-icon icon-left" role="button">--%>
<%--                                                    <i class="entypo-cancel"></i>--%>
<%--                                                    Delete--%>
<%--                                                </a>--%>
<%--                                            </td>--%>
<%--                                        </tr>--%>



<%--                                        <tr>--%>

<%--                                            <% --%>
<%--         }--%>
<%--                                            %>--%>
<%--                                            <%--%>
<%--                                              //// calculate next record start record  and end record --%>
<%--                                                    try{--%>
<%--                                                        if(iTotalRows<(iPageNo+iShowRows))--%>
<%--                                                        {--%>
<%--                                                            iEndResultNo=iTotalRows;--%>
<%--                                                        }--%>
<%--                                                        else--%>
<%--                                                        {--%>
<%--                                                            iEndResultNo=(iPageNo+iShowRows);--%>
<%--                                                        }--%>
<%--            --%>
<%--                                                        iStartResultNo=(iPageNo+1);--%>
<%--                                                        iTotalPages=((int)(Math.ceil((double)iTotalRows/iShowRows)));--%>
<%--         --%>
<%--                                                    }--%>
<%--                                                    catch(Exception e)--%>
<%--                                                    {--%>
<%--                                                        e.printStackTrace();--%>
<%--                                                    }--%>
<%--                                            %>--%>
<%--                                    <div class="container">--%>
<%--                                        <ul class="pagination">--%>

<%--                                            <%--%>
<%--                                                    //// index of pages --%>
<%--         --%>
<%--                                                    int i=0;--%>
<%--                                                    int cPage=0;--%>
<%--                                                    if(iTotalRows!=0)--%>
<%--                                                    {--%>
<%--                                                    cPage=((int)(Math.ceil((double)iEndResultNo/(iTotalSearchRecords*iShowRows))));--%>
<%--         --%>
<%--                                                    int prePageNo=(cPage*iTotalSearchRecords)-((iTotalSearchRecords-1)+iTotalSearchRecords);--%>
<%--                                                    if((cPage*iTotalSearchRecords)-(iTotalSearchRecords)>0)--%>
<%--                                                    {--%>
<%--                                            %>--%>
<%--                                            <li> <a href="MemberList.jsp?iPageNo=<%=prePageNo%>&cPageNo=<%=prePageNo%>"> << Previous</a></li>--%>
<%--                                                <%--%>
<%--                                               }--%>
<%--         --%>
<%--                                               for(i=((cPage*iTotalSearchRecords)-(iTotalSearchRecords-1));i<=(cPage*iTotalSearchRecords);i++)--%>
<%--                                               {--%>
<%--                                                 if(i==((iPageNo/iShowRows)+1))--%>
<%--                                                 {--%>
<%--                                                %>--%>
<%--                                            <li> <a href="MemberList.jsp?iPageNo=<%=i%>"><b><%=i%></b></a></li>--%>
<%--                                                        <%--%>
<%--                                                        }--%>
<%--                                                        else if(i<=iTotalPages)--%>
<%--                                                        {--%>
<%--                                                        %>--%>
<%--                                            <li> <a href="MemberList.jsp?iPageNo=<%=i%>"><%=i%></a></li>--%>
<%--                                                <% --%>
<%--                                                }--%>
<%--                                              }--%>
<%--                                              if(iTotalPages>iTotalSearchRecords && i<iTotalPages)--%>
<%--                                              {--%>
<%--                                                %>--%>
<%--                                            <li>  <a href="MemberList.jsp?iPageNo=<%=i%>&cPageNo=<%=i%>"> >> Next</a> </li>--%>
<%--                                                <%--%>
<%--                                               }--%>
<%--                                               }--%>
<%--                                                %>--%>
<%--                                            <div class="container-fluid">--%>
<%--                                                <div class="row">--%>
<%--                                                    <div class="col-sm-8" style="background-color:lavender;"><b>Rows <%=iStartResultNo%> - <%=iEndResultNo%>   Total Result  <%=iTotalRows%> </b></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                    </tr>--%>
<%--                                    <tr>--%>

<%--                                    <div class="form-group">--%>
<%--                                        <input type="text" class="form-inline" id="search" placeholder="Search...">--%>
<%--                                    </div>--%>

<%--                                    </tr>--%>
<%--                                    </tbody>--%>
<%--                                </table>--%>
<%--                            </div>--%>
<%--                        </div>--%>




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
<%--        <script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>--%>
<%--        <!-- jQuery UI 1.11.4 -->--%>
<%--        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>--%>
<%--        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->--%>
<%--        <script>--%>
<%--            $.widget.bridge('uibutton', $.ui.button);--%>
<%--        </script>--%>
<%--        <!-- Bootstrap 3.3.6 -->--%>
<%--        <script src="../../bootstrap/js/bootstrap.min.js"></script>--%>
<%--        <!-- Morris.js charts -->--%>
<%--        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>--%>
<%--        <script src="../../plugins/morris/morris.min.js"></script>--%>
<%--        <!-- Sparkline -->--%>
<%--        <script src="../../plugins/sparkline/jquery.sparkline.min.js"></script>--%>
<%--        <!-- jvectormap -->--%>
<%--        <script src="../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>--%>
<%--        <script src="../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>--%>
<%--        <!-- jQuery Knob Chart -->--%>
<%--        <script src="../../plugins/knob/jquery.knob.js"></script>--%>
<%--        <!-- daterangepicker -->--%>
<%--        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>--%>
<%--        <script src="../../plugins/daterangepicker/daterangepicker.js"></script>--%>
<%--        <!-- datepicker -->--%>
<%--        <script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>--%>
<%--        <!-- Bootstrap WYSIHTML5 -->--%>
<%--        <script src="../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>--%>
<%--        <!-- Slimscroll -->--%>
<%--        <script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>--%>
<%--        <!-- FastClick -->--%>
<%--        <script src="../../plugins/fastclick/fastclick.js"></script>--%>
<%--        <!-- AdminLTE App -->--%>
<%--        <script src="../../dist/js/app.min.js"></script>--%>
<%--        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->--%>
<%--        <script src="../../dist/js/pages/dashboard.js"></script>--%>
<%--        <!-- AdminLTE for demo purposes -->--%>
<%--        <script src="../../dist/js/demo.js"></script>--%>
<%--        <script type="text/javascript">--%>
<%--            $("#search").keyup(function () {--%>
<%--                var value = this.value.toLowerCase().trim();--%>

<%--                $("table tr").each(function (index) {--%>
<%--                    if (!index)--%>
<%--                        return;--%>
<%--                    $(this).find("td").each(function () {--%>
<%--                        var id = $(this).text().toLowerCase().trim();--%>
<%--                        var not_found = (id.indexOf(value) == -1);--%>
<%--                        $(this).closest('tr').toggle(!not_found);--%>
<%--                        return not_found;--%>
<%--                    });--%>
<%--                });--%>
<%--            });--%>
<%--        </script>--%>
<%--    </body>--%>
<%--</html>--%>
<%--<%--%>
<%--    try{--%>
<%--         if(psPagination!=null){--%>
<%--             psPagination.close();--%>
<%--         }--%>
<%--         if(rsPagination!=null){--%>
<%--             rsPagination.close();--%>
<%--         }--%>
<%--          --%>
<%--         if(psRowCnt!=null){--%>
<%--             psRowCnt.close();--%>
<%--         }--%>
<%--         if(rsRowCnt!=null){--%>
<%--             rsRowCnt.close();--%>
<%--         }--%>
<%--          --%>
<%--         if(conn!=null){--%>
<%--          conn.close();--%>
<%--         }--%>
<%--    }--%>
<%--    catch(Exception e)--%>
<%--    {--%>
<%--        e.printStackTrace();--%>
<%--    }--%>
<%--    --%>
<%--}--%>
<%--%>--%>
