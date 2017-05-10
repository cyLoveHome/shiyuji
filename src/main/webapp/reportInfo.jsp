<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="img/favicon.html">
    <title>食遇记管理员</title>
    <%@ include file="forAdmin.jsp" %>
  </head>

  <body>

    <section id="container" class="">
    <%@ include file="headAdmin.jsp" %>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu">
                  <li class="">
                      <a class="" href="${pageContext.request.contextPath}/adminMain.jsp">
                          <i class="icon-home"></i>
                          <span>主页</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks active"></i>
                          <span>系统用户</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="${pageContext.request.contextPath}/">权限分配</a></li>
                          <li class=""><a class="" href="${pageContext.request.contextPath}/">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu active">
                      <a href="javascript:;" class="">
                      	<i class="icon-book"></i>
                        <span>用户反馈</span>
                        <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li  class="active"><a class="" href="">举报处理</a></li>
                          <li><a class="" href="">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="reportInfo.html">菜谱管理</a></li>
                          <li><a class="" href="">菜单管理</a></li>
                          <li><a class="" href="">问题管理</a></li>
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
                              	被举报菜谱详情
                            	<button class="label label-success" style="margin-left: 980px;">已处理</button>
                            	<button class="label label-danger" style="margin-left: 20px;">未处理</button>
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>被举报菜谱</th>
                              <th class="hidden-phone">举报原因</th>
                              <th class="hidden-phone">举报人</th>
                              <th class="hidden-phone">举报时间</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                          <tr class="odd gradeX">
	                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
	                              <td>Jhone doe</td>
	                              <td class="hidden-phone"><a href="mailto:jhone-doe@gmail.com">jhone-doe@gmail.com</a></td>
	                              <td class="hidden-phone">10</td>
	                              <td class="center hidden-phone">02.03.2013</td>
	                              <td class="hidden-phone">
	                              	<a class="label label-info"  href="${pageContext.request.contextPath}/createMenu/selectOne/${um.menu.mId}?admin=1" target="_blank">查看详情</a>
	                              	<a class="label label-warning">屏蔽</a>
	                              </td>
	                          </tr>
                          </tbody>
                           <tfoot>
                          		<tr>
                          				<td colspan="7" style="text-align: center;">
                          					<ul class="pagination">
                          					<li><a href="#">总页数 5</a></li>
													<li><a href="#">&laquo;</a></li>
													<li><a href="#">1</a></li>
													<li><a href="#">&raquo;</a></li>
											</ul>
                          				</td>
                          		</tr>
                          </tfoot>
                          </table>
                      </section>
                  </div>
              		
              		<div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading" style="height: 50px;background-color: rgb(248, 255, 255);">
                              	被举报用户详情
                            	<button class="label label-success" style="margin-left: 980px;">已处理</button>
                            	<button class="label label-danger" style="margin-left: 20px;">未处理</button>
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>被举报人</th>
                              <th class="hidden-phone">举报原因</th>
                              <th class="hidden-phone">账户状态</th>
                              <th class="hidden-phone">举报人</th>
                              <th class="hidden-phone">举报时间</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                          <tr class="odd gradeX">
	                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
	                              <td>Jhone doe</td>
	                              <td class="hidden-phone"><a href="mailto:jhone-doe@gmail.com">jhone-doe@gmail.com</a></td>
	                              <td class="hidden-phone">封号</td>
	                              <td class="hidden-phone">10</td>
	                              <td class="center hidden-phone">02.03.2013</td>
	                              <td class="hidden-phone">
	                              	 <a class="label label-info"  href="${pageContext.request.contextPath}/createMenu/kitchen/${u.uId}?admin=1" target="_blank">查看详情</a>
	                              	 <a class="label label-danger btn" style="margin-left: 10px;" onclick="click('');">处理</a>
	                              	 <%@ include file="adminModel.jsp" %>
	                              </td>
	                          </tr>
                          </tbody>
                          <tfoot>
                          		<tr>
                          				<td colspan="7" style="text-align: center;">
                          					<ul class="pagination">
                          					<li><a href="#">总页数 5</a></li>
													<li><a href="#">&laquo;</a></li>
													<li><a href="#">1</a></li>
													<li><a href="#">&raquo;</a></li>
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

    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/data-tables/DT_bootstrap.js"></script>
    <script src="${pageContext.request.contextPath}/js/adminJs/common-scripts.js"></script>
  </body>
</html>
