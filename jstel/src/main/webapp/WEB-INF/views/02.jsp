<%@page import="jstel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo0 = new UserVo();	
	pageContext.setAttribute("vo",vo0);
	vo0.setNo(1L);
	vo0.setName("둘리 0");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>scope(객체의 존속 범위)</h4>
	${vo.no }<br>
	${vo.name }<br>
	===========request scope============<br>
	${sessionScope.vo.no }<br>
	${sessionScope.vo.name }<br>
	===========session scope============<br>
	${requestScope.vo.no }<br>
	${requestScope.vo.name }<br>
	
	============application scope===========<br>
	${applicationScope.vo.no }<br>
	${applicationScope.vo.name }<br>
	
</body>
</html>