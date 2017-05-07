<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>Bootstrap 实例 - 模态框（Modal）插件</title>
	<%@ include file="css_js.jsp" %>
</head>
<style>
        	.queTitle{
        		width: 100%;
        		height: 45px;
        		margin-bottom: 35px;
        	}
        	.textInfo{
        		border-radius: 0px;
        	}
        	.modal-header{
        	    background-color: #b24422;
    			border-radius: 6px 6px 0px 0px;
        	}
        	.close{
        	    font-size: 31px;
        	    }
</style>
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
				<h3 class="modal-title" id="myModalLabel">
					意见反馈
				</h3>
			</div>
			<div class="modal-body" id="all">
				<h4>请输入您的建议或者您的反馈：</h4><textarea class="form-control textInfo" rows="8" id="reportCause"></textarea>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn">
					提交
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
</html>