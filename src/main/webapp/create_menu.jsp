<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/shiyuji_js/nav.js"></script>
		<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<title>创建菜谱</title>
		<style>
			html,
			body {
				background-color: #F5F4F2;
			}
			#menu_name{
				width: 600px;
				height: 50px;
				background-color: #fffce9;
				border: none;
				padding-left: 10px;
			}
			#menu_pic{
				background-color: #E8E6E3;
				width: 600px;
				height: 200px;
			}
			#menu_info{
				background-color: #E8E6E3;
				width: 300px;
    			margin-top: 72px;
    			height: 150px;
			}
			#menu_font{
				color: #a5a7a6;
				font-size: 14px;
			}
		</style>
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
		            			<input type="text" placeholder="添加菜谱名称" id="menu_name">
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<div id="menu_pic" style="text-align: center;line-height: 200px;">
		            				<input type="file" id="menu_input" style="display: none;"/>
		            				<label for="menu_input" id="menu_font">上传</label>
		            			</div>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<img src="img/user.png" class="img-circle" width="60">&nbsp;&nbsp;
		            			<span>小小的身体～萌萌的(๑• . •๑)我的厨房</span>
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<input type="text" placeholder="点击添加菜谱描述" id="menu_name">
		            		</div>
		            	</div>
		            	
		            	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="title">
					        	用料 
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<input type="text" placeholder="食材: 如鸡蛋          用量: 如1只" id="menu_name"> X
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<a href="" id="link">追加一行用料</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12" id="title">
					        	做法 
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
		            		<div class="col-md-12 col-xs-12">
		            			<span id="title">1</span>
		            			<input type="text" placeholder="点击添加菜谱步骤" id="menu_name" style="width: 585px;">X
		            		</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<a href="" id="link">追加一行步骤</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12 text-center">
					        	<a href="" class="btn" style="width: 80px;">发布菜谱</a>
					        </div>
			          	</div>
		            </div>
		            <div class="col-md-4 col-xs-4">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12 text-center">
		            			<div id="menu_info">
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
		        </div> 
		    	<div class="row" style="margin-bottom: 75px;">
          			<div class="col-md-12 text-center" id="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        		</div>
      		</div>
		</div>
	</body>
</html>
