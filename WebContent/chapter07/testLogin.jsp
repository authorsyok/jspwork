<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id_="hong";
	String pw_="1234";
	String name_="길동";
	
	if(id_.equals(request.getParameter("id"))
			&& pw_.equals(request.getParameter("pw"))) {
		//response.sendRedirect("main.jsp?id="+id_);
		//response.sendRedirect("main.jsp?name="+name_);
		response.sendRedirect("main.jsp?name="+URLEncoder.encode(name_, "UTF-8"));
	}
	else {
		response.sendRedirect("login.jsp");
	}
%>