<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Connection conn=null;

	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/DataBase Name";
	
	Boolean connect=false;
	
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,"user","pwd");
		
		connect=true;
		
		conn.close();
	}catch(Exception e){
		connect=false;
		e.printStackTrace();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JDBC 연동 테스트</title>
</head>
<body>
	<h2>
	<%if(connect==true){ %>
	연결되었습니다.
	<%}else{ %>
	연결 실패!!!!!
	<%} %>
	</h2>
</body>
</html>
