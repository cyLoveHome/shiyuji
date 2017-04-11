   <%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
    <div class="navbar navbar-fixed-top" id="nav">
		    <div class="container" style="width: 1000px;">
		        <div class="navbar-header">
		          <a class="navbar-brand" href="${pageContext.request.contextPath}/main.jsp">
		          	<img height="45" alt="logo" src="${pageContext.request.contextPath}/img/logo.png" class="img-rounded">
		          </a>
		        </div>
		        <div class="collapse navbar-collapse" id="navbar-ex-collapse" style="margin-top: 8px;margin-right: 30px;">
		        <p class="navbar-text navbar-right">
					<a href="javascript:void(0)" class="head_pic">
						<img height="30" alt="logo" src="${pageContext.request.contextPath}/img/user.png" class="img-rounded img-circle">
					</a>&nbsp;&nbsp;
					<a href="" class="navbar-link link">${user.uName }</a>
				</p>
		        <form class="navbar-form navbar-left" role="search">
		            <div class="form-group">
		              <input type="text" class="form-control" placeholder="菜谱、食材" id="input">
		            </div>
		            <div type="submit" class="btn btn-default">搜索</div>
		        </form>
		        <p class="navbar-text">
		            <a href="${pageContext.request.contextPath}/main.jsp" class="navbar-link link">首页</a>
		        </p>
		        <p class="navbar-text">
		            <a href="#" class="navbar-link link">菜谱分类</a>
		        </p>
		        <p class="navbar-text">
		            <a href="#" class="navbar-link link">菜单</a>
		        </p>
		        <p class="navbar-text">
		            <a href="#" class="navbar-link link">作品动态</a>
		        </p>
		        </div>
		    </div>
    </div>
    <div class="drop_border">
        <div class="drop_line">
         	<a href="${pageContext.request.contextPath}/kitchen.jsp" class="link">我的厨房</a>
        </div>
        <div class="drop_line">
         	<a href="#" class="link">我的菜单</a>
        </div>
        <div class="drop_line">
         	<a href="#" class="link">账号设置</a>
        </div>
        <div class="drop_line">
         	<a href="#" class="link">注销</a>
        </div>
	</div>
