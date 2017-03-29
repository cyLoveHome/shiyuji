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
		<title>菜谱</title>
		<style>
			html,
			body {
				background-color: #F5F4F2;
			}
			#font{
				font-family: "微软雅黑";
				font-size: 32px;
				font-weight: bold;
			}
			#user{
				font-size: 18px;
				font-family: '微软雅黑';
				margin-left: 5px;
			}
			.a_hover{
				color: black;
			}
			.a_hover:hover{
				color: #992222;
			}
			#user_red{
				display: inline-block;
				font-size: 10px;
				font-family: '微软雅黑';
				margin-left: 5px;
				color: #992222;
			}
			.one_menu{
				font-size: 16px;
			    font-family: "微软雅黑";
			}
			.zan{
				color: gray;
				font-size: 22px;
			}
			#comment{
				background-color: #a5a7a6;
			}
			.comment_font{
				font-size: 12px;
			}
			#comment_reply{
				color: #a5a7a6;
				font-size: 12px;
			}
			#comment_reply:hover{
				background-color: #a5a7a6;
				color: white;
			}
			.comment_margin{
				margin-top: 5px;
			}
			.com_info{
				width: 100%;
				height: 30px;
				border: none;
				padding-left: 5px;
			}
		</style>
		<script>
			$(function(){
				$("#zan").click(function(){
					$(".zan").css("color","#992222");
				});
			});
		</script>
	</head>
	<body>
		<%@ include file="nav.jsp" %> 
		<div class="section" id="sec">
      		<div class="container">
        		<div class="row" style="margin-bottom: 75px;">
		            <div class="col-md-1 col-xs-1"></div>
		            <div class="col-md-7 col-xs-7 col-sm-7" style="padding-left: 6px;">
		            	<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-12" id="font">芒果千层盒子</div>
		        		</div>
		        		<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-12">
		          				<img src="img/菜谱1.jpg" class="img-responsive">
		          			</div>
		        		</div>
		        		<div class="row" style="margin-bottom: 15px;">
		          			<div class="col-md-3 col-xs-3">
		          				<span style="color: #992222;font-size: 20px;">11 </span> 
		          				<span id="user_info">人做过这道菜</span>
		          			</div>
		          			<div class="col-md-3 col-xs-3" style="padding-top: 1px;">
		          				<a href="javascript:void(0);" id="zan"><i class="fa fa-thumbs-up zan"></i></a>
		          				<span id="user_info">117  赞</span>
		          			</div>
		          			<div class="col-md-6 col-xs-6 text-right">
		          				<div class="btn" style="margin-right: 3px;"><i class="fa fa-align-left" style="font-size: 23"></i></div>
		          				<div class="btn" style="width: 100px;font-size: 16px;">收藏</div>
		          			</div>
		        		</div>
		        		<hr>
		        		
		        		<div class="row" style="margin-bottom: 30px;">
		        			<div id="comment">
					        	<div class="col-md-12">
					        		<div class="row" style="margin-bottom: 20px;">
							        	<div class="col-md-12">
							        		<a href="" id="link">展开更多16条评论</a>
							        	</div>
					        		</div>
					        		<div class="row" style="margin-bottom: 10px;">
							        	<div class="col-md-1">
							        		<a href="">
						          				<img src="img/user.png" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-9 col-xs-9 comment_margin" style="padding-left: 0px;">
							          		<a href="" id="link" class="comment_font">山间清泉</a>&nbsp;&nbsp;&nbsp;
							          		<p style="display: inline-block;" class="comment_font">真漂亮，好好吃，真喜欢，要学做</p>
							          	</div>
							          	<div class="col-md-2 col-xs-2 comment_margin text-right">
							          		<a href="" id="comment_reply">回复</a>
							          	</div>
					        		</div>
					        		<div class="row" style="margin-bottom: 10px;">
					        			<div class="col-md-1">
							        		<a href="">
						          				<img src="img/user.png" class="img-circle img-responsive" width="30">
							        		</a>
						          		</div>
						          		<div class="col-md-9 col-xs-9 comment_margin" style="padding-left: 0px;">
							          		<a href="" id="link" class="comment_font">山间清泉</a>&nbsp;&nbsp;&nbsp;
							          		<p style="display: inline-block;" class="comment_font">真漂亮，好好吃，真喜欢，要学做</p>
							          	</div>
							          	<div class="col-md-2 col-xs-2 comment_margin text-right">
							          		<a href="" id="comment_reply">回复</a>
							          	</div>
					        		</div>
					        		
					        		<div class="row"  style="margin-bottom: 20px;">
					        			<div class="col-md-10 col-xs-10">
					        				<input type="text" placeholder="评论" class="com_info comment_font"/>
					        			</div>
					        			<div class="col-md-2 col-xs-2 text-right">
					        				<div class="btn" style="height: 30px;">评论</div>
					        			</div>
					        		</div>
					        		<hr>
			          			</div>
					        </div>
			          	</div>
		        		
		        		<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12">
					          	<img src="img/user.png" class="img-circle" width="60">
					          	<div id="user" style="display: inline-block;">敏-35</div>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12" id="user">
					          	镜头之下，有你，有我，有我们……<br>
   								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;建个不正经的菜谱，只为了记录生活中温暖的小事，曼妙的风景以及爱生活的心情。
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 30px;">
					        <div class="col-md-12" id="title" style="font-size: 25px;">
					        	用料 
					        </div>
			          	</div>
			          	<div class="row" id="user" style="margin-bottom: 10px;">
					        <div class="col-md-5">
					        	<a href="" class="a_hover">芒果</a>
					        </div>
					        <div class="col-md-7">1个</div>
			          	</div>
			          	<hr>
			          	<div class="row" id="user" style="margin-bottom: 10px;">
					        <div class="col-md-5">
					        	<a href="" class="a_hover">芒果</a>
					        </div>
					        <div class="col-md-7">1个</div>
			          	</div>
			          	<hr>
			          	<div class="row" id="user" style="margin-bottom: 10px;">
					        <div class="col-md-5">
					        	<a href="" class="a_hover">芒果</a>
					        </div>
					        <div class="col-md-7">1个</div>
			          	</div>
			          	<hr>
			          	
			          	<div class="row" style="margin-bottom: 25px;">
					        <div class="col-md-12" id="title" style="font-size: 25px;">
					        	粮仓（芒果船）的做法  
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 10px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 25px;">1</span>
					        	<span id="user">准备一个芒果、豆腐泡、冷的白米饭</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 10px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 25px;">2</span>
					        	<span id="user">准备一个芒果、豆腐泡、冷的白米饭</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 10px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 25px;">3</span>
					        	<span id="user">准备一个芒果、豆腐泡、冷的白米饭</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 10px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 25px;">4</span>
					        	<span id="user">准备一个芒果、豆腐泡、冷的白米饭</span>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 25px;">
					        <div class="col-md-12">
					        	<span  id="title" style="font-size: 25px;">参照这个菜谱，大家做出 11 作品</span>
					        	<a href="" id="link" style="padding-left: 100px;">全部11个作品</a>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 25px;">
					        	<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
					          			<div id="line">
					            			<div class="row">
					              				<div class="col-md-12">
					                				<img src="img/one.jpg" class="img-responsive">
										        </div>
										    </div>
										    <div class="row" style="margin: 5px 0px">
										    	<div class="col-md-12">
										    		<img src="img/user.png" class="img-circle" width="20">
						          					<div id="user_red">秒江南</div>
										    	</div>
									    	</div>
									    </div>
									</div>
								</a>
					        </div>
					        
					        <div class="row" style="margin-bottom: 25px;">
						        <div class="col-md-12">
						        	<a href="" class="btn" style="width: 100%;">上传你做的粮仓（芒果船）</a>
						        </div>
			          		</div>
			          	</div>
		            <div class="col-md-4 col-xs-4 col-sm-4">
		            	<div class="row" style="margin-bottom: 20px;margin-top: 50px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 20px;">被大家加入到以下菜单</span>
					        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					        	<a href="" id="link">加入菜单</a>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12">
					        	<span class="a_hover one_menu">水晶样点心</span>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 15px;">
					        <div class="col-md-12 text-center">
					        	<a href="" id="link">全部菜单</a>
					        </div>
			          	</div>
			          	
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<span id="title" style="font-size: 20px;">随便看看</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 50px;">
				          	<div class="col-md-6">
				          		<a href="" class="a_hover one_menu">炒馍馍</a>
				          	</div>
				          	<div class="col-md-6">
				          		<a href="" class="a_hover one_menu">人参</a>
				          	</div>
				        </div>
				        
				        <div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<span id="user_info" style="font-size: 15px;">该菜谱创建于 2015-08-05</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 20px;">
					        <div class="col-md-12">
					        	<span id="user_info" style="font-size: 15px;">2121 收藏</span>
					        </div>
			          	</div>
			          	<div class="row" style="margin-bottom: 50px;">
					        <div class="col-md-12">
					        	<span id="user_info" style="font-size: 15px;">版权归作者所有，没有作者本人的书面许可任何<br>人不得转载或使用整体或任何部分的内容。</span>
					        </div>
			          	</div>
			          	
			          	<div class="row">
					        <div class="col-md-12 text-center">
					        	<a href="">
					        		<span id="link" >举报该菜谱</span>
					        	</a>
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
