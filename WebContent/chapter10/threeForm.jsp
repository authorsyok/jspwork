<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Three" id="num"></jsp:useBean>
<jsp:setProperty property="number" name="num"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>����� �Է��� �����Դϴ�.</h4>
<%
	out.print("�Էµ� ���� " + num.getNumber()  + "�� " + num.process(num.getNumber()));
%>
</body>
</html>