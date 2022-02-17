<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2021/7/26
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生信息</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <div class="lyear-layout-sidebar-scroll">
                <nav class="sidebar-main">
                    <ul class="nav nav-drawer">
                        <li class="nav-item active">
                            <a href="${pageContext.request.contextPath}/student/allStudent"><i class="mdi mdi-home"></i> 后台首页</a>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-account-multiple"></i> 学生 管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="${pageContext.request.contextPath}/student/allStudent">学生信息</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-briefcase-check"></i>教师管理</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="${pageContext.request.contextPath}/teacher/allTeacher">教师信息</a> </li>
                                <li> <a href="#">1234</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-account"></i>1234</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="#">1234</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i>1234</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="#">1234</a> </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-item-has-subnav">
                            <a href="javascript:void(0)"><i class="mdi mdi-ticket-account"></i>1234</a>
                            <ul class="nav nav-subnav">
                                <li> <a href="#">1234</a> </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">
            <nav class="navbar navbar-default">
                <div class="topbar">
                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 后台首页 </span>
                    </div>
                    <ul class="topbar-right">
                        <li class="dropdown dropdown-profile">
                            <a href="javascript:void(0)" data-toggle="dropdown">
                                <img class="img-avatar img-avatar-48 m-r-10" src="${pageContext.request.contextPath}/static/images/users/avatar.jpg" alt="管理员" />
                                <span>管理员 <span class="caret"></span></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li> <a href="#"><i class="mdi mdi-lock-outline"></i> 修改密码</a> </li>
                                <li class="divider"></li>
                                <li> <a href="#"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                            </ul>
                        </li>

                    </ul>

                </div>
            </nav>

        </header>
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-toolbar clearfix">
                                <form class="pull-right search-bar" method="post" action="${pageContext.request.contextPath}/teacher/queryTeacher" role="form">
                                    <span style="color: red;font-weight: bold">${error}</span>
                                    <div class="input-group">
                                        <input type="text" class="form-control" value="" name="queryTeacherName" placeholder="请输入">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default dropdown-toggle btn btn-warning" type="submit">搜索</button>
                                        </div>
                                    </div>
                                </form>
                                <div class="toolbar-btn-action">
                                    <a href="${pageContext.request.contextPath}/teacher/toAdd" class="btn btn-primary m-r-5" title="新增" data-toggle="tooltip"><i class="mdi mdi-plus"></i> 新增</a>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>工号</th>
                                            <th>姓名</th>
                                            <th>年龄</th>
                                            <th>性别</th>
                                            <th>科目</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="teacher" items="${list}">
                                            <tr>
                                                <td>${teacher.id}</td>
                                                <td>${teacher.name}</td>
                                                <td>${teacher.age}</td>
                                                <td>${teacher.gender}</td>
                                                <td>${teacher.subject}</td>
                                                <td>
                                                    <a href="${pageContext.request.contextPath}/teacher/delete/${teacher.id}" class="btn btn-xs btn-default" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
                                                    <a href="${pageContext.request.contextPath}/teacher/toUpdate?id=${teacher.id}" class="btn btn-xs btn-default" title="修改" data-toggle="tooltip"><i class="mdi mdi-pencil"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- 分页-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.min.js"></script>

<!--图表插件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/Chart.js"></script>
</body>
</html>
