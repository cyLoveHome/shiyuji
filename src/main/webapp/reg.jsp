<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <style>
        	html,body{
        		background-color: #F5F4F2;
        	}
        	#link{
        		color: #992222;
        	}
        	#link:hover{
        		background-color: #992222;
        		color: white;
        		text-decoration: none;
        	}
        	.img-rounded{
        		margin-top: -7px;
        	}
        	.btn{
        		    border-radius: 0px;
    				background-color: #b24422;
    				color: white;
    				width: 80px;
    				border: none;
    				margin-left: 120px
        	}
        	.btn:hover{
        		background-color: #921;
        		color: white;
        	}
        </style>
    </head>
    <body>
        <div class="navbar navbar-static-top">
            <div class="container" style="width: 1000px;">
                <div class="navbar-header">
                    <a class="navbar-brand">
                    	<img height="45" alt="logo" src="img/logo.png" class="img-rounded">
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-ex-collapse">
                    <p class="navbar-text navbar-right" style="margin-top: 20px;margin-right: 25px;">已有账号？
                        <a href="login-name.jsp" class="navbar-link" id="link">登录</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container" style="width: 960px;">
                <div class="row">
                    <div class="col-md-12">
                        <hr style="border-top: 1px solid #EBE9E7;">
                    </div>
                </div>
            </div>
        </div>
        <div class="section">
            <div class="container" style="width: 350px;">
            	<div class="row" style="margin-bottom: 50px;">
                    <div class="col-md-12">
                        <h2 class="text-center">注册一个新账号</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <form role="form">
                            <div class="form-group" style="margin-bottom: 20px;">
                                <label class="control-label" for="exampleInputEmail1" style="margin-bottom: 10px;">用户名</label>
                                <input class="form-control" id="exampleInputEmail1" placeholder="请输入用户名" type="email" style="border-radius: 0px;">
                            </div>
                            <div class="form-group" style="margin-bottom: 20px;">
                                <label class="control-label" for="exampleInputPassword1" style="margin-bottom: 10px;">密码</label>
                                <input class="form-control" id="exampleInputPassword1" placeholder="设置食遇记密码（不少于6位）" type="password" style="border-radius: 0px;">
                            </div>
                            <div class="form-group" style="margin-bottom: 20px;">
                                <label class="control-label" for="exampleInputEmail1" style="margin-bottom: 10px;">邮箱</label>
                                <input class="form-control" id="exampleInputEmail1" placeholder="请输入常用邮箱" type="email" style="border-radius: 0px;">
                            </div>
                            <button type="submit" class="btn btn-default">注册</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
	</body>
</html>