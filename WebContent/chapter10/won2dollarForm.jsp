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
<h4>당신이 입력한 정보입니다.</h4>
<%
	out.print("입력된 원화가 " + won2dollar.getWon()  + "원은 $" + won2dollar.process(won2dollar.getWon()));
%>
</body>
</html>