<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<!-- get userInformation is sessionScope  -->
<% User loginUser = (User) session.getAttribute("loginUser"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>docotsubu</title>
</head>
<body>
<h1>login docotsubu</h1>
<% if(loginUser != null){ %>
<p>ログインしました</p>
<p>ようこそ<%= loginUser.getName() %>さん</p>
<a href="/docoTsubu/Main">post or view tsubuyaki </a>
<% }else{ %>
<p>login error</p>
<a href="/docoTsubu/">to Top</a>
<% } %>
</body>
</html>