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
<b>당신이 입력한 정보입니다.</b><p>
<%
	out.println("반지름이 " + circle.getRadius() + "인 원의 면적은 " + circle.process(circle.getRadius()));
%>
</body>
</html>