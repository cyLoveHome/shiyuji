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
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/nav.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/shiyuji_css/main.css" rel="stylesheet" type="text/css">
		<title>首页</title>
  	</head>
  <body>
  	<%@ include file="nav.jsp" %>  
    <div class="section" id="sec">
      <div class="container">
        <div class="row">
          <div class="col-md-12 text-center" id="font">唯有美食与爱不可辜负</div>
        </div>
        <div class="row">
          <div class="col-md-2 col-xs-2">
            <ul class="dropdown">
              <li>
                <i></i>
                <a href=" " class="link">家常菜</a>
              </li>
              <li>
                <a href=" "class="link">快手菜</a>
              </li>
              <li>
                <i></i>
                <a href=" "class="link">下饭菜</a>
              </li>
              <li>
                <i></i>
                <a href=" "class="link">早餐</a>
              </li>
              <li>
                <i></i>
                <a href=" "class="link">肉</a>
              </li>
            </ul>
          </div>
          <div class="col-md-10 col-xs-10 col-sm-10">
          	<div class="row">
          		<div class="col-md-8 col-xs-8">
		            <div class="row">
		              <div class="col-md-12 col-xs-12">
		                <div id="carousel" data-interval="2000" class="carousel slide" data-ride="carousel" style="height: 230px;">
		                  <ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						  </ol>  
		                  <div class="carousel-inner">
		                    <div class="item active">
		                      <img style="height: 230px;" src="${pageContext.request.contextPath}/img/滚动1.jpg" >
		                      <div class="carousel-caption" id="img_info">
		                        <a href=" " class="link">Title</a>
		                        <p>Description1</p>
		                      </div>
		                    </div>
		                    <div class="item">
								<img style="height: 230px;" src="${pageContext.request.contextPath}/img/滚动2.jpg" >
		                      	<div class="carousel-caption" id="img_info">
		                        <a href=" " class="link">Title</a>
		                        <p>Description2</p>
		                      </div>
							</div>
							<div class="item">
								<img style="height: 230px;" src="${pageContext.request.contextPath}/img/滚动3.jpg" >
		                      	<div class="carousel-caption" id="img_info">
		                        <a href=" " class="link">Title</a>
		                        <p>Description3</p>
		                      </div>
							</div>
		                  </div>
		                  <a class="left carousel-control" href="#carousel" data-slide="prev">
		                  	<i class="icon-prev  fa fa-angle-left"></i>
		                  </a>
		                  <a class="right carousel-control" href="#carousel" data-slide="next">
		                  	<i class="icon-next fa fa-angle-right"></i>
		                  </a>
		                </div>
		              </div>
		            </div>
		          	<div class="row">
			          	<div class="col-md-12 col-xs-12" style="margin-top: 35px;">
			          		<div class="row" style="margin-bottom: 20px;">
				          		<div class="col-md-8">
				          			<span id="title">新秀菜谱</span>&nbsp;&nbsp;&nbsp;&nbsp;
				          			<a href=" "class="link">全部</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<a href="" class="btn" id="click_btn"><i class="fa fa-angle-left click_btn"></i></a>
				          			&nbsp;&nbsp;
				          			<a href="" class="btn" id="click_btn"><i class="fa fa-angle-right click_btn"></i></a>
				          		</div>
			          		</div>
			          		
				          	<div class="row">
				          		<a href="${pageContext.request.contextPath}/createMenu/selectOne/39c5e441-67ad-4079-8011-d980c811f0f4" id="shicai_link">
					          		<div class="col-md-3 col-xs-3">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/3.jpg" class="img-responsive" width="162.5">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div class="font">柠檬</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
							        <div class="col-md-3 col-xs-3">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/4.jpg" class="img-responsive" width="162.5">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div class="font">柠檬</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
									<div class="col-md-3 col-xs-3">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/5.jpg" class="img-responsive" width="162.5">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div class="font">柠檬</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
									<div class="col-md-3 col-xs-3">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/6.jpg" class="img-responsive" width="162.5">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div class="font">柠檬</div>
									    	</div>
									    </div>
									</div>
								</a>
				        	</div>
			          	</div>
		          	</div>
			        <div class="row"  id="replace">
			          	<div class="col-md-12" style="margin-top: 35px;margin-bottom: 20px">
			          		<div class="row">
				          		<div class="col-md-8">
				          			<span id="title">厨房问答</span>&nbsp;&nbsp;&nbsp;&nbsp;
				          			<a href="${pageContext.request.contextPath}/question/all" class="link">全部</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<a class="link" onclick="addQuestion('${user.uId}');">提问题</a>
				          		</div>
				          	</div>
			          		
			          		<div class="row question_style">
				          		<div class="col-md-8">
				          			<a href=" "class="link">茄子怎样炒不会黑？</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<span id="answer">4 回答</span>
				          		</div>
			          		</div>
			          		
			          		<div class="row question_style">
				          		<div class="col-md-8">
				          			<a href=""class="link">做面包揉面买厨师机还是面包机？</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<span id="answer">7 回答</span>
				          		</div>
			          		</div>
			          		
			          		<div class="row question_style">
				          		<div class="col-md-8">
				          			<a href=" "class="link">红烧茄子怎么做才能不油？</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<span id="answer">11 回答</span>
				          		</div>
				          	</div>
			          		
			          		<div class="row question_style">
				          		<div class="col-md-8">
				          			<a href=" "class="link">烙饼怎么保存和加热？</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<span id="answer">9 回答</span>
				          		</div>
			          		</div>
			          		
			          		<div class="row">
				          		<div class="col-md-8">
				          			<a href=" "class="link">铸铁锅第一次使用要注意些什么？</a>
				          		</div>
				          		<div class="col-md-4 text-right">
				          			<span id="answer">3 回答</span>
				          		</div>
			          		</div>
			          	</div>
			        </div>
		          	<div class="row">
			          	<div class="col-md-12" style="margin-top: 35px;">
			          		<div class="row" style="margin-bottom: 20px;">
				          		<div class="col-md-8">
				          			<span id="title">最近流行</span>&nbsp;&nbsp;&nbsp;&nbsp;
				          			<a href=" "class="link">全部</a>
				          		</div>
				          		<div class="col-md-4"></div>
			          		</div>
			          		
			          		<div class="row" style="margin-bottom: 30px;">
			          			<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
							</div>
							
							<div class="row" style="margin-bottom: 30px;">
			          			<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
							</div>
							
							<div class="row" style="margin-bottom: 30px;">
			          			<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
								<a href="" id="shicai_link">
					          		<div class="col-md-6 col-xs-6">
				            			<div class="row">
				              				<div class="col-md-12">
				                				<img src="${pageContext.request.contextPath}/img/1.jpg" class="img-responsive" width="325">
									        </div>
									    </div>
									    <div class="row">
									    	<div class="col-md-12 text-center">
									    		<div id="popular">
									    			<div id="food_name">柠檬戚风小纸杯</div>
									    			<div id="food_info">ddsdks&nbsp;122做过</div>
									    		</div>
									    	</div>
									    </div>
									</div>
								</a>
							</div>
			          	</div>
			        </div>
		            <div class="row">
			          	<div class="col-md-12">
			          		<div class="row" style="margin-bottom: 20px;">
				          		<div class="col-md-8">
				          			<span id="title">时令食材</span>&nbsp;&nbsp;&nbsp;&nbsp;
				          			<a href=" "class="link">全部</a>
				          		</div>
				          		<div class="col-md-4"></div>
			          		</div>
			          		<div id="shicai">
			          			<div class="row">
			          				<div class="col-md-12">
			          					<a href="" id="shicai_link">
			          						<div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材1.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
			          					</a>
				          				<a href="" id="shicai_link">
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材2.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">金桔</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材3.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">   
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材4.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">    
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材5.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">    
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材6.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
			          				</div>
			          			</div>
			          			
			          			<div class="row">
			          				<div class="col-md-12">
			          					<a href="" id="shicai_link">
			          						<div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材1.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
			          					</a>
				          				<a href="" id="shicai_link">
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材2.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">金桔</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材3.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">   
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材4.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">    
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材5.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
								        <a href="" id="shicai_link">    
								            <div class="col-md-2 shicai">
								              <img src="${pageContext.request.contextPath}/img/食材6.jpg" class="img-responsive" width="103.33">
								              <div class="text-center shicai_name">春笋</div>
								            </div>
								        </a>
			          				</div>
			          			</div>
			          		</div>
			          	</div>
	        		</div>
          		</div>
	            <div class="col-md-4 col-xs-4">
	            	<div class="row">
	            		<div class="col-md-12 col-xs-12">
	            			<div id="log_reg">
	            				<div class="row" style="padding-top: 25px;">
		                			<div class="col-md-12">
		                    			<img src="${pageContext.request.contextPath}/img/user.png" class="center-block img-circle img-responsive" style="width: 100px;">
		                			</div>
		            			</div>
		            		<div class="row" style="margin-top: 50px;">
		                		<div class="col-md-12 text-center" style="font-size: 12px;">
		                    		<a href="${pageContext.request.contextPath}/create_menu.jsp" class="link">创建菜谱</a>&nbsp;
		                		</div>
		            		</div>
	            			</div>
	            		</div>
	            	</div>
		          	<div class="row">
		          		<div class="col-md-12">
		          			<div class="row" style="margin-bottom: 20px;margin-top: 35px;">
					          	<div class="col-md-12">
					          		<span id="title">流行搜索</span>
					          	</div>
			          		</div>
				          	<div class="row search">
				          		<div class="col-md-6">
				          			<div id="number">1&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">家常菜</a>
				          			</div>
				          		</div>
				          		<div class="col-md-6">
				          			<div id="number">6&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">披萨</a>
				          			</div>
				          		</div>
				          	</div>
				          	<div class="row search">
				          		<div class="col-md-6">
				          			<div id="number">2&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">家常菜</a>
				          			</div>
				          		</div>
				          		<div class="col-md-6">
				          			<div id="number">7&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">披萨</a>
				          			</div>
				          		</div>
				          	</div>
				          	<div class="row search">
				          		<div class="col-md-6">
				          			<div id="number">3&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">家常菜</a>
				          			</div>
				          		</div>
				          		<div class="col-md-6">
				          			<div id="number">8&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">披萨</a>
				          			</div>
				          		</div>
				          	</div>
				          	<div class="row search">
				          		<div class="col-md-6">
				          			<div id="number">4&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">家常菜</a>
				          			</div>
				          		</div>
				          		<div class="col-md-6">
				          			<div id="number">9&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">披萨</a>
				          			</div>
				          		</div>
				          	</div>
				          	<div class="row">
				          		<div class="col-md-6">
				          			<div id="number">5&nbsp;&nbsp;&nbsp;
				          				<a href="" id="shicai_link" class="font">家常菜</a>
				          			</div>
				          		</div>
				          		<div class="col-md-6">
				          			<div id="number">10&nbsp;
				          				<a href="" id="shicai_link" class="font">鱼虾水产</a>
				          			</div>
				          		</div>
				          	</div>
		          		</div>
			        </div>
		        	<div class="row">
		          		<div class="col-md-12">
		          			<div class="row" style="margin-bottom: 20px;margin-top: 25px;">
					          	<div class="col-md-12">
					          		<span id="title">流行菜单</span>&nbsp;&nbsp;&nbsp;&nbsp;
					          		<a href="" class="link">全部</a>
					          	</div>
			          		</div>
			          		
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">买了个电饭盒</a>
			          			</div>
			          		</div>
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">减脂增肌碳水篇（超快手&高颜值）</a>
			          			</div>
			          		</div>
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">包子饼子饺子馒头发糕年糕开会</a>
			          			</div>
			          		</div>
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">为爸妈量身打造</a>
			          			</div>
			          		</div>
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">软糯朴实还是轻盈酥脆？当然是主食</a>
			          			</div>
			          		</div>
			          		<div class="row menu">
			          			<div class="col-md-12 col-xs-12">
			          				<a href="" id="shicai_link" class="font">❤生日蛋糕造型❤</a>
			          			</div>
			          		</div>
			          	</div>
			        </div>
	            	<div class="row">
		          		<div class="col-md-12">
		          			<div class="row" style="margin-bottom: 20px;margin-top: 35px;">
					          	<div class="col-md-12">
					          		<span id="title">食遇记的厨神们</span>&nbsp;&nbsp;&nbsp;&nbsp;
					          		<a href="${pageContext.request.contextPath}/user/selectAllUser/${user.uId}" class="link">更多</a>
					          	</div>
			          		</div>
			          		
			          		<c:forEach  items="${users}" var="u">
			          		<div class="row users">
					          	<div class="col-md-3">
					          		<img src="${pageContext.request.contextPath}/img/user.png" class="center-block img-circle img-responsive" >
					          	</div>
					          	<div class="col-md-6">
					          		<div class="row user">
					          			<div class="col-md-12 user_name" id="shicai_link">${u.uName }</div>
					          		</div>
					          		<div class="row user">
					          			<div class="col-md-12 user_info">${u.focusNum }关注</div>
					          		</div>
					          		<div class="row">
					          			<div class="col-md-12 user_info">${u.menuNum }个菜谱  273个作品</div>
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
			          		<hr>
			          		</c:forEach>
			          		
			          		<div class="row">
			          			<div class="col-md-12 col-xs-12 text-center">
			          				<a href="${pageContext.request.contextPath}/user/selectAllUser/${user.uId}" class="link">查看更多厨友们</a>
			          			</div>
			          		</div>
			          	</div>
			        </div>
	            </div>
	        </div>
          </div>
          </div>
      	<div class="row" style="margin-top: 35px;margin-bottom: 75px;">
      		<div class="col-md-9 col-xs-9" style="width: 72.4%;;">
      			<div class="row">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left" style="padding-top: 35px;margin-bottom: 10px;">
			      				<div class="col-md-12 col-xs-12" id="title" style="font-size: 26px;">
			      					参照<span style="color: #992222;"> 713745</span> 菜谱，大家做出<span style="color: #992222;"> 26930062</span> 作品
			      				</div>
	      					</div>
	      					<div class="row foot_left" style="padding-bottom: 35px;">
			      				<div class="col-md-12 col-xs-12">
			      					<a href="" class="link">最新上传</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      					<a href="" class="link">正在流行</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      					<a href="" class="link">24小时最佳</a>
			      				</div>
	      					</div>
      					</div>
		      		</div>
      			</div>
      			<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
      			<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
      			<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
				<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
      			<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
      			<div class="row" style="margin-top: 2px;">
		      		<div class="col-md-12 col-xs-12">
		      			<div id="foot">
			      			<div class="row foot_left">
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 35px;margin-bottom: 10px;">
			      						<div class="col-md-12">
			      							<div class="user_name">#春天就酱吃#</div>
			      						</div>
			      					</div>
			      					<div class="row">
			      						<div class="col-md-12">
			      							<div class="user_info">❀葱伴侣料理有奖征集活动❀ 乍暖还寒早春日，最是食酱好时节，多一点“酱”心...</div>
			      						</div>
			      					</div>
			      				</div>
			      				<div class="col-md-6 col-md-6">
			      					<div class="row" style="padding-top: 20px;margin-bottom: 32px;">
			      						<div class="col-md-12 text-center">
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片1.jpg" class="center-block img-responsive">
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享2.jpg" class="center-block img-responsive" >
			      						</div>
			      						<div class="img_foot">
			      							<img src="${pageContext.request.contextPath}/img/分享图片3.jpg" class="center-block img-responsive">
			      						</div>
			      						</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
			    </div>
      		</div>
      		<div class="col-md-3 col-xs-3"></div>
      	</div>
      	<div class="row" style="margin-bottom: 75px;">
          <div class="col-md-12 text-center" class="user_info" style="font-size:20px ;">唯有美食与爱不可辜负</div>
        </div>
      </div>
    </div>
  </body>
</html>