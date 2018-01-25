<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<% 
	UserVo userVo = (UserVo)request.getAttribute("userVo");
	int num = (int)request.getAttribute("num");
	String str = (String)request.getAttribute("str");
	%>
	name = <%=userVo.getName()%> <br/>
    email = <%=userVo.getEmail() %> <br/>
    password = <%=userVo.getPassword() %> <br/>
	gender = <%=userVo.getGender() %> <br/> 
	
	num = <%=num %> <br/>
	str = <%=str %>	<br/>
	
	
	
	<h2>el</h2>
	name = ${requestScope.userVo.name } <br />
	email = ${requestScope.userVo.email } <br />
	password = ${requestScope.userVo.password } <br />
	gender = ${requestScope.userVo.gender } <br />
	
	num = ${requestScope.num } <br />
	str = ${requestScope.str } <br />
	
	
		
	
</body>
</html>