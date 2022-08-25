<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="area.rectangle" id="rectangle"></jsp:useBean>
<h4>사각형의 면적 출력하기</h4>
<%
	int x = 20;
	int y = 30;
	out.println("가로 20, 세로 30인 사각형의 면적은 " + rectangle.process(x, y));
%>