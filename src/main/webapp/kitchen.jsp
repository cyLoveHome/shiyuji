<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.User" %>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/kitchen.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/kitchen.css" rel="stylesheet" type="text/css">
		<title>厨房</title>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-10 col-xs-10 col-sm-10" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-2 col-xs-2 col-sm-2">
		            			<img src="${pageContext.request.contextPath}/img/${user.headPic }" class="img-circle" width="140">
		            		</div>
		            		<div class="col-md-7 col-xs-7 col-sm-7">
		            			<div class="row" style="margin-bottom: 20px;">
		            				<div class="col-md-12">
		            					<span id="kitchen_font">${user.uName} 的厨房</span>
		            				</div>
		            			</div>
		            			<div class="row">
		            				<div class="col-md-12">
		            				<%
							          		User u = (User)session.getAttribute("user");
							          		Date date = new Date((Long)u.getCreateTime()); 
							          		
							          	%>
		            					<span class="user_info"><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %> 加入</span>
		            				</div>
		            			</div>
		            		</div>
		            		<div class="col-md-3 col-xs-3 col-sm-3">
		            			<div class="row" style="margin-bottom: 50px;">
		            				<div class="col-md-12 text-center">
		            					<span class="user_info">设置个人信息</span>
		            				</div>
		            			</div>
		            			<div class="row">
		            				<div class="col-md-1"></div>
		            				<div class="col-md-10">
				            			<div id="oneself_info">
				            				<div class="row">
		            							<div class="col-md-6 text-center" style="margin-top: 5px;">
		            								<div id="focus">关注的人</div>
		            								<a href="" class="link" style="font-size: 16px;">0</a>
		            							</div>
		            							<div class="col-md-6 text-center" style="margin-top: 5px;">
		            								<div id="focus">被关注</div>
		            								<a href="" class="link" style="font-size: 16px;">0</a>
		            							</div>
		            						</div>
										</div>
		            				</div>
		            				<div class="col-md-1"></div>
		            			</div>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 30px;">
		            		<div class="col-md-12 col-xs-12">
		            			<a onclick="kitchen('1','${user.uId}','${user.uName }')" class="btn anniu">概况</a>
		            			<a onclick="kitchen('2','${user.uId}');"  class="btn anniu">菜谱 0</a>
		            			<a onclick="kitchen('3','${user.uId}','${user.uName }');"  class="btn anniu">菜单 0</a>
		            			<a onclick="kitchen('4','${user.uId}');"  class="btn anniu">收藏</a>
		            			<a onclick="kitchen('5','${user.uId}');"  class="btn anniu">我的问题</a>
		            			<a onclick="kitchen('6','${user.uId}');"  class="btn anniu">我的举报</a>
		            			<a onclick="kitchen('7','${user.uId}');"  class="btn anniu">留言板</a>
		            		</div>
		            	</div>
		            	<div class="kitInfo">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12" id="kitchen_font" style="font-size: 18px;">小小的身体～萌萌的(๑• . •๑)我收藏的菜谱</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 40px;">
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏1.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏2.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏3.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 40px;">
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏1.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏2.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏3.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 40px;">
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏1.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a href="" id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏2.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
			            	<div class="col-md-4 col-xs-4">
			            		<div id="line">
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<img src="img/收藏3.jpg" class="img-responsive">
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<a href="" class="link" style="font-size: 18px;">土豆鸡丁</a>
			            				</div>
			            			</div>
			            			<div class="row img_style">
			            				<div class="col-md-12 col-xs-12">
			            					<span class="user_info">216 做过 22414 收藏 | <a id="author">芒_草</a></span>
			            				</div>
			            			</div>
			            		</div>
			            	</div>
		            	</div>
		            	</div>
		            </div>
		            <div class="col-md-1 col-xs-1"></div>
		        </div>
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" class="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
