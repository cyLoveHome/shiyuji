<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <%@ include file="css_js.jsp" %>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/nav.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/create_menu.js"></script>
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/create_menu.css" rel="stylesheet" type="text/css">
		<title>创建菜谱</title>
	</head>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-7 col-xs-7 col-sm-7" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<input type="text" placeholder="添加菜谱名称" class="menu_name" id="mName">
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<div id="menu_pic" style="text-align: center;line-height: 200px;">
		            				<input type="file" id="menu_input" style="display: none;"/>
		            				<label for="menu_input" id="menu_font">上传</label>
		            			</div>
		            			<input type="hidden" id="mPic" value="empty">
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<img src="${pageContext.request.contextPath}/img/${user.headPic}" class="img-circle" width="60">&nbsp;&nbsp;
		            			<span>${user.uName} 的厨房</span>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<input type="text" placeholder="点击添加菜谱描述" class="menu_name" id="mInfo">
		            		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="title">
					        	用料 
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="shicai">
					        	<div> 
						        	<input type="text" placeholder="食材: 如鸡蛋          用量: 如1只" class="menu_name" id="shicai_step1">
					        	</div>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<a class="link" id="addShi">追加一行用料</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="title">
					        	做法 
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
			            	<div class="col-md-12 col-xs-12" id="steps">
			            		<div> 
			            			<span id="title">1</span>
			            			<input type="text" placeholder="点击添加菜谱步骤" class="menu_name" style="width: 585px;" id="step1">
			            		</div>
			            	</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<a  class="link" id="addStep">追加一行步骤</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="title">
					        	选择菜谱分类
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="classify">
					        	
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12 text-center">
					        	<a  class="btn" style="width: 80px;" id="publish">发布菜谱</a>
					        </div>
			          	</div>
		        </div> 
		        <div class="col-md-4 col-xs-4">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12 text-center">
		            			<div class="menu_info">
		            				<div class="row" style="padding-top:30px;margin-bottom: 20px;">
					        			<div class="col-md-12" id="title">
					        				创建菜谱的人是厨房里的天使
					        			</div>
			          				</div>
			          				<div class="row">
					        			<div class="col-md-12" id="menu_font">
					        				食遇记鼓励大家上传自己原创的菜谱信息；转载、翻译的内容请在简介里表明出处。
					        			</div>
			          				</div>
		            			</div>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<div class="row" style="margin-bottom: 20px;">
					        		<div class="col-md-12" id="title">
					        			推荐至分类
					        		</div>
			          			</div>
			          			<div class="row" style="margin-bottom: 20px;">
			          				<div class="col-md-12">
					        			<input type="text" placeholder="添加" style="width: 300px;height: 30px;" />
					        		</div>
			          			</div>
			          			<div class="row" style="margin-bottom: 20px;">
			          				<div class="col-md-12" id="menu_font">
					        			如：快手菜、早餐、汤羹、饼干、零食等，不建<br>议输入食材名。 (使用空格或逗号来分隔分类)
					        		</div>
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
