<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="80%" border="1">
		<tr>
			<td>컬럼명</td><td>컬럼형식</td><td>컬럼길이</td><td>널값여부</td>
		</tr>
		<%
			//1.JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try {
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "scott";
				String password = "tiger";
				
				String selectQuery = "DESC EMP";
			
				//2.데이터베이스 커넥션 생성
				conn = DriverManager.getConnection(url, user, password);
	
				//3.Statement 생성
				stmt = conn.createStatement();
				
				//4.쿼리 실행
				rs = stmt.executeQuery(selectQuery);

				//5.쿼리 실행 결과 출력
				while(rs.next()) {
		%>
		<tr>
			<td><%= rs.getString("컬럼명") %></td>
			<td><%= rs.getString("컬럼형식") %></td>
			<td><%= rs.getString("컬럼길이") %></td>
			<td><%= rs.getString("널값여부") %></td>

		</tr>
		<%
			}
		}catch(SQLException ex) {
			out.println(ex.getMessage());
			ex.printStackTrace();
		}finally{
			//6.사용한 Statement 종료
			if(rs != null) try {
				rs.close();
			}
		 	catch(SQLException ex) {}
			if(stmt != null) try {
				stmt.close();
			}
			catch(SQLException ex) {}
			
			//7.커넥션 종료
			if(conn != null) try {
				conn.close();
			}
			catch(SQLException ex) {}
		}
		%>
	</table>
</body>
</html>