<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>

<html>
<head>
<style>

	* {margin:0; padding:0;}
	header {background:#EAEAEA; padding:18px 12px;}
	header h1 {color:black; text-align:center;}
	nav {background:#0cf; padding:12px 18px; text-align:right;}
	nav a {color:white; padding:12px 18px; text-decoration:none;}
	section {height:400px;}
	section h2 {text-align:center; padding:18px 0;}
	section p {padding:8px 0;}
	footer {background:#EAEAEA; padding:12px 18px;}
	footer p {text-align:center; color:black; font-size:20px;}

</style>
<meta charset="UTF-8">
<title>Han chan hee project</title>
</head>
<body>
	<header>
		<h1>Han chan hee project</h1>
	</header>
	<nav>
		<a href="/project/">홈으로</a>
		<a href="/project/board/list">게시판</a>
		<a href="/project/member/login">로그인</a>
		<a href="/project/member/memberjoin">회원가입</a>
	</nav>
	<section>
		<H2><%= session.getAttribute("id") %>님 환영합니다.</H2>
		<button onclick="location.href='/project/member/logout'">로그아웃</button>
	</section>
	<footer>
		<p>&copy;Han chan hee</p>
	</footer>

</body>
</html>
