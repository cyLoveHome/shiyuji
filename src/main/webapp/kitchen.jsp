<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		            			<img src="${pageContext.request.contextPath}/img/${us.headPic }" class="img-circle" width="140">
		            		</div>
		            		<div class="col-md-7 col-xs-7 col-sm-7">
		            			<div class="row" style="margin-bottom: 20px;">
		            				<div class="col-md-12">
		            					<span id="kitchen_font">${us.uName} 的厨房</span>
		            				</div>
		            			</div>
		            			<div class="row">
		            				<div class="col-md-12">
		            				<c:set value="${ us }" var="pageuser" scope="page"></c:set>
		            				<%
							          		User u = (User)pageContext.getAttribute("pageuser");
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
		            								<a href="" class="link" style="font-size: 16px;">${us.toFocusNum }</a>
		            							</div>
		            							<div class="col-md-6 text-center" style="margin-top: 5px;">
		            								<div id="focus">被关注</div>
		            								<a href="" class="link" style="font-size: 16px;">${us.focusNum }</a>
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
		            			<a href="${pageContext.request.contextPath}/createMenu/kitchen/${us.uId}" class="btn anniu">菜谱 ${us.menuNum }</a>
		            			<a onclick="kitchen('2','${us.uId}','${us.uName }');"  class="btn anniu">菜单 ${us.menusNum }</a>
		            			<a onclick="kitchen('3','${us.uId}','${us.uName }');"  class="btn anniu">收藏</a>
		            			<a onclick="kitchen('4','${us.uId}');"  class="btn anniu">疑惑问题</a>
		            			<a onclick="kitchen('5','${us.uId}');"  class="btn anniu">举报内容</a>
		            			<a onclick="kitchen('6','${us.uId}');"  class="btn anniu">意见反馈 </a>
		            			<c:if test="${user.uId ne us.uId}">
		            				<a href=""  class=" navbar-link link" style="margin-left: 365px;" data-toggle="modal" data-target="#Modal1" onclick="isReport('${us.uId}','${user.uId }');">
					        		举报该用户
					        		</a>
					        		<div class="modal fade" id="Modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
														&times;
													</button>
													<h4 class="modal-title" id="myModalLabel">
														举报         ${us.uName}
													</h4>
												</div>
												<div class="modal-body" id="reportInfo">
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios1" value=" 广告或垃圾信息" checked> 广告或垃圾信息
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios2" value="与主题不符">与主题不符
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios3" value="非美食图片">非美食图片
														</label>
													</div>
													<div class="radio">
														<label>
															<input type="radio" name="optionsRadios" id="optionsRadios4" value="其他原因">其他原因
														</label>
													</div>
													<form role="form">
														<div class="form-group">
															<textarea class="form-control" rows="3" id="reportCause" placeholder="请输入其他原因"></textarea>
														</div>
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn" onclick="reportIt('${us.uId}','${user.uId }');">
														举报
													</button>
												</div>
											</div>
										</div>
									</div>
		            			</c:if>
		            		</div>
		            	</div>
		            	<div class="kitInfo">
		            	<div class="row" style="margin-bottom: 40px;">
		            		<div class="col-md-12 col-xs-12" id="kitchen_font" style="font-size: 18px;">${us.uName } 创建的菜谱</div>
		            	</div>
		            	<div class="row" style="margin-bottom: 40px;">
		            		<c:if test="${not empty myMenu }">
					          	<c:forEach items="${myMenu }" var="menu">
					            	<div class="col-md-4 col-xs-4">
					            		<div id="line">
					            			<div class="row img_style">
					            				<div class="col-md-12 col-xs-12">
					            					<img src="${pageContext.request.contextPath}/img/收藏1.jpg" class="img-responsive">
					            				</div>
					            			</div>
					            			<div class="row img_style">
					            				<div class="col-md-12 col-xs-12">
					            					<a href="" class="link" style="font-size: 18px;">${menu.mName }</a>
					            				</div>
					            			</div>
					            			<div class="row img_style">
					            				<div class="col-md-12 col-xs-12">
					            					<span class="user_info">${menu.likeNum } 赞过 ${menu.menuCollectNum } 收藏 | <a href="" id="author">${us.uName }</a></span>
					            				</div>
					            			</div>
					            		</div>
					            	</div>
					            </c:forEach>
					          </c:if>
			            	
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
