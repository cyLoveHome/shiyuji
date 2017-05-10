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
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/friend.css" rel="stylesheet" type="text/css">
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
		            		<div class="col-md-12 col-xs-12" id="friend_title">食遇记的厨友们</div>
		            	</div>
		            	
		            	<div class="row" id="kitchenFriends">
			            	<c:forEach  items="${allUsers}" var="u">
			            		<div class="col-md-6 col-xs-6">
			            			<div class="row users">
							          	<div class="col-md-3">
							          		<a href="${pageContext.request.contextPath}/createMenu/kitchen/${u.uId}" class="link">
							          			<img src="${pageContext.request.contextPath}/img/${u.headPic}" class="center-block img-circle img-responsive" >
							          		</a>
							          	</div>
							          	<div class="col-md-6">
							          		<div class="row user" style="margin-top: 4px;">
							          			<a href="${pageContext.request.contextPath}/createMenu/kitchen/${u.uId}" class="link">
							          				<div class="col-md-12 user_name" id="shicai_link">${u.uName }</div>
							          			</a>
							          		</div>
							          		<div class="row user">
							          			<div class="col-md-12 user_info">${u.focusNum }关注</div>
							          		</div>
							          		<div class="row">
							          			<div class="col-md-12 user_info">${u.menuNum }个菜谱&nbsp;&nbsp;&nbsp;273个作品</div>
							          		</div>
							          	</div>
							          	<div class="col-md-3">
							          		<c:if test="${u.isFriend eq '1'}">
							          			<div class="btn" id="focus${u.uId }" onclick="focusUser('${user.uId}','${u.uId }')">已关注</div>
							          		</c:if>
							          		<c:if test="${u.isFriend eq '0'}">
							          			<div class="btn" id="focus${u.uId }" onclick="focusUser('${user.uId}','${u.uId }')">关注</div>
							          		</c:if>
						          		</div>
				          			</div>
			            		</div>
			            	</c:forEach>
		            	</div>
		            	
		            </div>
		            <div class="col-md-4 col-xs-4" style="margin-top: 90px;">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12" id="title">食遇记里有 ${userNum}位厨友<br>供你搜索</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<input type="text" placeholder="搜厨友" id="findUser"/>
		            		</div>
		            	</div>
		            	<div class="row">
		            		<div class="col-md-12 col-xs-12">
		            			<a class="btn" style="width: 100px;margin-left: 1px;" onclick="findUser('${user.uId}');">搜厨友</a>
		            		</div>
		            	</div>
		            </div>
		        </div>
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" class="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
