<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Alphabet" id="alphabet"></jsp:useBean>
<jsp:setProperty property="small" name="alphabet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("�Էµ� ���ĺ��� " 
			+ alphabet.getSmall() 
			+ "�� " 
			+ alphabet.process());
%>
</body>
</html>