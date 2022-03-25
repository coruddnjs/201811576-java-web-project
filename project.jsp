<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<Link href="sort.css" rel="stylesheet" type="text/css"/>
	<title>렌트카 로그인창</title>
</head>
<body>
	<h3> HOME > Login </h3>
	<hr>
	<form action="Sign.jsp" name=person method="get">
		<fieldset style="width:250px">
			<legend> 로 그 인 </legend><p>
				아이디 : <br>
				<input type="text" name="p_id" size="16"><br><br>
				비밀번호 : <br>
				<input type="password" name="p_Pw" size="16"><br><br>
				
				<input type="submit" value=" 로그인 ">
			<hr>
			<div align="center">
				<input type="submit" value=" 가입하기 "> &nbsp;&nbsp;
				<input type="submit" value=" 비밀번호찾기 ">
			</div>
		</fieldset>
		<div style=float:center class="ima">
			<img src="image/benz.jpg" alt=" " width="200" height="200">
			<img src="image/RENEGADE.jpg" alt=" " width="200" height="200">
			<img src="image/Porsche.jpg" alt=" " width="200" height="200">
			<img src="image/mac.jpg" alt=" " width="200" height="200">	
		</div>
	</form>
</body>
</html>