<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.*" %>
<%@ page import="com.shiyuji.cy.pojo.User" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.html">
    <title>食遇记管理员</title>
   	<%@ include file="forAdmin.jsp" %>
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
                  <li class="">
                      <a class="" href="${pageContext.request.contextPath}/admin/load">
                          <i class="icon-home"></i>
                          <span>主页</span>
                      </a>
                  </li>
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks"></i>
                          <span>系统用户</span>
                          <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a class="" href="${pageContext.request.contextPath}/admin/user/all">权限分配</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/admin/all">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                      	<i class="icon-book"></i>
                        <span>用户反馈</span>
                        <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li  class=""><a class="" href="${pageContext.request.contextPath}/admin/report/user/all">举报用户</a></li>
                          <li  class=""><a class="" href="${pageContext.request.contextPath}/admin/report/menu/all">举报菜谱</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/suggestion/all">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="${pageContext.request.contextPath}/admin/menu/all">菜谱管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/menus/all">菜单管理</a></li>
                          <li><a class="" href="${pageContext.request.contextPath}/admin/question/all">问题管理</a></li>
                      </ul>
                  </li>
              </ul>
          </div>
      </aside>
      <section id="main-content">
          <section class="wrapper">
              <div class="row">
                  <div class="col-lg-12" style="margin-bottom: 40px;">
                      <section class="panel">
                          <header class="panel-heading" style="height: 50px;background-color: rgb(248, 255, 255);">
                              	普通用户
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>序号</th>
                              <th class="hidden-phone">用户名</th>
                              <th class="hidden-phone">邮箱</th>
                              <th class="hidden-phone">账号状态</th>
                              <th class="hidden-phone">注册时间</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                              <c:if test="${not empty allusers }">
					          			<c:forEach items="${allusers }" var="u" varStatus="ul">
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
                          </tbody>
                           <tfoot>
                          		<tr>
                          				<td colspan="7" style="text-align: center;">
                          					<ul class="pagination">
                          						<li><a href="#">总页数   ${page.totalPageCount }</a></li>
												<c:if test="${page.pageNow ne 1}">
													<li><a href="${pageContext.request.contextPath}/admin/user/all?currentpage=${page.pageNow-1}">&laquo;</a></li>
											    </c:if>
											    <li><a href="#">${page.pageNow }</a></li>
											    <c:if test="${page.pageNow ne page.totalPageCount}">
											        <li><a href="${pageContext.request.contextPath}/admin/user/all?currentpage=${page.pageNow+1}">&raquo;</a></li>
											    </c:if>
											</ul>
                          				</td>
                          		</tr>
                          </tfoot>
                          </table>
                      </section>
                  </div>
              </div>
          </section>
      </section>
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
  </body>
</html>
