<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Won2dollar" id="won2dollar"></jsp:useBean>
<jsp:setProperty property="won" name="won2dollar"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h4>����� �Է��� �����Դϴ�.</h4>
<%
	out.print("�Էµ� ��ȭ�� " + won2dollar.getWon()  + "���� $" + won2dollar.process(won2dollar.getWon()));
%>
</body>
</html>