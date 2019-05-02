<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>사원 등록</title>
<!-- Bootstrap core CSS -->
<link href="/resources/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/resources/signin.css" rel="stylesheet">
</head>
<script>
	window.addEventListener('load',function(){
	});
</script>
<body class="text-center">
	<form class="form-signin" action="/emp/login" method="post">
		<img class="mb-4" src="/resources/bootstrap-solid.svg" alt=""
			width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
		
		<label for="inputEmail" class="sr-only">Email address</label> 
		
		<input type="text" id="id" class="form-control"
		placeholder="ID" required autofocus	name="id"> 
		
		<label for="inputPassword" class="sr-only">Password</label> 
		
		<input type="password" id="pwd" class="form-control"
		placeholder="Password" required	name="pwd">
		<select name="deptNo" id="deptNo" class="form-control">
			<c:forEach items="${deptList}" var="dept">
				<option value="${dept.DEPTNO}">${dept.DNAME}</option>
			</c:forEach>
		</select>
		<button class="btn btn-lg btn-primary btn-block" 
		type="button" id="signinBtn">Sign in</button>
		<p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
	</form>

</body>
</html>