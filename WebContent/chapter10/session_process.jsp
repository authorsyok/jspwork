<%@page import="java.net.URLEncoder"%>
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
	String id_ = "admin";
	String pw_ = "admin1234";

	if(id_.equals(request.getParameter("id"))
			&& pw_.equals(request.getParameter("pw"))) {
		response.sendRedirect("welcome.jsp?name="+URLEncoder.encode(id_, "UTF-8"));
	}
	else {
		out.print("아이디와 비밀번호를 확인해 주세요.");
	}
%>

</body>
</html>