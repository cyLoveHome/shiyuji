<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<%@ include file="css_js.jsp" %>
	<script type="text/javascript">
	 $(function(){
		$("#menu_input").change(function(){
			var formData = new FormData();
			formData.append('file', $('#menu_input')[0].files[0]);
			$.ajax({
			    url: 'test/menuupload',
			    type: 'POST',
			    cache: false,
			    data: formData,
			    processData: false,
			    contentType: false
			}).done(function(res) {
				
				console.debug(res);
				var str = "<img src='http://localhost:8080/"+res+"'/>";
				console.debug(str);
				$("#imgPre").append(str);
			}).fail(function(res) {
				
			});
		});
	});
	</script>
</head>
<body>
	<form action="test/menuupload"  method="post" enctype="multipart/form-data">
		<input type="file" id="menu_input" name="file" style="display: none;" multiple="multiple"/>
		<label for="menu_input" id="menu_font">上传</label>
		<div id="imgPre">
		</div>
		<button type="submit">上传</button>
	</form>
</body>
</html>
