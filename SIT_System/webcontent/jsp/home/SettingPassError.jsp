<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/setting.css">
<%
	String stdid = (String) session.getAttribute("loginStudent");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>パスワード変更エラー</title>
</head>
<h2>S.I.T_System&nbsp;<span><%= stdid%></span>さん</h2>
<body>
	<br>
	<form action="/SIT_System/Home" method="post">
	<p>条件を満たしていません</p>
	<br>
	<input type="submit" value="戻る" class="back">
	<input type="hidden"  name="act" value="pass">

	</form>

</body>
</html>