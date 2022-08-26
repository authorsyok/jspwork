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
		PreparedStatement pstmt = null;
	%>
	<%
		try{
			conn = ((DataSource)(new InitialContext().lookup("java:comp/env/jdbc/oracle"))).getConnection();
		}catch(NamingException ne){
			ne.printStackTrace();
		}catch(SQLException ex) {
			 ex.getMessage();
		}	
		
		String id="", name="", vclass="",tel="";
		id = request.getParameter("id");
		name = request.getParameter("name");
		vclass = request.getParameter("mclass");
		tel = request.getParameter("tel");
	
		StringBuffer updateQuery = new StringBuffer();
		updateQuery.append("update member2 set name=? ,class=?,tel=?where id=?");
		
		try{
			pstmt = conn.prepareStatement(updateQuery.toString());
			pstmt.setString(1, name);
			pstmt.setInt(2, Integer.parseInt(vclass));
			pstmt.setString(3, tel);
			pstmt.setString(4, id);
			int re = pstmt.executeUpdate();
			
			if(re == 1) {
	%>
				<%= id %>의 정보가 수정되었음.<br>
				[<a href="viewMember.jsp">목록보기</a>]
	<%
			}else{
	%>
				변경 실패
	<%
			}
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