<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="loginOK.jsp" method="post">
	<table border="1" align="center" >
  		<tr height=30>
   			<td width=100>����� ID</td>
   			<td width=100>
   				<input type=text>
   			</td>
  		</tr>
  		<tr height=30>
   			<td width=100>��й�ȣ</td>
   			<td width=100>
   				<input type=password>
   			</td>
  		</tr>
  		<tr height=30>
   			<td colspan=2 align="center">
   				<input type=submit value="�α���"> 
   				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
   				<input type=button value="ȸ������" 
   					onclick= "javascript:window.location='register.jsp'">
   			</td>   
  		</tr>
 	</table>
</form>
</body>
</html>