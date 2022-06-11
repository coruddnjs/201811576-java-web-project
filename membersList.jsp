<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file = "dbConn.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> Members List </title>
	<script type="text/javascript">	
		function checkFun() 
		{
			var f = document.search;
			if(f.key.value == "")
			{
				alert("검색할 이름을 입력해 주세요.");
				f.key.focus();
				return false;
			}
			else return true;
		}		
	</script>	
</head>
<body>
	Home > 등록 회원 관리
	<hr>
	<%
		String search_name = request.getParameter("key");
	
		if(session.getAttribute("memberId")==null){
			response.sendRedirect("LOGIN.jsp");
		}
		else if(session.getAttribute("manager").equals("1")){
			String name = (String)session.getAttribute("membername");
			out.println("관리자 ["+ name +"]이 입장하셧습니다.\n");
		}
		else if(session.getAttribute("manager").equals("0")){
			response.sendRedirect("LOGIN.jsp");
		}
	%> 
<table border = "1" cellpadding= "10">
	<tr>
	<th> NO </th> <th> 아이디 </th> <th> 이름 </th> <th> 비밀 번호 </th><th> 연락처</th><th> 운전 면허</th> <th>관리자 여부</th><th>수정</th><th> 삭제 </th>
	</tr>
	<% 
		Statement sm = conn.createStatement();
		ResultSet rs;
		
		
		if(search_name==null){
			String sql = "SELECT * FROM member";
			rs = sm.executeQuery(sql);
		}
		else{
		  String sql = "select * from member where name like '%"+search_name+"%'";
			rs = sm.executeQuery(sql);
		}
		
		int count =1;
		while(rs.next()){
			String del= new String("'drawCheck.jsp?userID=" + rs.getString("ID") + "'");
			String mod = new String("'modify.jsp?id="+rs.getString("ID")+"'");
	%>
			<tr>
			<td><%=count%>
			<td align="center"><%=rs.getString("ID")%></td>
			<td align="center"><%=rs.getString("name")%></td>
			<td align="center"><%=rs.getString("PW")%></td>
			<td align="center"><%=rs.getString("phonenum")%>
			<td align="center"><%=rs.getString("license")%>
			<td align="center"><%=rs.getString("manager")%>
			<td align="center"><a href=<%=mod%>>ㅁ</a>
			<td align="center"><a href=<%=del%>>X</a>
			</td>
			</tr>
	<%
		
			count++;
		}
		
		rs.close();
		sm.close();
		conn.close();	
	%>
	<hr>
	<table border="0">
		<tr>
			<td>
				<form action="withdraw.jsp" method="post" >
					<input type="submit" value=" ◀ 회원 탈퇴시키기 " >
				</form>
			</td>	 
			<td>
				<form action="logout.jsp" method="post" >
					<input type="submit" value=" 로그 아웃 ▶" >
				</form>
			</td>
		</tr>
		<form action=membersList.jsp method="post" name="search" onsubmit="return checkFun()">
			<input type="text" name="key"><input type="submit" value="검색">
		</form>
	</table>
</table>  		
</body>
</html>	