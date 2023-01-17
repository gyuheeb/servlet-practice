<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("utf-8");

String name= request.getParameter("name");
String password= request.getParameter("password");
String message= request.getParameter("message");
String reg_date= request.getParameter("reg_date");

//DB
GuestbookVo vo = new GuestbookVo();
vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);
vo.setReg_date(reg_date);

new GuestbookDao().insert(vo);

response.sendRedirect("/guestbook01");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>
</head>
<body>
	<h1>성공적으로 등록이 되었습니다.</h1>
	<a href="/guestbook01">처음으로</a>
</body>
</html>