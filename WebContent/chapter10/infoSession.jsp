<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center><h3>[���� ������ ������ �޼ҵ带 ����� ����]</h3></center>
	<hr>
	<%
		String s_id = session.getId();
		long last_time = session.getLastAccessedTime();
		long creation_time = session.getCreationTime();
		long time_used = last_time - creation_time / 60000;
		int inactive = session.getMaxInactiveInterval() / 60;
		boolean b_new = session.isNew();
	%>
	[1] ���� ID�� [ <%= s_id %>] �Դϴ�.<br><hr>
	[2] ����� �� ����Ʈ�� �ӹ� �ð��� [ <%= time_used %>] ���Դϴ�.<br><hr>
	[3] ������ ��ȿ �ð��� [ <%= inactive %>] ���Դϴ�.<br><hr>
	[4] ������ ���� ����� ������??<br><br>
	<%
		if(b_new) {
			out.println("��! ���ο� ������ ��������ϴ�");
		}
		else {
			out.println("�ƴϿ�! ���ο� ������ ������ �ʾҽ��ϴ�");
		}
	%>



</body>
</html>