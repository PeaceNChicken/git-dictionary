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

pstmt = conn.prepareStatement("SELECT idx, eng FROM dic");
rs = pstmt.executeQuery();
System.out.println(rs.next());
%>
<title>���� ���</title>
</head>
<body>
<div class="container">
	<table class="table table-success table-hover">
		<tr>
			<th>idx</th>
			<th>eng</th>
		</tr>
		<tr>
			<td>1</td>
			<td><a href="#">2</a></td>
		</tr>
	</table>
</div>
</body>
</html>