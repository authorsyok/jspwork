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
<b>당신이 입력한 정보입니다.</b><p>
<%
	out.print("입력된 정수가 " + season.getMonth() + "은 계절이 " + season.process(season.getMonth()));
%>
</body>
</html>