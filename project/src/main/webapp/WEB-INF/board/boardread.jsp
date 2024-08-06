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
	<form class="form-horizontal" action="/project/board/delete" method="post">
		<input type="hidden" name="board_no" value="${board.board_no}">
		<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
		<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
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
		 <c:choose>
            <c:when test="${sessionScope.id == board.id}">
                <div class="form-group">
                    <div class="col-md-10 text-center">
                        <input type="button" class="btn btn-lg btn-primary" 
                               value="수정" 
                               onclick="location.href='/project/board/update?state=UPDATE&board_no=${board.board_no}'">
                        <input type="submit" class="btn btn-lg btn-primary" 
                               value="삭제">
                        <button type="button" class="btn btn-danger btn-lg"
                                onclick="location.href='/project/board/list'">
                            <i class="fa fa-fw fa-close"></i> 목록
                        </button>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
                <div class="form-group">
                    <div class="col-md-10 text-center">
                        <button type="button" class="btn btn-danger btn-lg"
                                onclick="location.href='/project/board/list'">
                            <i class="fa fa-fw fa-close"></i> 목록
                        </button>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
	</form>
	<div class="prev_next">
				<a href="/project/board/read?board_no=${prev.board_no}&pageNum=${cri.pageNum}&amount=${cri.amount}&state=READ" class="btn_prev"><i class="fa fa-angle-left"></i>
				<span class="prev_wrap">
					<strong>이전글</strong><span>${prev.title }</span>
				</span>
				</a>
				<a href="/project/board/read?board_no=${next.board_no }&pageNum=${cri.pageNum}&amount=${cri.amount}&state=READ" class="btn_next">
				<span class="next_wrap">
					<strong>다음글</strong><span>${next.title }</span>
				</span>
				<i class="fa fa-angle-right"></i></a>
			</div>

</body>
</html>