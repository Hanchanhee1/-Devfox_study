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
		<H2>글쓰기</H2>
		<table style="margin-right:100px;">
			<tr>
				<th>글 제목</th>
				<td>
					<input type="text" value="" name="title">
				</td>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
					<input type="text" value="" name="id">아이디 고정
				</td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td>
					<input type="text" name="contents" value="" style="width:500px; height:200px;">
				</td>
			</tr>
		</table>
		<input type="submit" value="저장" style="text-align:center;">
	</section>
	<footer>
		<p>&copy;Han chan hee</p>
	</footer>

</body>
</html>
