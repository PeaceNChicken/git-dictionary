<%@page import="javax.websocket.SendResult"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("EUC-KR");
String eng = request.getParameter("eng");
String kor = request.getParameter("kor");
System.out.println(eng + "<- eng <br>"); //dicInsertForm.jsp에서 입력한 값을 정확히 가져오는지 확인
System.out.println(kor + "<- kor <br>");
Connection conn = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver"); //드라이버 로딩

String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" +
		"useUnicode=true&characterEncoding=euckr";
String dbUser = "root";
String dbPass = "java0000";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); //connection객체 사용해서 접근권한 있는 사용자로 db와 연결

pstmt = conn.prepareStatement("INSERT INTO dic VALUES (NULL, ?, ?)"); //입력쿼리문 준비
pstmt.setString(1, eng);
pstmt.setString(2, kor);
System.out.println(pstmt);
int a = pstmt.executeUpdate(); //쿼리문 실행
System.out.println(a); // db에서 확인하는 것과 별개로 쿼리문이 제대로 실행됐는지 확인

pstmt.close();
conn.close(); //생성한 객체들 종료
response.sendRedirect(request.getContextPath()+"/dicList.jsp"); //처리가 끝나면 dicList.jsp로 이동하게끔 reDirect 걸어준다

%>
