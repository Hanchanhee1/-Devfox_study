<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chanhee</title>
<link href="/springmvc/common/css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles for this template -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script type="text/javascript">

</script>
<body>
	
	<h4>
		<i class="fa fa-angle-right"></i> 게시글 수정하기
	</h4>
	<hr>
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">

				<form class="form-horizontal style-form"
				 action="/project/board/updatepro"  method="post">
				 <input type="hidden" name="board_no" value="${board.board_no}">
					<div class="form-group">
						<div class="col-md-2 text-right">
							<label for="id" class="control-label">번호</label>
						</div>
						<div class="col-md-8">${board.board_no }</div>
					</div>
					<input type="hidden" name="board_no" value="${board.board_no }" disabled>
					<div class="form-group">
					</div>
					<div class="form-group" style="border: 1px solid #eff2f7;">
						<label class="col-sm-2 col-sm-2 control-label">작성자</label>
						<div class="col-sm-10">

							<p class="form-control-static">
								${board.id}
							</p>
						</div>
					
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">제목</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="title" value="${board.title }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 col-sm-2 control-label">내용</label>
							<div class="col-sm-8">
								<textarea id="content"
									style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
									rows=15 name="content">${board.content }</textarea>

							</div>
						</div>
						<c:if test="${sessionScope.id == board.id}">
                            <div class="form-group">
                                <div class="col-lg-4 text-center"></div>
                                <div class="col-lg-2 text-center">
                                    <button type="submit" class="btn btn-success btn-custom btn-success-custom">수정</button>
                                </div>
                                <div class="col-lg-2 text-center">
                                    <button type="reset" class="btn btn-default btn-custom btn-default-custom">취소</button>
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${sessionScope.id != board.id}">
                            <script type="text/javascript">
                                alert("수정할 수 없습니다. 아이디를 확인해주세요.");
                                window.location.href = "/project/board/list";
                            </script>
                        </c:if>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>