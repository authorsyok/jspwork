<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[ ���� ���� ������ ���� ]</h3></center>
	<hr>
		���� ���ǰ��� ������ �����ϴ�.
	<hr>
	<%
		Object obj_getdata = session.getAttribute("Testing");
		String s_getdata = (String)obj_getdata;
	
		int i_getdata = (Integer)session.getAttribute("MyData");
	
		out.println("������ ���ǰ� [1] => " + s_getdata + "<br><br>");
		out.println("������ ���ǰ� [2] => " + i_getdata + "<hr>");
	%>


</body>
</html>