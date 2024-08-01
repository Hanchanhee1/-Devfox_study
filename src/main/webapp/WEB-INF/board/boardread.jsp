<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<title>Chanhee</title>
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
	<a href="/project/">홈으로</a>
	<form class="form-horizontal" 
		action="/project/board/update?state=UPDATE&board_no=${board.board_no }" 
		method="post" >

		
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="id" class="control-label">번호</label>
			</div>
			<div class="col-md-8">${board.board_no}</div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="id" class="control-label">작성자아이디</label>
			</div>
			<div class="col-md-8">${board.id}</div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="title" class="control-label">제목</label>
			</div>
			<div class="col-md-8">${board.title }</div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="text" class="control-label">내용</label>
			</div>
			<div class="col-md-8"
				style="width: 500px; height: 400px; border: solid 1px;">
				${board.content }
				</div>
		</div>

		<div class="form-group">
			<div class="col-md-10 text-center">
				<input type="submit" class="btn btn-lg btn-primary" 
				value="수정">

				<button type="button" class="btn btn-danger btn-lg"
					onclick="location.href='/project/board/list'">
					<i class="fa fa-fw fa-close"></i> 목록
				</button>
			</div>
		</div>
	</form>

</body>
</html>