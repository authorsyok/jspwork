<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 자바 패키지.클래스 가져오기 -->
<jsp:useBean class="area.circle" id="circle"/>
<h4>원의 면적 출력하기</h4>
<%
	int num = 10;
	out.print("반지름 10인 원 넓이는 " + circle.process(num));
%>
