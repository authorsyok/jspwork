<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	
	String sql = "INSERT INTO MEMBER VALUES (?,?,?,?,?,?,?,?)";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, password);
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1,"사원번호");
				pstmt.setString(2,"사원명");
				pstmt.setString(3,"직급");
				pstmt.setString(4,"상관번호");
				pstmt.setString(5,"입사일자");
				pstmt.setString(6,"급여");
				pstmt.setString(7,"COMM");
				pstmt.setString(8,"DEPTNO");
				pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally{
				try {
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
		%>
</body>
</html>