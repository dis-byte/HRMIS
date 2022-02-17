<%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2021/7/7
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/images/favicon.ico"/>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
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
                    <div class="col-sm-6 col-lg-6">
                        <div class="card bg-primary">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">今日浏览</p>
                                    <p class="h4 text-white m-b-0">20</p>
                                </div>
                                <div class="pull-left">
                                    <span class="img-avatar img-avatar-48 bg-translucent">
                                        <i class="mdi mdi-currency-cny fa-1-5x"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-6">
                        <div class="card bg-danger">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">用户总数</p>
                                    <p class="h4 text-white m-b-0">45</p>
                                </div>
                                <div class="pull-left">
                                    <span class="img-avatar img-avatar-48 bg-translucent">
                                      <i class="mdi mdi-account fa-1-5x"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>每周用户</h4>
                            </div>
                            <div class="card-body">
                                <canvas class="js-chartjs-bars js-chartjs-lines"  height="100px"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!--End 页面主要内容-->
    </div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/main.min.js"></script>

<!--图表插件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/Chart.js"></script>
<script type="text/javascript">
    $(document).ready(function(e) {
        var $dashChartBarsCnt  = jQuery( '.js-chartjs-bars' )[0].getContext( '2d' ),
            $dashChartLinesCnt = jQuery( '.js-chartjs-lines' )[0].getContext( '2d' );

        var $dashChartBarsData = {
            labels: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
            datasets: [
                {
                    label: '注册用户',
                    borderWidth: 1,
                    borderColor: 'rgba(0,0,0,0)',
                    backgroundColor: 'rgba(51,202,185,0.5)',
                    hoverBackgroundColor: "rgba(51,202,185,0.7)",
                    hoverBorderColor: "rgba(0,0,0,0)",
                    data: [10, 20, 20, 50, 10, 5, 60]
                }
            ]
        };

        new Chart($dashChartBarsCnt, {
            type: 'bar',
            data: $dashChartBarsData
        });

        /*var myLineChart = new Chart($dashChartLinesCnt, {
          type: 'line',
          data: $dashChartLinesData
        });*/
    });
</script>
</body>
</html>