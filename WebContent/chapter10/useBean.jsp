<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �ڹ� ��Ű��.Ŭ���� �������� -->
<jsp:useBean class="area.circle" id="circle"/>
<h4>���� ���� ����ϱ�</h4>
<%
	int num = 10;
	out.print("������ 10�� �� ���̴� " + circle.process(num));
%>
