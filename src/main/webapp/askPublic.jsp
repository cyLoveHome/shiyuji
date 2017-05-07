<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/shiyuji_js/main.js"></script>
<div class="row" style="margin-bottom: 30px;">
	<div class="col-md-12 col-xs-12 text-center">
		<div class="bg">
			<div class="row">
				<div class="col-md-12 qFont">
					我们希望每一个疑惑都有好的解答<br>提出你的问题<br>让厨友为你答疑解惑
				</div>
         	</div>
			<div class="row" style="margin-top: 15px;">
				<div class="col-md-12" >
					<a class="btn" data-toggle="modal" data-target="#Modal2">提问</a>
				<div class="modal fade" id="Modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
				<div class="modal-content">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">提问</h4>
				</div>
				<div class="modal-body" id="all">
				<input type="text" placeholder="有什么问题，快在这里发布吧!" class="queTitle"/>
				<form role="form">
				<div class="form-group">
				<span class="bgModel"></span>
				<textarea class="form-control textInfo" rows="8" id="reportCause" placeholder="这个问题是否还要相关描述信息，写在这里（选填）"></textarea>
				</div>
				</form>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn">
					发布
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