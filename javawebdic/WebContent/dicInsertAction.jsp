<%@page import="javax.websocket.SendResult"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
request.setCharacterEncoding("EUC-KR");
String eng = request.getParameter("eng");
String kor = request.getParameter("kor");
System.out.println(eng + "<- eng <br>"); //dicInsertForm.jsp���� �Է��� ���� ��Ȯ�� ���������� Ȯ��
System.out.println(kor + "<- kor <br>");
Connection conn = null;
PreparedStatement pstmt = null;
Class.forName("com.mysql.jdbc.Driver"); //����̹� �ε�

String jdbcDriver = "jdbc:mysql://localhost:3306/jjdev?" +
		"useUnicode=true&characterEncoding=euckr";
String dbUser = "root";
String dbPass = "java0000";
conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass); //connection��ü ����ؼ� ���ٱ��� �ִ� ����ڷ� db�� ����

pstmt = conn.prepareStatement("INSERT INTO dic VALUES (NULL, ?, ?)"); //�Է������� �غ�
pstmt.setString(1, eng);
pstmt.setString(2, kor);
System.out.println(pstmt);
int a = pstmt.executeUpdate(); //������ ����
System.out.println(a); // db���� Ȯ���ϴ� �Ͱ� ������ �������� ����� ����ƴ��� Ȯ��

pstmt.close();
conn.close(); //������ ��ü�� ����
response.sendRedirect(request.getContextPath()+"/dicList.jsp"); //ó���� ������ dicList.jsp�� �̵��ϰԲ� reDirect �ɾ��ش�

%>
