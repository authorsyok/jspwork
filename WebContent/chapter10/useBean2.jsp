<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="area.rectangle" id="rectangle"></jsp:useBean>
<h4>�簢���� ���� ����ϱ�</h4>
<%
	int x = 20;
	int y = 30;
	out.println("���� 20, ���� 30�� �簢���� ������ " + rectangle.process(x, y));
%>