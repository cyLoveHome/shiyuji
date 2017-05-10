   <%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
      
      <p class="navbar-text navbar-right" style="margin-top: 20px;margin-right: -320px;">
		<a data-target="#myModal-1" data-toggle="modal" class="link">管理员登录入口</a>
	  </p>
      <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal-1" class="modal fade">
	        <div class="modal-dialog">
	          <div class="modal-content">
	            <div class="modal-header">
	              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
	              <h4 class="modal-title">食遇记欢迎您，亲爱的管理员</h4>
	            </div>
	            <div class="modal-body">
	              <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/admin/login" method="post">
	              <div class="form-group">
	                <label for="inputEmail3" class="col-lg-2 control-label">用户名</label>
	                <div class="col-lg-10">
	                	<input type="text" class="form-control" id="inputEmail3" placeholder="UserName"  name="loginType" >
	                </div>
	              </div>
	              <div class="form-group">
	                <label for="inputPassword3" class="col-lg-2 control-label">密码</label>
	                <div class="col-lg-10">
	                  <input type="password" class="form-control" id="inputPassword3" placeholder="Password"  name="pwd" > 
	                </div>
	              </div>
	              <div class="form-group">
	                <div class="col-lg-offset-2 col-lg-10">
	                  <div class="checkbox">
	                    <label>
	                      <input type="checkbox"> 记住我
	                    </label>
	                  </div>
	                </div>
	              </div>
	              <div class="form-group">
	                <div class="col-lg-offset-2 col-lg-10">
	                  <button type="submit" class="btn" style="margin-left: 0px;">登录</button>
	                </div>
	              </div>
	            </form>
	          </div>
	        </div>
	      </div>
	    </div>