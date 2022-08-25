<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<!-- 이걸해야 한글이 안깨짐
 --><meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "1234";
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String id="", pw="", name="", p1="", p2="", p3="", sclass="";
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	name = request.getParameter("name");
	sclass = request.getParameter("mclass");
	p1 = request.getParameter("phone1");
	p2 = request.getParameter("phone2");
	p3 = request.getParameter("phone3");
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		
		StringBuffer insertQuery = new StringBuffer();
		insertQuery.append("INSERT INTO MEMBER2 VALUES('");
		insertQuery.append(id + "','");
		insertQuery.append(pw + "','");
		insertQuery.append(name + "','");
		insertQuery.append(sclass + "','");
		insertQuery.append(p1 + "-" + p2 + "-" + p3 + "')");
		
		System.out.println(insertQuery.toString());
		
		int re = stmt.executeUpdate(insertQuery.toString());
		if(re == 1) {
%>
			추가 성공
			<br>
			<a href="addForm.html">추가작업</a>
			<a href="viewMember.jsp">검색작업</a>
<%
		}else {
%>
			<font color="red">추가실패 ㅠㅠ</font>
<%
		}
	}catch(SQLException ex) {
		ex.getMessage();
%>

		서버불량 잠시 후 다시 시도
<%
	}finally{
		try {
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}catch(SQLException ex) {
			ex.getMessage();
		}
	}
%>
</body>
</html>