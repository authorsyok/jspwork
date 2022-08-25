<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	
	String selectQuery = "SELECT * FROM EMP";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="800" border="1">
		<tr>
			<td>사원번호</td>
			<td>사원명</td>
			<td>직급</td>
			<td>상관번호</td>
			<td>입사일자</td>
			<td>급여</td>
			<td>COMM</td>
			<td>DEPTNO</td>
		</tr>
		<%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, password);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(selectQuery);
			
				while(rs.next()) {
		%>
		<tr>
			<td><%= rs.getString("w_number") %></td>
			<td><%= rs.getString("w_name") %></td>
			<td><%= rs.getString("position") %></td>
			<td><%= rs.getString("b_number") %></td>
			<td><%= rs.getString("date") %></td>
			<td><%= rs.getString("pay") %></td>
			<td><%= rs.getString("comm") %></td>
			<td><%= rs.getString("deptno") %></td>
		</tr>
		<%
				}
			}catch(SQLException ex) {
				ex.getMessage();
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
	</table>
</body>
</html>

