<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	Connection conn = null;
	DataSource ds = null;
%>
<%
	try{
		Context ctx = new InitialContext();
		ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
		conn = ds.getConnection();
		System.out.println("DBCP ���� ����");
	}catch(NamingException ne){
		ne.printStackTrace();
	}catch(SQLException ex) {
		out.print("�����ͺ��̽� ������ �����߽��ϴ�.<br>");
		out.print("SQLException : " + ex.getMessage());
	}finally{
		try{
			if(conn != null) {
				conn.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>