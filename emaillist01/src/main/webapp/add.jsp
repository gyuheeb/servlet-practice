<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%
 	request.setCharacterEncoding("utf-8");
	
	String firstName= request.getParameter("firstName");
	String lastName= request.getParameter("lastName");
	String email= request.getParameter("email");
	
	
	//DB
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstname(firstName);
	vo.setLastname(lastName);
	vo.setEmail(email);
	
	new EmaillistDao().insert(vo);
	
	response.sendRedirect("/emaillist01");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>성공적으로 등록이 되었습니다.</h1>
</body>
</html>