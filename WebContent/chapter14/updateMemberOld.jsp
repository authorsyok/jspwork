<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	%>
	<%
		try{
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			conn = ds.getConnection();
			System.out.println("DBCP 연동 성공");
			StringBuffer selectQuery = new StringBuffer();
			selectQuery.append("SELECT name, class, tel FROM MEMBER2 WHERE ID = ?");
			String id = request.getParameter("id");
			pstmt = conn.prepareStatement(selectQuery.toString());
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
	%>
				<form method="post" action="updateProcess.jsp">
					아이디 : <input type="text" name="id" readonly value="<%= id%>"><br>
					이름 : <input type="text" name="name" value="<%= rs.getString("name")%>"><br>
					회원등급 : <input type="text" name="mclass" value="<%= rs.getString("class")%>"><br>
					전화번호 : <input type="text" name="tel" value="<%= rs.getString("tel")%>"><br>
					<input type="submit" value="수정">
					<a href="viewMemberOld.jsp">목록보기</a>
				</form>				
	<%	
			}else {
	%>
				<font color="red">아이디없다.</font>
				<a href="viewMemberOld.jsp">목록보기</a>
	<%
			}
		}catch(NamingException ne){
			ne.printStackTrace();
		}catch(SQLException ex) {
			out.print("데이터베이스 연결이 실패했습니다.<br>");
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