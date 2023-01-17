<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    
    String num = request.getParameter("no");
    Long no = Long.parseLong(num);
    String password = request.getParameter("password");

    
    
    new GuestbookDao().deleteBypassword(no,password);

    response.sendRedirect("/guestbook01");
  
    %>
   <!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h1>성공적으로 삭제되었습니다.</h1>
	</body>
</html> 
