<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="area.rectangle2" id="rectangle"></jsp:useBean>
<jsp:setProperty property="*" name="rectangle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>����� �Է��� �����Դϴ�.</b><p>
<%
	out.println("���α��̰� " + rectangle.getWidth() +"�̰�, ���α��̰� " + rectangle.getHeight() +"�� �簢���� ������" + rectangle.process(rectangle.getWidth(), rectangle.getHeight()));
%>
</body>
</html>