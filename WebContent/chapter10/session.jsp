<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="session_process.jsp" method="get">
			<table>
				<tr>
					<td align="right">���̵�:</td>
					<td align="left">
						<input type="text" name="id" size="20" maxlength="20">
					</td>
				</tr>
				<tr>
					<td align="right">��й�ȣ:</td>
					<td align="left">
						<input type="password" name="pw" size="20" maxlength="20">
					</td>
				</tr>
				<tr>
					<td align="center"><input type="submit" value="����"></td>
				</tr>
			</table>
		</form>
</body>
</html>