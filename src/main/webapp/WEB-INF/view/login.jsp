<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		if(request.getParameter("error") != null){	
	%>
		<p style="color:red">ログイン失敗</p>
	<form action="KadaiLoginServlet" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="email" value="<%=request.getParameter("email") %>"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
		<a href="KadaiLogin">戻る</a>
	</form>
	<%
		} else {
	%>
	<form action="KadaiLoginServlet" method="post">
		【IDとPWを入力してください。】<br>
		ログインID：<input type="text" name="email"><br>
		PW：<input type="password" name="pw"><br>
		<input type="submit" value="ログイン">
	</form>
	<%
		}
	%>
</body>
</html>