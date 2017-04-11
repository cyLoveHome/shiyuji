<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 模态框（Modal）插件</title>
	<%@ include file="css_js.jsp" %>
</head>
<body>

<!-- 按钮触发模态框 -->
<a href="" class="link" id="more_comment" onclick="moreComm('${Menu.mId}')" data-toggle="modal" data-target="#Modal">
	提问
</a>
<!-- 模态框（Modal） -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					举报 
				</h4>
			</div>
			<div class="modal-body" id="all">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn">
					发布
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>