<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회 원 가 입</title>
</head>
<body>
	<h3>HOME > Login > Sign up</h3>
	<hr>
	<form action="Sign2.jsp" name=person method="POST">
	<fieldset style="width:500px">
			<legend> 개인 정보 입력 </legend><p>
				생년월일 : <br>
					<input type="text" maxlength="4" size="4" name="year" style="width:40px">년
					<input type="text" maxlength="2" size="2" name="month" style="width:20px">월
					<input type="text" maxlength="2" size="2" name="day" style="width:20px">일<br><br>
					
				이름 : <br>
				<input type="text" name="p_name" size="16"><br><br>
				
				아이디 : <br>
				<input type="text" name="p_id" size="16"><br><br>
				
				비밀번호 : <br>
				<input type="password" name="p_pw" size="16"><br><br>
				
				연락처 : <br>
				<select name="choice" style="width:60px;height=20.5px">
					<option value="choice"> 선택 </option>
					<option value="KT"> KT </option>
					<option value="SKT"> SKT </option>
					<option value="LGU+"> LGU+ </option>
				</select>
				<input type="text" maxlength="3" size="3" name="P1" style="width:30px"> -
				<input type="text" maxlength="4" size="4" name="P2" style="width:40px"> -
				<input type="text" maxlength="4" size="4" name="P3" style="width:40px"><br><br>
				
				운전면허유무 : <br>
				<select name="license" style="width:60px;height=20.5px">
					<option value="license"> 선택 </option>
					<option value="1종"> 1종 </option>
					<option value="2종"> 2종 </option>
					<option value="대형"> 대형 </option>
				</select>
			<hr>
			<div align="center">
				<input type="submit" value=" 가입하기 "> &nbsp;&nbsp;
				<input type="reset" value=" 다시작성 ">
			</div>
		</fieldset>
		</form>
</body>
</html>