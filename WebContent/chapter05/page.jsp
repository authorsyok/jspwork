<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� ��¥ :
	<%Calendar cal = Calendar.getInstance(); %>
	<%= cal.get(Calendar.YEAR) %>��
	<%= cal.get(Calendar.MONTH) + 1 %>��
	<%= cal.get(Calendar.DATE) + 1 %>��
	<br>
	5�� ���� :<%=Math.pow(5,2) %>
	
</body>
</html>