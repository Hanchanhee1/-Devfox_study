<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Chanhee</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<h1>게시판</h1>
		<a href="/project/">홈으로</a>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardlist }">
					<tr>
						<td>${board.board_no }</td>
						<td><a
							href="/project/board/read?board_no=${board.board_no }&state=READ">${board.title }</a></td>
						<td>${board.id }</td>
						<td><a href="/project/board/delete?board_no=${board.board_no }">삭제</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	<form action="/project/board/search" method="post">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select> <input type="text" name="search" /> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/project/board/write" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form>

</body>
</html>
