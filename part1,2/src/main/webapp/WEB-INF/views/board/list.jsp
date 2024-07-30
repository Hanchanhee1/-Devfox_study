<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

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
	table,th,td {border:1px solid #ccc; margin:0 auto;}

</style>
<meta charset="UTF-8">
<title>Han chan hee project</title>
</head>
<body>
	<header>
		<h1>Han chan hee project</h1>
	</header>
	<nav>
		<a href="/board/list">게시판</a>
		<a href="/member/login">로그인</a>
		<a href="/member/memberjoin">회원가입</a>
	</nav>
	<section>
		<H2>게시판 목록</H2>
		<table style="width:500px;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성 아이디</th>
			</tr>
			<tr>
				<th>1</th>
				<th><a href="/board/read">안녕하세요</a></th>
				<th>aasske</th>
			</tr>
		</table>
		<input type="button" value="글쓰기" onclick="location.href='/board/write';" style="text-align:right;">
	</section>
	<footer>
		<p>&copy;Han chan hee</p>
	</footer>

</body>
</html>
