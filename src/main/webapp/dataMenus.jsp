<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>食遇记管理员</title>
    <%@ include file="forAdmin.jsp" %>
    <link href="${pageContext.request.contextPath}/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
  </head>

  <body>

  <section id="container" class="">
      <%@ include file="headAdmin.jsp" %>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <ul class="sidebar-menu">
                  <li class="">
                      <a class="" href="index.html">
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
                          <li><a class="" href="">权限分配</a></li>
                          <li><a class="" href="">管理员管理</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="" class="">
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
                          <li><a class="" href="reportInfo.html">举报处理</a></li>
                          <li><a class="" href="">意见反馈</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu active">
                      <a href="" class="">
                          <i class="icon-dashboard"></i>
                          <span>统计管理</span>
                          <span class="arrow open"></span>
                      </a>
                      <ul class="sub">
                          <li class=""><a class="" href="reportInfo.html">菜谱管理</a></li>
                          <li class="active"><a class="" href="">菜单管理</a></li>
                          <li><a class="" href="">问题管理</a></li>
                      </ul>
                  </li>
              </ul>
          </div>
      </aside>
      <section id="main-content">
          <section class="wrapper">
              <div class="row state-overview">
                  <div class="col-lg-4 col-sm-4">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="icon-reorder"></i>
                          </div>
                          <div class="value">
                              <h1>345</h1>
                              <p>菜单</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-4 col-sm-4"></div>
                  <div class="col-lg-4 col-sm-4"></div>
              </div>

              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading" style="height: 50px;background-color: rgb(248, 255, 255);">
                              	系统菜单
                          </header>
                          <table class="table table-striped border-top" id="sample_1">
                          <thead>
                          <tr>
                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
                              <th>序号</th>
                              <th class="hidden-phone">菜单名</th>
                              <th class="hidden-phone">菜单简介</th>
                              <th class="hidden-phone">创建人</th>
                              <th class="hidden-phone">创建时间</th>
                              <th class="hidden-phone"></th>
                          </tr>
                          </thead>
                          <tbody>
	                          <tr class="odd gradeX">
	                              <th style="width:8px;"><i class=" icon-star-empty"></i></th>
	                              <td>Jhone doe</td>
	                              <td class="hidden-phone"><a href="mailto:jhone-doe@gmail.com">jhone-doe@gmail.com</a></td>
	                              <td class="hidden-phone">10</td>
	                              <td class="hidden-phone">02.03.2013</td>
	                              <td class="hidden-phone">02.03.2013</td>
	                              <td class="hidden-phone">
	                              	<button class="label label-info">查看详情</button>
	                              	<button class="label label-warning">屏蔽</button>
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

    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js" ></script>
    <script src="js/jquery.customSelect.min.js" ></script>

    <script src="js/common-scripts.js"></script>

    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>

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
