<%@ page import="com.model.Teachers" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>教师信息管理</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="static/img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="static/css/googleapisfonts.css" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/font-awesome.min.css">
    <!-- adminpro icon CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/adminpro-custon-icon.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/meanmenu.min.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/jquery.mCustomScrollbar.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/data-table/bootstrap-table.css">
    <link rel="stylesheet" href="static/css/data-table/bootstrap-editable.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/normalize.css">
    <!-- charts CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/c3.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="static/css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="static/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body class="darklayout">
<%
    Teachers teachers=(Teachers) request.getSession().getAttribute("teachers");
    if(teachers==null){
        response.sendRedirect("index.jsp");
    }else{
        session.setAttribute("teachers",teachers);
%>
<!-- Header top area start-->
<div class="wrapper-pro">
    <div class="left-sidebar-pro">
        <nav id="sidebar">
            <div class="sidebar-header">
                <a href="#"><img src="static/img/message/1.jpg" alt="" />
                </a>
                <h3>${teachers.lpy_Tname15}</h3>
                <p>管理员</p>
                <strong>AP+</strong>
            </div>
            <div class="left-custom-menu-adp-wrap">
                <ul class="nav navbar-nav left-sidebar-menu-pro">
                    <li class="nav-item">
                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-home"></i> <span class="mini-dn">主页</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                        <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                            <a href="AdMain" class="dropdown-item">我的主页</a>
                            <a href="AdPersonal" class="dropdown-item">个人信息</a>
                        </div>
                    </li>
                    <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="fa big-icon fa-envelope"></i> <span class="mini-dn">管理</span> <span class="indicator-right-menu mini-dn"><i class="fa indicator-mn fa-angle-left"></i></span></a>
                        <div role="menu" class="dropdown-menu left-menu-dropdown animated flipInX">
                            <a href="StuInfoManagement" class="dropdown-item">学生信息管理</a>
                            <a href="TeaInfoManagement" class="dropdown-item">教师信息管理</a>
                            <a href="StuScoreManagement" class="dropdown-item">学生成绩管理</a>
                            <a href="StuRankManagement" class="dropdown-item">学生排名管理</a>
                            <a href="StuCreditManagement" class="dropdown-item">学生学分管理</a>
                            <a href="CourseAvgScoreManagement" class="dropdown-item">课程平均成绩管理</a>
                            <a href="TeaCourseManagement" class="dropdown-item">教师任课管理</a>
                            <a href="ClassCourseManagement" class="dropdown-item">班级课程开设管理</a>
                            <a href="StuAddress" class="dropdown-item">学生生源地统计</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <!-- Header top area start-->
    <div class="content-inner-all">
        <div class="header-top-area">
            <div class="fixed-header-top">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12">
                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                <i class="fa fa-bars"></i>
                            </button>
                            <div class="admin-logo logo-wrap-pro">
                                <a href="#"><img src="static/img/logo/log.png" alt="" />
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-6 col-xs-12" style="position:absolute;right: 200px;">
                            <div class="header-right-info">
                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                    <li class="nav-item">
                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                            <span class="adminpro-icon adminpro-user-rounded header-riht-inf"></span>
                                            <span class="admin-name">${teachers.lpy_Tname15}</span>
                                            <span class="author-project-icon adminpro-icon adminpro-down-arrow"></span>
                                        </a>
                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated flipInX">
                                            <li><a href="teaChangePassword.jsp"><span class="adminpro-icon adminpro-locked author-log-ic"></span>修改密码</a>
                                            </li>
                                            <li><a href="index.jsp"><span class="adminpro-icon adminpro-locked author-log-ic"></span>退出登录</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header top area end-->
        <!-- Breadcome start-->
        <div class="breadcome-area mg-b-30 small-dn">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcome-list shadow-reset">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="breadcome-heading">
                                        <h2>欢迎使用高校成绩管理系统</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcome End-->
        <!-- Mobile Menu start -->
        <div class="mobile-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <ul class="mobile-menu-nav">
                                    <li><a data-toggle="collapse" data-target="#Charts" href="#">主页 <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                        <ul class="collapse dropdown-header-top">
                                            <li><a href="AdMain">我的主页</a>
                                            </li>
                                            <li><a href="AdPersonal">个人信息</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a data-toggle="collapse" data-target="#demo" href="#">管理 <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                        <ul id="demo" class="collapse dropdown-header-top">
                                            <li><a href="StuInfoManagement">学生信息管理</a>
                                            </li>
                                            <li><a href="TeaInfoManagement">教师信息管理</a>
                                            </li>
                                            <li><a href="StuScoreManagement">学生成绩管理</a>
                                            </li>
                                            <li><a href="StuRankManagement">学生排名管理</a>
                                            </li>
                                            <li><a href="StuCreditManagement">学生学分管理</a>
                                            </li>
                                            <li><a href="CourseAvgScoreManagement">课程平均成绩管理</a>
                                            </li>
                                            <li><a href="TeaCourseManagement">教师任课管理</a>
                                            </li>
                                            <li><a href="ClassCourseManagement">班级课程开设管理</a>
                                            </li>
                                            <li><a href="StuAddress">学生生源地统计</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->
        <!-- Breadcome start-->
        <div class="breadcome-area mg-b-30 des-none">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="breadcome-list map-mg-t-40-gl shadow-reset">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <div class="breadcome-heading">
                                        <h2>Thanks for Visits</h2>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <ul class="breadcome-menu">
                                        <li><a href="#">Home</a> <span class="bread-slash">/</span>
                                        </li>
                                        <li><span class="bread-blod">Dashboard</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcome End-->
        <!-- stockprice, feed area end-->
        <div class="admin-dashone-data-table-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="sparkline8-list shadow-reset">
                            <div class="sparkline8-hd">
                                <div class="main-sparkline8-hd">
                                    <h1>教师信息</h1>
                                    <div class="sparkline8-outline-icon">
                                        <span class="sparkline8-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                        <span><i class="fa fa-wrench"></i></span>
                                        <span class="sparkline8-collapse-close"><i class="fa fa-times"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="sparkline8-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div>
                                        <form action="FuzzyQueryTeaInfo" method="post" style="position:relative;float:left;">
                                            <span style="color: #fff">请输入姓名、工号、学院（支持模糊查询）：</span>
                                            <input type="text" name="info" size="15">
                                            <input type="submit" class="btn btn-primary btn-sm" style="border-radius: 5px;width: 80px;" value="确定">
                                        </form>
                                    </div>
                                    <br>
                                    <br>
                                    <br>
                                    <div>
                                        <form action="addTeaInfo.jsp" method="post" style="position:relative;float:left;">
                                            <input type="submit" class="btn btn-primary btn-sm" style="border-radius: 5px;width: 80px;" value="添加教师">
                                        </form>
                                    </div>
                                    <br>
                                    <br>
                                    <br>
                                    <div id="toolbar">
                                        <select class="form-control">
                                            <option value="">Export Basic</option>
                                            <option value="all">Export All</option>
                                            <option value="selected">Export Selected</option>
                                        </select>
                                    </div>
                                    <table id="table" data-toggle="table" data-pagination="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true" data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                        <tr>
                                            <th data-field="state" data-checkbox="true"></th>
                                            <th data-field="id" data-editable="true">工号</th>
                                            <th data-field="name" data-editable="true">姓名</th>
                                            <th data-field="college" data-editable="true">学院</th>
                                            <th data-field="sex" data-editable="true">性别</th>
                                            <th data-field="age" data-editable="true">年龄</th>
                                            <th data-field="profess" data-editable="true">职称</th>
                                            <th data-field="phone" data-editable="true">电话</th>
                                            <th data-field="op">操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="teaInfos" items="${sessionScope.teaInfos}" varStatus="status">
                                            <tr>
                                                <td></td>
                                                <td>${teaInfos.lpy_Tno15}</td>
                                                <td>${teaInfos.lpy_Tname15}</td>
                                                <td>${teaInfos.lpy_Tcollege15}</td>
                                                <td>${teaInfos.lpy_Tsex15}</td>
                                                <td>${teaInfos.lpy_Tage15}</td>
                                                <td>${teaInfos.lpy_Tprofess15}</td>
                                                <td>${teaInfos.lpy_Tphone15}</td>
                                                <td>
                                                    <div class="btn-group project-list-action">
                                                        <a href="AdTeaInfoChange?no=${teaInfos.lpy_Tno15}"><button class="btn btn-white btn-action btn-xs"><i class="fa fa-folder"></i> 修改</button></a>
                                                        <a href="TeaInfoDelete?no=${teaInfos.lpy_Tno15}"><button class="btn btn-white btn-xs"><i class="fa fa-pencil"></i> 删除</button></a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Start-->
<div class="footer-copyright-area">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="footer-copy-right">
                    <p>Copyright &#169; 2021 Colorlib All rights reserved. 高校成绩管理系统.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer End-->
<!-- jquery
    ============================================ -->
<script src="static/js/vendor/jquery-1.11.3.min.js"></script>
<!-- bootstrap JS
    ============================================ -->
<script src="static/js/bootstrap.min.js"></script>
<!-- meanmenu JS
    ============================================ -->
<script src="static/js/jquery.meanmenu.js"></script>
<!-- mCustomScrollbar JS
    ============================================ -->
<script src="static/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- sticky JS
    ============================================ -->
<script src="static/js/jquery.sticky.js"></script>
<!-- scrollUp JS
    ============================================ -->
<script src="static/js/jquery.scrollUp.min.js"></script>
<!-- counterup JS
    ============================================ -->
<script src="static/js/counterup/jquery.counterup.min.js"></script>
<script src="static/js/counterup/waypoints.min.js"></script>
<!-- peity JS
    ============================================ -->
<script src="static/js/peity/jquery.peity.min.js"></script>
<script src="static/js/peity/peity-active.js"></script>
<!-- sparkline JS
    ============================================ -->
<script src="static/js/sparkline/jquery.sparkline.min.js"></script>
<script src="static/js/sparkline/sparkline-active.js"></script>
<!-- data table JS
    ============================================ -->
<script src="static/js/data-table/bootstrap-table.js"></script>
<script src="static/js/data-table/tableExport.js"></script>
<script src="static/js/data-table/data-table-active.js"></script>
<script src="static/js/data-table/bootstrap-table-editable.js"></script>
<script src="static/js/data-table/bootstrap-editable.js"></script>
<script src="static/js/data-table/bootstrap-table-resizable.js"></script>
<script src="static/js/data-table/colResizable-1.5.source.js"></script>
<script src="static/js/data-table/bootstrap-table-export.js"></script>
<!-- main JS
    ============================================ -->
<script src="static/js/main.js"></script>
</body>

</html>
<%
    }
%>