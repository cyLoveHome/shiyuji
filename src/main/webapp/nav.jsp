   <%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
    <div class="navbar navbar-fixed-top" id="nav">
		    <div class="container" style="width: 1000px;">
		        <div class="navbar-header">
		          <a class="navbar-brand" href="${pageContext.request.contextPath}/user/main">
		          	<img height="45" alt="logo" src="${pageContext.request.contextPath}/img/logo.png" class="img-rounded">
		          </a>
		        </div>
		        <div class="collapse navbar-collapse" id="navbar-ex-collapse" style="margin-top: 8px;margin-right: 30px;">
		        <p class="navbar-text navbar-right">
					<a href="javascript:void(0)" class="head_pic">
						<img height="30" alt="logo" src="${pageContext.request.contextPath}/img/${user.headPic}" class="img-rounded img-circle" id="nav_headpic">
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
		            <a href="${pageContext.request.contextPath}/user/main" class="navbar-link link">首页</a>
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
         	<a href="${pageContext.request.contextPath}/personal.jsp" class="link">账号设置</a>
        </div>
        <div class="drop_line">
         	<a href="" class="link" data-toggle="modal" data-target="#Modal" onclick="out();">意见反馈</a>
        </div>
        <div class="drop_line">
         	<a href="${pageContext.request.contextPath}/login_name.jsp" class="link">注销</a>
        </div>
	</div>
	
		<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
								&times;
							</button>
							<h3 class="modal-title" id="myModalLabel">
								意见反馈
							</h3>
						</div>
						<div class="modal-body" id="suggResult">
							<h4>请输入您的建议或者您的反馈：</h4><textarea class="form-control textInfo" rows="8" id="sInfo"></textarea>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn" onclick="submitSuggest();">
								提交
							</button>
						</div>
					</div>
				</div>
			</div>
