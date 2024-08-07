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
		<p>총게시글<span>${pageMaker.total}</span>건</p>
	<form method="get" id="searchForm" action="/project/board/list">
		<select name="type">
			<option value="id" <c:if test="${pageMaker.cri.type == 'id'}">selected</c:if>>아이디</option>
            <option value="title" <c:if test="${pageMaker.cri.type == 'title'}">selected</c:if>>제목</option>
            <option value="content" <c:if test="${pageMaker.cri.type == 'content'}">selected</c:if>>내용</option>
		</select>
		<input type="text" name="keyword" value="${pageMaker.cri.keyword}">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
  		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<button class="btn btn-default">검색</button>
	</form>
	<form id="actionForm" action="/project/board/list" method="get"> 
      <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}"> 
      <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
    	<input type="hidden" name="type" value="${ pageMaker.cri.type }"> 
    	<input type="hidden" name="keyword" value="${ pageMaker.cri.keyword }">
    </form>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="board" items="${boardlist }">
					<tr>
						<td>${board.board_no }</td>
						<td>
						<a href="/project/board/read?board_no=${board.board_no }&state=READ">${board.title }</a>
						</td>
						<td>${board.id }</td>
						<td>${board.content}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	<ul class="nav navbar-nav navbar-right">
			<li><a href="/project/board/write" style="text-align: right;">글쓰기</a></li>
	</ul>
	<div class="paging">
			<a href=""><i class="fa  fa-angle-double-left"></i></a>
			<a href=""><i class="fa fa-angle-left"></i></a>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<a href="/project/board/list?pageNum=${num}&amount=${pageMaker.cri.amount}" class="${pageMaker.cri.pageNum == num?'active':''}">${num }</a>
			</c:forEach>
			<a href=""><i class="fa fa-angle-right"></i></a>
			<a href=""><i class="fa  fa-angle-double-right"></i></a>
		</div>

</body>
</html>
