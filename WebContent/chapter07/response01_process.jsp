<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String userID = request.getParameter("id");
	String userPW = request.getParameter("pw");
	
	if(userID.equals("aaa") && userPW.equals("1234")){
		response.sendRedirect("response01_success.jsp");
	}
	else {
		response.sendRedirect("response01_fail.jsp");		
	}
%>
</body>
</html>