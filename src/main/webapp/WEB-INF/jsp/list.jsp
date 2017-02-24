<%@ page language="java" isELIgnored="false" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>list</title>
</head>
<body>
	<h1>sdhjasd list</h1>
	<c:forEach items="${books }" var="book">
		${book.bookId }
		${book.name }
		${book.number }
	</c:forEach>
	
</body>
</html>