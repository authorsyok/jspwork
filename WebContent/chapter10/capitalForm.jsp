<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Capital" id="alphabet"></jsp:useBean>
<jsp:setProperty property="big" name="alphabet" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	out.print("�Էµ� ���ĺ��� " 
			+ alphabet.getBig() 
			+ "�� <br>" 
			+ alphabet.process());
%>
</body>
</html>