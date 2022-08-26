<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script.js"></script>
</head>
<body>

<table border=1 align=center>
	<form action="registerOK.jsp" method="post" name="javascript">
  	<tr height=50>
   		<td colspan=2 align=center>
    	<h1>회원 가입 신청</h1>
    	'*' 표시 항목은 필수 입력 항목입니다.
   		</td>
  	</tr>
  	<tr height="30">
   		<td width="80">User ID</td>
   		<td><input type="text" name="user_id" size="20">*</td>
  	</tr>
  	<tr height=30>
   		<td width=80>암호</td>
   		<td><input type="password" name="password" size=20>*</td>
  	</tr>
  	<tr height=30>
   		<td width=80>암호 확인</td>
   		<td><input type="password" name="password_check" size=20>*</td>
  	</tr>
 	<tr height=30>
   		<td width=80>이 름</td>
   		<td><input type="text" name="user_name" size=20>*</td>
  	</tr>
  	<tr height=30>
   		<td width=80>E-Mail</td>
   		<td><input type="text" name="user_email" size=30>*</td>
  	</tr>
  	<tr height=30>
   		<td width=80>주 소</td>
   		<td><input type="text" name="address" size=40></td>
  	</tr>
  	<tr height=30>
   		<td colspan="2" align="center">
    		<input type="button" value="등록" onclick="check_ok()">
    		<input type="reset" value="다시입력">         
    		<input type="button" value="가입안함" onclick="javascript:window.location='login.jsp'">
   		</td>
  	</tr>
 	</form>
</table>
</body>
</html>

