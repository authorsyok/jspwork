<html>
<body>
<%
java.sql.Connection conn=null;
java.sql.PreparedStatement ps=null;
java.sql.ResultSet rs=null;

String stmt = null;
String strRet = null;
int intRet = 0;

try { 
	Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) { 
	out.println(e);
}

try { 
	conn = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger"); 
	out.println("DB Connect OK!!<br>");
} catch (java.sql.SQLException e) { 
	out.println(e);
}

try { 
	ps = conn.prepareStatement("select * from emp"); 
	out.println("After Select Table<br>"); 
	rs = ps.executeQuery(); 
	out.println("After Query Execute!<br>"); 
	
	rs.next(); 
	strRet = new String(rs.getString("ename").getBytes("KSC5601"),"8859_1");
	out.println("ename is " + strRet + "<br>");
	
	rs.close(); 
	ps.close(); 
	conn.close();
} catch (java.sql.SQLException e) {
	System.out.println(e);
}%>
</body>
</html>
