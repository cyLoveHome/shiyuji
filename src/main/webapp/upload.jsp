<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>list</title>
</head>
<body>
	<form name="Form2" action="book/springUpload" method="post"  enctype="multipart/form-data">
		<h1>使用spring mvc提供的类的方法上传文件</h1>
		<input type="file" name="file">
		<input type="submit" value="upload"/>
	</form>
</body>
</html>