<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.GuGuDan" id="gugudan"></jsp:useBean>
<h4>������ ����ϱ�</h4>
<%
	int n = 5;
	for(int i = 1; i <= 9; i++) {		
		out.print(n + " * " + " = " + gugudan.process(n, i) + "<br>");
	}
%>