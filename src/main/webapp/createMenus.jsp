<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/kitchen.js"></script>
<div class="row" style="margin-bottom: 30px;">
	<div class="col-md-12 col-xs-12 text-center">
		<div class="bg">
			<div class="row">
				<div class="col-md-12 qFont">
					厨房里有你喜欢的菜单吗？<br>没有的话<br>赶紧创建一个吧
				</div>
         	</div>
			<div class="row" style="margin-top: 15px;">
				<div class="col-md-12" >
					<a class="btn" data-toggle="modal" data-target="#Modal2" style="width: 100px;">创建菜单</a>
				<div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel" style="text-align: left;">创建一个新菜单</h4>
				</div>
				<div class="modal-body" id="all">
				<h4 style="text-align: left;">菜单标题：</h4><input type="text" placeholder="  快创建你的新菜单吧！" class="queTitle" id="msTitle"/><br>
            	<h4 style="text-align: left;">描述：</h4><textarea class="form-control textInfo" rows="8" id="msInfo"></textarea>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn" onclick="createMenus('${user.uId }');">
					创建
				</button>
				</div>
				</div>
				</div>
				</div>
				</div>
			 </div>
		</div>
	</div>
</div>