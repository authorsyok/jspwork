<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[설정된 세션 값을 삭제하는 예제]</h3></center>
	<hr>
	removeAttribute() 메소드를 사용하여 세션값을 삭제하는 예제
	<%
		String s_name;
		String s_value="";
		session.setAttribute("s_name1", s_value);
		
		s_value = "저는 세션에 저장된 첫 번째 값이에요";
		session.setAttribute("s_name1", s_value);
		
		s_value = "저는 세션에 저장된 두 번째 값이에요";
		session.setAttribute("s_name2", s_value);
		
		s_value = "저는 세션에 저장된 세 번째 값이에요";
		session.setAttribute("s_name3", s_value);
		
		out.print("<hr><h3>-----세션값을 삭제하기 전-----</h3>");
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.print("<hr>얻어온 세션 이름 ["+i+"] : " + s_name);
			out.print("<br>얻어온 세션 값 ["+i+"] : " + s_value);
		}
		
		session.removeAttribute("s_name2");
		
		out.print("<hr><h3>-----세션값을 삭제한 후-----</h3>");
		enum_app = session.getAttributeNames();
		i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.print("<hr>얻어온 세션 이름 ["+i+"] : " + s_name);
			out.print("<br>얻어온 세션 값 ["+i+"] : " + s_value);
		}
		
	%>



</body>
</html>