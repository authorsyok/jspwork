<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="area.circle2" id="circle"/>
<jsp:setProperty property="radius" name="circle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>����� �Է��� �����Դϴ�.</b><p>
<%
	out.println("�������� " + circle.getRadius() + "�� ���� ������ " + circle.process(circle.getRadius()));
%>
</body>
</html>