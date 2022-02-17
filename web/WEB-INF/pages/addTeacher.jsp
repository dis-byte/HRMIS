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
    <title>添加信息</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
    <!--时间选择插件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css">
    <!--日期选择插件-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/js/bootstrap-datepicker/bootstrap-datepicker3.min.css">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
</head>
<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">
            <div class="lyear-layout-sidebar-scroll">
                <div class="lyear-layout-sidebar-scroll">
                    <nav class="sidebar-main">
                        <ul class="nav nav-drawer">
                            <li class="nav-item active">
                                <a href="${pageContext.request.contextPath}/student/allStudent">
                                    <i class="mdi mdi-home"></i> 后台首页</a>
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
        <%--end头部信息--%>
        <!--页面主要内容-->
        <main class="lyear-layout-content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="${pageContext.request.contextPath}/teacher/addTeacher" method="post" class="row">

                                    <div class="form-group col-md-12">
                                        <label for="title">姓名</label>
                                        <input type="text" class="form-control" required="required" id="title" name="name"  placeholder="请输入姓名" />
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="title">年龄</label>
                                        <input type="text" class="form-control" required="required" id="title" name="age"  placeholder="请输入年龄" />
                                    </div>
                                    <%--<div class="form-group col-md-12">
                                        <label for="title">性别</label>
                                        <input type="text" class="form-control" required="required" id="title" name="gender"  placeholder="请输入性别" />
                                    </div>--%>
                                    <div class="form-group col-md-12">
                                        <label>性别</label>
                                        <div class="clearfix">
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="gender" value="男"><span>男</span>
                                            </label>
                                            <label class="lyear-radio radio-inline radio-primary">
                                                <input type="radio" name="gender" value="女" checked><span>女</span>
                                            </label>
                                        </div>
                                    </div>

                                    <%--<div class="form-group col-md-12">
                                        <label for="title">年级</label>
                                        <input type="text" class="form-control" required="required" id="title" name="grade"  placeholder="请输入年级" />
                                    </div>--%>
                                    <div class="form-group col-md-12">
                                        <label for="type">科目</label>
                                        <div class="form-controls">
                                            <select name="subject" class="form-control" id="type">
                                                <option value="数学">数学</option>
                                                <option value="语文">语文</option>
                                                <option value="英语">英语</option>
                                                <option value="物理">物理</option>
                                                <option value="化学">化学</option>
                                                <option value="生物">生物</option>
                                                <option value="地理">地理</option>
                                                <option value="历史">历史</option>
                                                <option value="政治">政治</option>
                                                <option value="微机">微机</option>
                                                <option value="体育">体育</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <button type="submit" class="btn btn-primary" id="example-success-notify">确认添加</button>
                                        <button type="button" class="btn btn-default" onclick="javascript:history.back(-1);return false;">返 回</button>
                                    </div>
                                </form>
                                <%--判断添加成功与否--%>
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
<!--时间选择插件-->
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datetimepicker/locale/zh-cn.js"></script>
<!--日期选择插件-->
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<!--图表插件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/Chart.js"></script>
<!--消息提示-->
<script src="${pageContext.request.contextPath}/static/js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/lightyear.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.min.js"></script>
</body>
</html>
