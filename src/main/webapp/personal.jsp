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
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/personal.css" rel="stylesheet" type="text/css">
		<title>厨友们</title>
	</head>
	<body>
		<%@ include file="nav.jsp" %>
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-7 col-xs-7 col-sm-7" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12 personal_title">下厨房的信息中心</div>
		            	</div>
		            	<hr>
		            	<div class="row box">
		            		<div class="col-md-12 col-xs-12 boxTitle">
				            	<span class="boxIcon"> <i class="fa fa-align-justify"></i> </span>
          						<h5>Personal-info</h5>	
							</div>
							
							<div class="col-md-12 col-xs-12 boxBody" style="height: 75px;">
						        <label class="boxLabel" style="margin-right: 10px;padding-top: 25px;">头 像 :</label>
						        <img src="${pageContext.request.contextPath}/img/${user.headPic}" class="img-circle img-responsive" width="50" style="margin-top: 13px;">
						        <input type="file"/>
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">用户名 :</label>
						        <input type="text" class="boxInput" placeholder="First name" />
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">性 别 :</label>
						        <input type="radio" name="sex" value="男" class="boxRadio" style="margin-left: 10px;margin-top: 15px;"/>男
						        <input type="radio" name="sex" value="女" class="boxRadio" style="margin-left: 100px;margin-top: 15px;"/>女
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">生 日 :</label>
						        <input type="text" class="boxInput" placeholder="First name" />
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">家 乡 :</label>
						        <input type="text" class="boxInput" placeholder="First name" />
							</div>
							<div class="col-md-12 col-xs-12 boxBody" style="height: 75px;">
						        <label class="boxLabel">个人简介 :</label>
						        <textarea class="boxInput" style="height: 50px;"></textarea>
							</div>
							<div class="col-md-12 col-xs-12 boxSave">
						        <div type="submit" class="btn">保存</div>
							</div>
		            	</div>
		            </div>
		            <div class="col-md-4 col-xs-4"></div>
		        </div>
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" id="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
