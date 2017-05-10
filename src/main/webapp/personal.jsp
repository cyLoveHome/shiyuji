<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.shiyuji.cy.pojo.User" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/main.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/friend.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/personal.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/personal.css" rel="stylesheet" type="text/css">
		
		<!-- easyui -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css" />
		<title>个人信息中心</title>
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
          						<h5>个人信息</h5>	
							</div>
							
							<div class="col-md-12 col-xs-12 boxBody" style="height: 75px;">
						        <label class="boxLabel" style="margin-right: 10px;padding-top: 25px;">头 像 :</label>
						        <img src="${pageContext.request.contextPath}/img/${user.headPic}" id="prePic" class="img-circle" width="50" style="margin-top: 13px;display:online-block;">
						        <input type="hidden"  name="update_headpic" id="up_headpic" value="${user.headPic}"/>
						        <label for="changeHeadPic"><a>上传头像</a></label>
						         <input type="file" style="display:none" id="changeHeadPic"/>
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">用户名 :</label>
						        <input type="text"  readonly="readonly" class="boxInput"  value="${user.uName }" />
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">性 别 :</label>
						        <c:choose>
						        	<c:when test="${user.sex eq 1 }">
						        		 <input type="radio" name="up_sex"  class="boxRadio" style="margin-left: 10px;margin-top: 15px;" value="1" checked/><span>男</span>
						        		 <input type="radio" name="up_sex"  class="boxRadio" style="margin-left: 100px;margin-top: 15px;" value="0" /><span>女</span>
						        	</c:when>
						        	<c:otherwise>
						        	 <input type="radio" name="up_sex"  class="boxRadio" style="margin-left: 10px;margin-top: 15px;" value="1"  /><span>男</span>
						       		 <input type="radio" name="up_sex"  class="boxRadio" style="margin-left: 100px;margin-top: 15px;" value="0"  checked/><span>女</span>
						        	</c:otherwise>
						        </c:choose>
						       
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">生 日 :</label>
						        <span id="show_birth">
						        	<c:set value="${ user }" var="uuu" scope="page"></c:set>
						        	<%
						        		User user = (User)pageContext.getAttribute("uuu");
						        		Long birthTime = user.getBirth();
						        		Date date = new Date(birthTime);
						        	%>
						        	<%=new SimpleDateFormat("yyyy-MM-dd").format(date) %>
						        </span>
						        <input class="easyui-datebox" name="update_birth" id="up_birth"  data-options="formatter:myformatter,parser:myparser">
						        <!-- <input type="text" class="boxInput" placeholder="输入生日，如1994-10-20" /> -->
							</div>
							<div class="col-md-12 col-xs-12 boxBody">
						        <label class="boxLabel">家 乡 :</label>
						        <input type="text" class="boxInput" placeholder="输入你的家乡" id="up_hometown"  value="${user.hometown }" />
							</div>
							<div class="col-md-12 col-xs-12 boxBody" style="height: 75px;">
						        <label class="boxLabel">个人简介 :</label>
						        <textarea class="boxInput" style="height: 50px;" id="up_info">${ user.uInfo }</textarea>
							</div>
							<div class="col-md-12 col-xs-12 boxSave">
						        <button  class="btn" onclick="submitUserInfo()">保存</button>
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
