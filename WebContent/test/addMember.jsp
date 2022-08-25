<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<!-- 이걸해야 한글이 안깨짐-->
<%request.setCharacterEncoding("UTF-8");%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String w_number="", w_name="", position="", b_number="", date="", pay="", comm="", deptno="";
	w_number = request.getParameter("w_number");
	w_name = request.getParameter("w_name");
	position = request.getParameter("position");
	b_number = request.getParameter("b_number");
	date = request.getParameter("date");
	pay = request.getParameter("pay");
	comm = request.getParameter("comm");
	deptno = request.getParameter("deptno");
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, user, password);
		stmt = conn.createStatement();
		
		StringBuffer insertQuery = new StringBuffer();
		insertQuery.append("INSERT INTO EMP9 VALUES('");
		insertQuery.append(w_number + "','");
		insertQuery.append(w_name + "','");
		insertQuery.append(position + "','");
		insertQuery.append(b_number + "','");
		insertQuery.append(date + "','");
		insertQuery.append(pay + "','");
		insertQuery.append(comm + "','");
		insertQuery.append(deptno + "')");
		
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