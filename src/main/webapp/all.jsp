<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/shiyuji_js/nav.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/all.css" rel="stylesheet" type="text/css">
		<title>食谱</title>
	</head>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-10 col-xs-10 col-sm-10" style="padding-left: 6px;">
		            	<div class="row">
		            		<div class="col-md-2 col-xs-2">
		            			<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">全部分类</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">本周最受欢迎</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">新秀菜谱</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">最新创建</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 35px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">流行菜单</a>
				            		</div>
				            	</div>
				            	
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<div id="gray_font">流行搜索</div>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">家常菜</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">烘焙</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">蔬菜</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">青团</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">蛋糕</a>
				            		</div>
				            	</div>
				            	<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<a href=" " id="all_font">豆乳盒子</a>
				            		</div>
				            	</div>
		            		</div>
		            		<div class="col-md-7 col-xs-7">
		            			<div class="row" style="margin-bottom: 15px;">
				            		<div class="col-md-12 col-xs-12 col-sm-12">
				            			<div id="title_font">${info }</div>
				            		</div>
		            			</div>
		            			<c:if test="${not empty result}">
							       <c:forEach  items="${result}" var="UserAndMenu">
				            			<div class="row" style="margin-bottom: 25px;">
				            				<a href="${pageContext.request.contextPath}/createMenu/selectOne/${UserAndMenu.menu.mId}">
							            		<div class="col-md-5 col-xs-5 col-sm-5">
							            			<img src="${pageContext.request.contextPath}/img/all1.jpg" class="img-responsive"/>
							            		</div>
							            		<div class="col-md-7 col-xs-7 col-sm-7">
							            			<div style="margin-bottom: 40px;"><a href="" id="m_name">${UserAndMenu.menu.mName }</a></div>
												    <div class="all_style">${UserAndMenu.menu.menuCollectNum } 人收藏</div>
												    <div class="all_style">${UserAndMenu.u.uName }</div>
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
						          		<a href="${pageContext.request.contextPath}/menus/all/${user.uId }" class="link">全部</a>
						          	</div>
				          		</div>
				          		
				          		<c:if test="${not empty ranList}">
		            				<c:forEach  items="${ranList}" var="menus">
						          		<div class="row menu">
						          			<div class="col-md-12 col-xs-12">
						          				<a href="${pageContext.request.contextPath}/menus/selectOne/${menus.msId}" id="shicai_link" class="font">${menus.msName }</a>
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
