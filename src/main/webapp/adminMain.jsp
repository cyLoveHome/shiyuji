<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.User" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndMenu" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndMenus" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndQuestion" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndSugg" %>
<%@ page import="com.shiyuji.cy.pojo.UserAndReport" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.html">
    <title>食遇记管理员</title>
    <link href="${pageContext.request.contextPath}/css/adminCss/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/adminCss/bootstrap-reset.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="${pageContext.request.contextPath}/css/adminCss/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/adminCss/style-responsive.css" rel="stylesheet" />
	
	<!-- easyui -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" ></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/bootstrap/easyui.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/easyui/themes/icon.css" />
	
	<style>
		.moreClick{
			margin-left: 1100px;
   			color: #22c0fc;
   			font-size: 16px;
			}
		.moreClick:hover{
			background-color: rgba(66, 139, 202, 0.58);
			color: white;
			}
	</style>
  </head>

  <body>

  <section id="container" class="">
     <%@ include file="headAdmin.jsp" %>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu">
                  <li class="active">
                      <a class="" href="javascript:;">
                          <i class="icon-home"></i>
                          <span>主页</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks"></i>
                          <span>系统用户</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="${pageContext.request.contextPath}/user/all">权限分配</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/all">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                      	<i class="icon-book"></i>
                        <span>用户反馈</span>
                        <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li  class=""><a class="" href="${pageContext.request.contextPath}/report/user/all">举报用户</a></li>
                          <li  class=""><a class="" href="${pageContext.request.contextPath}/report/menu/all">举报菜谱</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/suggestion/all">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="${pageContext.request.contextPath}/menu/all">菜谱管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/menus/all">菜单管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/question/all">问题管理</a></li>
                      </ul>
                  </li>
              </ul>
          </div>
      </aside>
      <section id="main-content">
          <section class="wrapper">
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="icon-user"></i>
                          </div>
                          <div class="value">
                              <h1>${uNum }</h1>
                              <p>系统用户</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol red">
                              <i class="icon-columns"></i>
                          </div>
                          <div class="value">
                              <h1>${mNum }</h1>
                              <p>菜谱</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="icon-reorder"></i>
                          </div>
                          <div class="value">
                              <h1>${msNum }</h1>
                              <p>菜单</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="icon-question-sign"></i>
                          </div>
                          <div class="value">
                              <h1>${qNum }</h1>
                              <p>问题</p>
                          </div>
                      </section>
                  </div>
              </div>

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <div class="panel-body progress-panel" style="height: 60px;">
                              <div class="task-progress">
                                  <h1>系统最新动态</h1>
                              </div>
                          </div>
                          <table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="6" style="text-align: left;font-size: larger;color: orange;">
	                              		新注册用户
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>用户名</td>
	                              	<td>邮箱</td>
	                              	<td>账号状态</td>
	                              	<td>注册时间</td>
	                              	<td>操作</td>
	                              </tr>
	                              <c:if test="${not empty uList }">
					          			<c:forEach items="${uList }" var="u" varStatus="ul">
				                              <tr>
				                                  <td>${ul.index + 1 }</td>
				                                  <td>${u.uName }</td>
				                                  <td>${u.bindEmail }</td>
				                                  <c:if test="${u.state eq 0}">
				                                  	<td>正常</td>
				                                  </c:if>
				                                  <c:if test="${u.state ne 0}">
				                                  	<td>封号</td>
				                                  </c:if>
				                                  <%
				                                  User us = (User)pageContext.getAttribute("u");
							          				Date date = new Date(us.getCreateTime()); 
							          			%>
				                                  <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
				                                  <td><a class="label label-success btn"  href="${pageContext.request.contextPath}/createMenu/kitchen/${u.uId}?admin=1" target="_blank">查看详情</a></td>
				                              </tr>
	                              		</c:forEach>
	                              </c:if>
	                              <tr>
	                              	<td colspan="6" ><a href="" class="moreClick">更多</a></td>
	                              </tr>
	                             </tbody>
                          </table>
                      
                      		<table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="6" style="text-align: left;font-size: larger;color: orange;">
	                              		新创建菜谱
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>菜谱名</td>
	                              	<td>菜谱简介</td>
	                              	<td>创建人</td>
	                              	<td>创建时间</td>
	                              	<td>操作</td>
	                              </tr>
	                              <c:if test="${not empty mlist }">
					          			<c:forEach items="${mlist }" var="um" varStatus="ml">
				                              <tr>
				                                   <td>${ml.index + 1 }</td>
				                                  <td>${um.menu.mName }</td>
				                                  <td style="width: 230px;">${um.menu.mInfo }</td>
				                                  <td>${um.u.uName }</td>
				                                  <%
				                                  UserAndMenu um = (UserAndMenu)pageContext.getAttribute("um");
							          				Date date = new Date(um.getMenu().getCreateTime()); 
							          			%>
				                                  <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
				                                  <td><a class="label label-success btn" href="${pageContext.request.contextPath}/createMenu/selectOne/${um.menu.mId}?admin=1" target="_blank">查看详情</a></td>
				                              </tr>
				                         </c:forEach>
				                          <tr>
	                              	<td colspan="6" ><a href="" class="moreClick">更多</a></td>
	                              </tr>
	                              </c:if>
	                             
	                             </tbody>
                          </table>
                     
                     			<table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="6" style="text-align: left;font-size: larger;color: orange;">
	                              		新创建菜单
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>菜单名</td>
	                              	<td>菜单简介</td>
	                              	<td>创建人</td>
	                              	<td>创建时间</td>
	                              	<td>操作</td>
	                              </tr>
	                            <c:if test="${not empty mslist }">
					          			<c:forEach items="${mslist }" var="ums" varStatus="msl">
				                              <tr>
				                                   <td>${msl.index + 1 }</td>
				                                  <td>${ums.menus.msName }</td>
				                                  <td>${ums.menus.msInfo }</td>
				                                  <td>${ums.u.uName }</td>
				                                  <%
				                                  UserAndMenus um = (UserAndMenus)pageContext.getAttribute("ums");
							          				Date date = new Date(um.getMenus().getCreateTime()); 
							          			%>
				                                  <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
				                                  <td><a class="label label-success btn" href="${pageContext.request.contextPath}/menus/selectOne/${ums.menus.msId}?admin=1" target="_blank">查看详情</a></td>
				                              </tr>
				                         </c:forEach>
	                              </c:if>
	                              <tr>
	                              	<td colspan="6" ><a href="" class="moreClick">更多</a></td>
	                              </tr>
	                             </tbody>
                          </table>
                          
                          <table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="7" style="text-align: left;font-size: larger;color: orange;">
	                              		新提问
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>问题名</td>
	                              	<td>问题简介</td>
	                              	<td>回答总数</td>
	                              	<td>提问人</td>
	                              	<td>提问时间</td>
	                              	<td>操作</td>
	                              </tr>
	                         	 <c:if test="${not empty qlist }">
					          			<c:forEach items="${qlist }" var="uq" varStatus="ql">
				                              <tr>
				                                   <td>${ql.index + 1 }</td>
				                                  <td style="width: 300px;">${uq.que.qTitle }</td>
				                                  <td style="width: 300px;">${uq.que.qInfo }</td>
				                                  <td style="width: 90px;">${uq.que.answerNum }</td>
				                                  <td>${uq.us.uName }</td>
				                                  <%
				                                  UserAndQuestion uq = (UserAndQuestion)pageContext.getAttribute("uq");
							          				Date date = new Date(uq.getQue().getCreateTime()); 
							          			%>
				                                  <td style="width: 200px;"><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
				                                  <td><a class="label label-success btn" href="${pageContext.request.contextPath}/question/one/${uq.que.qId}?admin=1" target="_blank">查看详情</a></td>
				                              </tr>
				                         </c:forEach>
	                              </c:if>
	                              <tr>
	                              	<td colspan="7" ><a href="" class="moreClick" style="margin-left: 1128px;">更多</a></td>
	                              </tr>
	                             </tbody>
                          </table>
                      
                      		<table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="6" style="text-align: left;font-size: larger;color: orange;">
	                              		最新举报
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>被举报人</td>
	                              	<td>举报原因</td>
	                              	<td>账号状态</td>
	                              	<td>举报人</td>
	                              	<td>举报时间</td>
	                              	<td style="width: 232px;">操作</td>
	                              </tr>
	                              <c:if test="${not empty ruList }">
					          			<c:forEach items="${ruList }" var="ru" varStatus="rul">
				                           <tr>
				                                  <td>${rul.index + 1 }</td>
				                                  <td>${ru.rus.uName }</td>
				                                  <td>${ru.ru.cause }</td>
				                                  <c:if test="${ru.rus.state eq 0}">
				                                  	<td>正常</td>
				                                  </c:if>
				                                  <c:if test="${ru.rus.state ne 0}">
				                                  	<td>封号</td>
				                                  </c:if>
				                                  <td>${ru.u.uName }</td>
				                                  <%
				                                  UserAndReport ur = (UserAndReport)pageContext.getAttribute("ru");
							          				Date date = new Date(ur.getRu().getReportTime()); 
							          			%>
				                                  <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
				                                  <td><a class="label label-success btn" href="${pageContext.request.contextPath}/createMenu/kitchen/${ru.rus.uId}?admin=1" target="_blank">查看详情</a>
	                                  				 <a class="label label-danger btn" style="margin-left: 10px;" id="handle${ reportUser.ruId }" onclick="handle('${ reportUser.ruId }','${ reportUser.uName }','${ reportUser.reportTime }')">处理</a>
	                                  				 <%@ include file="adminModel.jsp" %>
	                                  			  </td>
				                            </tr>
				                        </c:forEach>
	                              </c:if>
	                              <tr>
	                              	<td colspan="7" ><a href="" class="moreClick">更多</a></td>
	                              </tr>
	                             </tbody>
                          </table>
                      
                      		<table class="table table-hover personal-task">
                              <tbody>
	                              <tr>
	                              	<td colspan="6" style="text-align: left;font-size: larger;color: orange;">
	                              		最新意见反馈
	                              	</td>
	                              </tr>
	                              <tr>
	                              	<td>序号</td>
	                              	<td>反馈人</td>
	                              	<td>反馈内容</td>
	                              	<td>反馈时间</td>
	                              	<td colspan="2" style="width: 74px;">操作</td>
	                              </tr>
	                              <c:if test="${not empty sList }">
					          		<c:forEach items="${sList }" var="su" varStatus="sl">
				                           <tr>
				                                  <td>${sl.index + 1 }</td>
				                                  <td>${su.u.uName }</td>
				                                  <td>${su.s.sInfo }</td>
				                                  <%
				                                  UserAndSugg sugg = (UserAndSugg)pageContext.getAttribute("su");
							          				Date date = new Date(sugg.getS().getCreateTime()); 
							          			%>
				                                  <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date) %></td>
	                                 			 <td><a class="label label-success btn">已看</a></td>
	                              			</tr>
	                              		</c:forEach>
	                              </c:if>
	                              <tr>
	                              	<td colspan="6" ><a href="" class="moreClick">更多</a></td>
	                              </tr>
	                             </tbody>
                            
                          </table>
                      </section>
                  </div>
              </div>
  </section>
  

  	<script src="${pageContext.request.contextPath}/js/adminJs/jquery.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery-1.8.3.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/bootstrap.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.scrollTo.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.sparkline.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/owl.carousel.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.customSelect.min.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/common-scripts.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/sparkline-chart.js"  type="text/javascript" ></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/easy-pie-chart.js"  type="text/javascript" ></script> 
    
     <script src="${pageContext.request.contextPath}/js/admin-report.js"  type="text/javascript" ></script> 
  <script>
      $(document).ready(function() {
          $("#owl-demo").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });
      
      $(function(){
          $('select.styled').customSelect();
      });
  	</script> 
  	
  	<jsp:include page="adminModel.jsp"></jsp:include>
  </body>
</html>
