<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	현재 날짜 :
	<%Calendar cal = Calendar.getInstance(); %>
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH) + 1 %>월
	<%= cal.get(Calendar.DATE) + 1 %>일

	
</body>
</html>