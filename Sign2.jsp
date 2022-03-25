<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정 보 확 인</title>
</head>
<body>
	<h3>HOME > Login > Sign up</h3>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("p_id");
		String name = request.getParameter("p_name");
		String pw = request.getParameter("p_pw");
		
		String choice = request.getParameter("choice");
		String P01 = request.getParameter("P1");
		String P02 = request.getParameter("P2");
		String P03 = request.getParameter("P3");
		
		String license1 = request.getParameter("license");
		String year_p = request.getParameter("year");
		String month_p = request.getParameter("month");
		String day_p	= request.getParameter("day");
	%>
	<p> 생년월일 : <%= year_p %>.<%= month_p %>.<%= day_p %>
	<p> 이름 : <%= name %>
	<p> 아이디 : <%= id %>
	<p> 비밀번호 : <%= pw %>
	<p> 연락처 : <%= choice %> <%= P01 %>-<%= P02 %>-<%= P03 %>
	<p> 운전면허 : <%= license1 %>
</body>
</html>