<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[ 세션 값을 얻어오는 예제 ]</h3></center>
	<hr>
		얻어온 세션값은 다음과 같습니다.
	<hr>
	<%
		Object obj_getdata = session.getAttribute("Testing");
		String s_getdata = (String)obj_getdata;
	
		int i_getdata = (Integer)session.getAttribute("MyData");
	
		out.println("설정된 세션값 [1] => " + s_getdata + "<br><br>");
		out.println("설정된 세션값 [2] => " + i_getdata + "<hr>");
	%>


</body>
</html>