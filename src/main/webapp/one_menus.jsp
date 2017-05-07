<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.Menus" %>

<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/one_menus.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/one_menus.css" rel="stylesheet" type="text/css">
		<title>菜谱</title>
	</head>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
				<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-10 col-xs-10 col-sm-10" style="padding-left: 6px;">
		            	<div class="row">
		            		<div class="col-md-9 col-xs-9">
		            			<div class="row" style="margin-bottom: 20px;">
				            		<div class="col-md-12 col-xs-12">
				            			<div class="menusHeader">
				            				<div class="row">
				            					<div class="col-md-12 menusTitle">${menus.msName }</div>
				            					<div class="col-md-12 menusAll">${menus.menusCollectNum } 收藏</div>
				            					<div class="col-md-12 menusInfo">${menus.msInfo }</div>
				            					<div class="col-md-12" style="margin-left:40px">
											      	<div class="row" style="margin-bottom: 10px;">
												        	<div class="col-md-1">
												        		<a href="">
											          				<img src="${pageContext.request.contextPath}/img/${us.headPic}" class="img-circle img-responsive" width="30">
												        		</a>
											          		</div>
											          		<div class="col-md-4 col-xs-4" style="padding-left: 0px;">
												          		<a href="" class="link uName" >${us.uName }</a>&nbsp;&nbsp;&nbsp;
												          	</div>
												          	<div class="col-md-7 col-xs-7">
												          			<c:if test="${menus.isCollect eq '1'}">
											          					<div class="btn" style="width: 100px;font-size: 16px;margin-left: 160px;" onclick="clickCollect('${menus.msId}','${user.uId }')" id="isColl">已收藏</div>
											          				</c:if>	
											          				<c:if test="${menus.isCollect eq '0'}">
											          					<div class="btn" style="width: 100px;font-size: 16px;margin-left: 160px;" onclick="clickCollect('${menus.msId}','${user.uId }')" id="isColl">收藏</div>
											          				</c:if>	
												          	</div>
										        	</div>
								          		</div>
								          		<%
							          				Menus menus = (Menus)request.getAttribute("menus");
							          				Date date = new Date(menus.getCreate_time()); 
							          			%>
				            					<div class="col-md-12 menusTime">创建时间：<%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></div>
				            				</div>
				            			</div>
				            		</div>
				            	</div>
				            	
		            			<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<div id="title_font">${menus.collMenu } 菜谱</div>
				            		</div>
		            			</div>
		            			<c:if test="${not empty umList}">
            						<c:forEach  items="${umList}" var="um">
				            			<div class="row" style="margin-bottom: 25px;">
				            				<a href="">
							            		<div class="col-md-4 col-xs-4 col-sm-4">
							            			<img src="${pageContext.request.contextPath}/img/${um.menu.mPic}" class="img-responsive">
							            		</div>
							            		<div class="col-md-8 col-xs-8 col-sm-8">
							            			<div style="margin-bottom: 40px;"><a href="" id="m_name">${um.menu.mName }</a></div>
												    <div class="all_style">${um.menu.menuCollectNum } 人收藏过</div>
												    <div class="all_style">${um.u.uName }</div>
							            		</div>
						            		</a>
				            			</div>
				            		</c:forEach>
				            	</c:if>
		            		</div>
		            		<div class="col-md-3 col-xs-3">
			            		<div class="row" style="margin-bottom: 20px;">
						          	<div class="col-md-12">
						          		<span id="title">流行菜单</span>&nbsp;&nbsp;&nbsp;&nbsp;
						          		<a href="" class="link">全部</a>
						          	</div>
				          		</div>
				          		<c:if test="${not empty ranList}">
	            					<c:forEach  items="${ranList}" var="menus">
						          		<div class="row menu">
						          			<div class="col-md-12 col-xs-12">
						          				<a href="" id="all_font">${menus.msName }</a>
						          			</div>
						          		</div>
						          	</c:forEach>
				          		</c:if>
		            		</div>
		            	</div>
		            <div class="col-md-1 col-xs-1"></div>
		        </div>
		        </div>
          		<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" class="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
        </div>
	</body>
</html>
