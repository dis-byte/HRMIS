<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<title>login</title>
		<link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/css/materialdesignicons.min.css" rel="stylesheet">
		<link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
	<style>
	.lyear-wrapper {
	    position: relative;
	}
	.lyear-login {
	    display: flex !important;
	    min-height: 100vh;
	    align-items: center !important;
	    justify-content: center !important;
	}
	.login-center {
	    background: #fff;
	    min-width: 38.25rem;
	    padding: 2.14286em 3.57143em;
	    border-radius: 5px;
	    margin: 2.85714em 0;
	}
	.login-header {
	    margin-bottom: 1.5rem !important;
	}
	.login-center .has-feedback.feedback-left .form-control {
	    padding-left: 38px;
	    padding-right: 12px;
	}
	.login-center .has-feedback.feedback-left .form-control-feedback {
	    left: 0;
	    right: auto;
	    width: 38px;
	    height: 38px;
	    line-height: 38px;
	    z-index: 4;
	    color: #dcdcdc;
	}
	.login-center .has-feedback.feedback-left.row .form-control-feedback {
	    left: 15px;
	}
	</style>
	</head>
	  
	<body>
	<div class="row lyear-wrapper">
	  <div class="lyear-login">
	    <div class="login-center">
	      <div class="login-header text-center">
	        <img alt="light year admin" src="images/logo-sidebar.png">
	      </div>
	      <form name="form1" action="#" method="post">
	        <div class="form-group has-feedback feedback-left">
	          <input type="text" placeholder="请输入您的用户名" class="form-control" name="name" id="username" />
	          <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
	        </div>
	        <div class="form-group has-feedback feedback-left">
	          <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password" />
	          <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
	        </div>
	        <div class="form-group">
	          <button class="btn btn-block btn-primary" type="submit" >立即登录</button>
	        </div>
	        <div class="form-group">
	          <button class="btn btn-block btn-primary" type="reset" >重置</button>
	        </div>
	      </form>
	      <hr>
	      <footer class="col-sm-12 text-center">
	        <p class="m-b-0">未注册？ <a href="registerred.jsp">立即注册</a></p>
	      </footer>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
	<script type="text/javascript">;</script>
	</body>
</html>
