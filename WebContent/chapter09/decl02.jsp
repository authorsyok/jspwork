<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		double n = 3.14159;
	public double getDouble() {
		return n;
	}
	%>

	<%
		out.println(getDouble());
	%>
</body>
</html>