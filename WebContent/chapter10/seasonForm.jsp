<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Season" id="season"></jsp:useBean>
<jsp:setProperty property="month" name="season"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>����� �Է��� �����Դϴ�.</b><p>
<%
	out.print("�Էµ� ������ " + season.getMonth() + "�� ������ " + season.process(season.getMonth()));
%>
</body>
</html>