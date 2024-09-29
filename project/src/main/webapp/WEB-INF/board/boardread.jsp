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
<style>

	#modifyRiply {
	
		width:600px;
		height: 130px;
		background-color: gray;
		padding: 10px;
		z-index: 10;
		visibility: hidden;
	
	}

</style>
</head>
<body>
<div>
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
	<div class="prev_next" style="text-align: center;">
				<a href="/project/board/read?board_no=${prev.board_no}&pageNum=${cri.pageNum}&amount=${cri.amount}&state=READ" class="btn_prev"><i class="fa fa-angle-left"></i>
				<span class="prev_wrap" style="margin-right: 50px;">
					<strong>이전글: </strong><span style="color:black;">${prev.title }</span>
				</span>
				</a>
				<a href="/project/board/read?board_no=${next.board_no }&pageNum=${cri.pageNum}&amount=${cri.amount}&state=READ" class="btn_next">
				<span class="next_wrap">
					<strong>다음글: </strong><span style="color:black;">${next.title }</span>
				</span>
				<i class="fa fa-angle-right"></i></a>
			</div>
		<div style="width:650px; text-align:center;">
			<br>
			<c:if test="${sessionScope.id != null}">
			<input type="hidden" name="riply_no" value="riply_no">
			<textarea rows="5" cols="80" id="riply_content" placeholder="댓글 작성하세요."></textarea>
			<br>
			<button type="button" id="btnRiply">댓글 작성</button>
			</c:if>
		</div>
		<div id="listriply"></div>
		
		<div id="updateRiplyModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">댓글 수정</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="hidden" id="updateRiplyNo">
                <textarea rows="5" cols="80" id="updateRiplyContent" placeholder="수정할 댓글 내용을 입력하세요."></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                <button type="button" class="btn btn-primary" id="btnUpdateRiply">수정 완료</button>
            </div>
        </div>
    </div>
</div>
</div>
</body>

<script>
	
	// ajax方式で登録
	$(document).ready(function(){
		
		listriply();
	
		$("#btnRiply").click(function(){
			var riply_content=$("#riply_content").val();
			var riply_no="${riply_no}"
			var board_no="${board.board_no}"
			var param="riply_content="+riply_content+"&board_no="+board_no;
			$.ajax({
				type:"post",
				url:"/project/riply/write",
				data:param,
				success: function(){
					alert("댓글이 등록되었습니다");
					listriply();
				}
			});
		});
	});
		
	function listriply() {
		
		// ajax方式でコメントリストを出力
	    $.ajax({
	        type: "get",
	        url: "/project/riply/list?board_no=${board.board_no}",
	        success: function(result) {
	            var output = "<table class='table'>";
	            for (var i in result) {
	                output += "<tr>";
	                output += "<td>[ 댓글번호 : " + result[i].riply_no + " | 작성자 아이디 : " + result[i].id + " | ";
	                output += "내용 : " + result[i].riply_content + " ]";
	                if (result[i].id === loggedInUserId) {
	                    output += "<button type='button' class='btn btn-danger btn-sm btn-delete' data-riply_no='" + result[i].riply_no + "'>삭제</button>";
	                    output += " <button type='button' class='btn btn-primary btn-sm btn-update' data-riply_no='" + result[i].riply_no + "' data-riply_content='" + result[i].riply_content + "'>수정</button></td>";
	                }
	                
	                output += "</tr>";
	            }
	            output += "</table>";
	            $("#listriply").html(output);
				
	            // ajax方式で削除
	            $(".btn-delete").click(function() {
	                var riply_no = $(this).data('riply_no');
	                $.ajax({
	                    type: "post",
	                    url: "/project/riply/delete",
	                    data: { riply_no: riply_no },
	                    success: function(response) {
	                    	alert("댓글이 삭제되었습니다.");
	                        listriply();
	                    },
	                    error: function() {
	                        alert("댓글 삭제에 실패했습니다.");
	                    }
	                });
	            });
	            
	            // 修正ボタンを押すと修正modal出力
	            $(".btn-update").click(function() {
	                var riply_no = $(this).data('riply_no');
	                var riply_content = $(this).data('riply_content');
	                $("#updateRiplyNo").val(riply_no);
	                $("#updateRiplyContent").val(riply_content);
	                $("#updateRiplyModal").modal('show');
	            });
	            
	            // ajax方式に修正
	            $(document).ready(function() {
	        	    $("#btnUpdateRiply").click(function() {
	        	        var riply_no = $("#updateRiplyNo").val();
	        	        var riply_content = $("#updateRiplyContent").val();
	        	        var param = "riply_no=" + encodeURIComponent(riply_no) + "&riply_content=" + encodeURIComponent(riply_content);

	        	        $.ajax({
	        	            type: "post",
	        	            url: "/project/riply/update",
	        	            data: param,
	        	            success: function(response) {
	        	                alert("댓글이 수정되었습니다.");
	        	                $("#updateRiplyModal").modal('hide');
	        	                listriply();
	        	            },
	        	            error: function() {
	        	                alert("댓글 수정에 실패했습니다.");
	        	            }
	        	        });
	        	    });
	        	});
	            
	        },
	        error: function() {
	            alert("댓글 목록을 불러오는 데 실패했습니다.");
	        }
	    });
	}
	

</script>
<script>
    var loggedInUserId = "${sessionScope.id}"; 
</script>
</html>