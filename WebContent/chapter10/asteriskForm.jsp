<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Asterisk" id="asterisk"></jsp:useBean>
<jsp:setProperty property="number" name="asterisk" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	out.print("입력된 정수가" +asterisk.getNumber()
			+ "는 <br>" + asterisk.process());
%>
</body>
</html>