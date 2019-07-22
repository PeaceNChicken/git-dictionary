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

<!--리스트 페이지에서는 idx컬럼의 숫자와 eng 컬럼의 영단어만 나오게 한다.
	영단어를 클릭하면 각 단어의 상세페이지로 이동하게 만들것이다 
	SELECT idx, eng FROM dic -->
<%
request.setCharacterEncoding("EUC-KR");
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
Class.forName("com.mysql.jdbc.Driver"); //드라이버 로딩

String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" +
		"useUnicode=true&characterEncoding=euckr";
String dbUser = "root";
String dbPass = "java0000";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

pstmt = conn.prepareStatement("SELECT idx, eng FROM dic");
rs = pstmt.executeQuery();
System.out.println(rs.next());
%>
<title>사전 목록</title>
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