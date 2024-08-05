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
	<c:choose>
		<c:when test="${sessionScope.id != null }">
			<a href="/project/member/logout">로그아웃</a>
		</c:when>
		<c:otherwise>
			<a href="/project/member/login">로그인</a>
			<a href="/project/member/memberjoin">회원가입</a>
		</c:otherwise>
	</c:choose>
	</nav>
	<section>
		<H2>스프링 프레임워크를 이용한 게시판 만들기 프로젝트 입니다..</H2>
		<H3 style="text-align:center;"><%= session.getAttribute("id") %>님 환영합니다.</H3>
		<c:choose>
		<c:when test="${sessionScope.id == null }">
			<p style="text-align:center;">로그인 하면 아이디가 출력 됩니다.</p>
		</c:when>
		</c:choose>
	</section>
	<footer>
		<p>&copy;Han chan hee</p>
	</footer>

</body>
</html>
