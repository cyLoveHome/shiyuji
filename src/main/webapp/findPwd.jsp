<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/main.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/friend.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/findPwd.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/findPwd.css" rel="stylesheet" type="text/css">
		<!-- easyui -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css" />
		<title>找回密码</title>
	</head>
	<body>
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-2 col-xs-2"></div>
		            <div class="col-md-8 col-xs-8 col-sm-8" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12 personal_title">找回密码</div>
		            	</div>
		            	<hr>
		            	<div class="row box">
		            		<div class="col-md-12 col-xs-12 boxTitle">
							</div>
							
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">邮 箱 :</label>
						        <input type="text" class="boxInput" placeholder="输入绑定邮箱号" id="email" />
						        <span style="margin-left: 20px;" id="checkemail">邮箱不存在</span>
						        <button >发送验证码</button>
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">验证码 :</label>
						        <input type="text" class="boxInput" placeholder="验证码" id="emailcode"/>
						        <span style="margin-left: 20px;" id="checkcode">邮箱不存在</span>
						        <button >校验验证码</button>
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">新密码 :</label>
						        <input type="text" class="boxInput" placeholder="New Pwd" id=""/>
						        <span style="margin-left: 20px;" id="checkpwd">邮箱不存在</span>
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">确认新密码:</label>
						        <input type="text" class="boxInput" placeholder="Check Pwd" />
						        <span style="margin-left: 20px;" id="checkpwd2">邮箱不存在</span>
							</div>
							<div class="col-md-12 col-xs-12 boxSave">
						        <button type="submit" class="btn" id="submitpwd">确认</button>
							</div>
		            	</div>
		            </div>
		            <div class="col-md-2 col-xs-2"></div>
		        </div>
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" id="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
