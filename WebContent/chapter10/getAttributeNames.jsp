<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[ ���� ���� ������ ���� - 2 ]</h3></center>
	<hr>
		getAttributeNames() �޼ҵ带 ����Ͽ� ���ǰ��� ������ ����
	<hr>
	<%
		String s_validate="���� �������� ���� ���������� ������ ���� ���鵵 ��Ÿ���ϴ�.";
		session.setAttribute("Validate", s_validate);
		
		String s_name="";
		String s_value="";
		
		Enumeration enum_app =  session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			
			out.println("<br>���� ���� �̸� ["+i+"] : " +s_name + "<br>");
			out.println("<br>���� ���� �̸� ["+i+"] : " +s_value + "<hr>");
		}
	
	%>
	
	
</body>
</html>