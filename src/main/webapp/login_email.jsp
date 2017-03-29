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
			html,
			body {
				background-color: #F5F4F2;
			}
			
			#link {
				color: #992222;
			}
			
			#link:hover {
				background-color: #992222;
				color: white;
				text-decoration: none;
			}
			
			.img-rounded {
				margin-top: -7px;
			}
			
			.btn {
				border-radius: 0px;
				background-color: #b24422;
				color: white;
				width: 80px;
				border: none;
				margin-left: 90px;
			}
			
			.btn:hover {
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
					<p class="navbar-text navbar-right" style="margin-top: 20px;margin-right: 25px;">没有账号？
						<a href="reg.jsp" class="navbar-link" id="link">注册</a>
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
						<h3 class="text-center">经常登录的同志是好同志</h3>
					</div>
				</div>
				<div class="row">
			          <div class="col-md-12">
			            <form class="form-horizontal" role="form">
			              <div class="form-group">
			                <div class="col-sm-2">
			                  <label for="inputEmail3" class="control-label">邮箱</label>
			                </div>
			                <div class="col-sm-10">
			                  <input type="email" class="form-control" id="inputEmail3" placeholder="邮箱">
			                </div>
			              </div>
			              <div class="form-group">
			                <div class="col-sm-2">
			                  <label for="inputPassword3" class="control-label">密码</label>
			                </div>
			                <div class="col-sm-10">
			                  <input type="password" class="form-control" id="inputPassword3" placeholder="密码">
			                </div>
			              </div>
			              <div class="form-group">
			                <div class="col-sm-offset-2 col-sm-10">
			                  <div class="checkbox">
			                    <label>
			                      <input type="checkbox">记住我
			                    </label>
			                    <label style="padding-left: 135px;">
			                      <input type="checkbox">显示密码
			                    </label>
			                  </div>
			                </div>
			              </div>
			              <div class="form-group">
			                <div class="col-sm-offset-2 col-sm-10">
			                  <div class="checkbox">
			                    <a href="login-name.jsp" id="link">通过用户名登陆</a>
			                    <a href="#" id="link" style="margin-left: 99px;">忘记密码</a>
			                  </div>
			                </div>
			              </div>
			              <div class="form-group">
			                <div class="col-sm-offset-2 col-sm-10">
			                  <button type="submit" class="btn btn-default">登录</button>
			                </div>
			              </div>
			            </form>
			          </div>
				</div>
		</div>
	</body>

</html>