<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
번호, 이름, 아이디, 나이<br>
<c:forEach items="${list}" var="ci">
${ci.ciNum }, ${ci.ciName }, ${ci.ciId }, ${ci.ciAge }<br> 
 </c:forEach>
</body>
</html>