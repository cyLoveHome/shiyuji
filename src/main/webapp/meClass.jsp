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
                      <a class="" href="adminMain.html">
                          <i class="icon-home"></i>
                          <span>主页</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-tasks active"></i>
                          <span>系统用户</span>
                          <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="allUser.html">权限分配</a></li>
                          <li class=""><a class="" href="allAdmin.html">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu active">
                      <a href="meClass.html" class="">
                          <i class="icon-th"></i>
                          <span>菜谱分类</span>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                      	<i class="icon-book"></i>
                        <span>用户反馈</span>
                        <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li  class=""><a class="" href="reportInfo.html">举报处理</a></li>
                          <li class=""><a class="" href="suggInfo.html">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow"></span>
                      </a>
                      <ul class="sub">
                          <li><a class="" href="dataMenu.html">菜谱管理</a></li>
                          <li><a class="" href="dataMenus.html">菜单管理</a></li>
                          <li><a class="" href="dataQuestion.html">问题管理</a></li>
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
                              	菜谱分类类别
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>序号</th>
                              <th class="hidden-phone">类别名</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                          <tr class="odd gradeX">
	                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
	                              <td>Jhone doe</td>
	                              <td class="hidden-phone">10</td>
	                              <td class="hidden-phone ">
	                              	<button class="label label-info">删除</button>
	                              </td>
	                          </tr>
	                          <tr>
	                          	<td class="text-center" colspan="4" >
	                          		<button class="label label-warning" style="font-size: 16px;">添加</button>
	                          	</td>
	                          </tr>
                          </tbody>
                          <tfoot>
                          		<tr>
                          			<th>
                          				<td colspan="3" style="text-align: center;">
                          					<ul class="pagination">
																			<li><a href="#">&laquo;</a></li>
																			<li><a href="#">1</a></li>
																			<li><a href="#">2</a></li>
																			<li><a href="#">3</a></li>
																			<li><a href="#">4</a></li>
																			<li><a href="#">5</a></li>
																			<li><a href="#">&raquo;</a></li>
																		</ul>
                          				</td>
                          			</th>
                          		</tr>
                          </tfoot>
                          </table>
                      </section>
                  </div>
              </div>
          </section>
      </section>
  </section>

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
    <script src="js/common-scripts.js"></script>
  </body>
</html>
