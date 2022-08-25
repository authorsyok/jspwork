<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="area.rectangle2" id="rectangle"></jsp:useBean>
<jsp:setProperty property="*" name="rectangle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b>당신이 입력한 정보입니다.</b><p>
<%
	out.println("가로길이가 " + rectangle.getWidth() +"이고, 세로길이가 " + rectangle.getHeight() +"인 사각형의 면적은" + rectangle.process(rectangle.getWidth(), rectangle.getHeight()));
%>
</body>
</html>