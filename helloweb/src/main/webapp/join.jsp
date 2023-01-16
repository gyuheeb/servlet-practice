<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    request.setCharacterEncoding("utf-8"); // 글자 깨지는거 방지
  
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String birthYear = request.getParameter("birthYear");
    String gender = request.getParameter("gender");
    String profile = request.getParameter("profile");
    String[] hobbies = request.getParameterValues("hobby");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	<%=password %>
	<br>
	<%=birthYear %>
	<br>
	<%=gender %>
	<br>
	<p>
		<%=profile.replaceAll("\n","<br>") %> 
	</p>
	<br>
	<% for(int i=0;i<hobbies.length;i++){
		%>
		<h4><%=hobbies[i] %></h4>
	<%
	}
	%>
</body>
</html>