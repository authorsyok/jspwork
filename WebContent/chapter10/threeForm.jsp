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
	<h4>당신이 입력한 정보입니다.</h4>
<%
	out.print("입력된 수가 " + num.getNumber()  + "은 " + num.process(num.getNumber()));
%>
</body>
</html>