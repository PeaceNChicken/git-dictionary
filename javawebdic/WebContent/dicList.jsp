<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!--����Ʈ ������������ idx�÷��� ���ڿ� eng �÷��� ���ܾ ������ �Ѵ�.
	���ܾ Ŭ���ϸ� �� �ܾ��� ���������� �̵��ϰ� ������̴� 
	SELECT idx, eng FROM dic -->
<title>���� ���</title>
</head>
<body>
<div class="container">
	<table class="table table-success table-hover">
		<tr>
			<th>idx</th>
			<th>eng</th>
		</tr>
<%
request.setCharacterEncoding("EUC-KR");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver"); //����̹� �ε�

String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" +
		"useUnicode=true&characterEncoding=euckr";
String dbUser = "root";
String dbPass = "java0000";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
//System.out.println(conn +"<-conn");
pstmt = conn.prepareStatement("SELECT idx, eng FROM dic");
rs = pstmt.executeQuery();
//System.out.println(rs.next());
	while(rs.next()){
%>
		<tr>
			<td><%=rs.getString("idx")%></td>
			<td><a href="#"><%=rs.getString("eng")%></a></td>
		</tr>
<%
	}
%>
	</table>
</div>
</body>
</html>