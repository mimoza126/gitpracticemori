<%@page import="dto.accountDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>下記の内容で登録します。よろしいですか？</p>
	<%
		accountDTO acc = (accountDTO)session.getAttribute("input_data");
	%>
	名前：<%=acc.getName() %><br>
	年齢:<%=acc.getAge() %><br>
	性別:<%=acc.getGender() %><br>
	電話番号:<%=acc.getTel() %><br>
	メール：<%=acc.getEmail() %><br>
	パスワード：********<br>
	<a href="ExecuteRegisterServlet">OK</a><br>
	<a href="FormRegisterServlet">戻る</a>
</body>
</html>