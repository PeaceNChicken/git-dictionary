<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>���� �Է� ��</title>
</head>
<body>
<div class="container">
	<form action="<%=request.getContextPath()%>/dicInsertAction.jsp" method="post">
		���ܾ�: <input type="text" name="eng"> �ѱ����: <input type="text" name="kor">
		<button type="submit" class="btn btn-secondary">�ܾ��Է�</button>
	</form>
</div>
</body>
</html>