
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Chanhee</title>
	<script type="text/javascript">
		
	</script>
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
 </head>
	
<body>
<h4>
		<i class="fa fa-angle-right"></i> 회원가입
	</h4>
	<a href="/project/">홈으로</a>
	<div class="container-fluid">
			
			<form role="form" class="form-horizontal"	action="/project/member/write" 
				method="POST"		name="myform">
				<fieldset>
					<div class="form-group">
						<!-- 아이디-->
						<label class="control-label col-sm-2" for="id">아이디</label>
						<div class="col-sm-3">
							<input type="text" id="id" name="id"
								placeholder="아이디" class="form-control" 
								 >
						</div>
						<span id="checkVal" style="color: red;"></span>
					</div>
					
					<div class="form-group">
						<!-- 패스워드-->
						<label class="control-label col-sm-2" for="pw">패스워드</label>
						<div class="col-sm-3">
							<input type="text" id="pw" name="pw"
								placeholder="패스워드" class="form-control" >

						</div>
					</div>
					
					<div class="form-group">
						<!-- 성명-->
						<label class="control-label col-sm-2" for="name">성명</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name"
								placeholder="성명" class="form-control" minlength="3" >

						</div>
					</div>
					
					<div class="form-group">
						<!-- 성별-->
						<label class="control-label col-sm-2" for="gender">성별</label>
						<div class="col-sm-3">
							<input type="radio" id="gender" name="gender" placeholder="성별" value="M">남
							<input type="radio" id="gender" name="gender" placeholder="성별" value="F">여
						</div>
					</div>
					
					<div class="form-group">
						<!-- 휴대전화-->
						<label class="control-label col-sm-2" for="tel">핸드폰번호</label>
						<div class="col-sm-5">
							<input type="text" id="tel" name="tel" 
							placeholder="핸드폰번호"
								class="form-control"  >
						<span class="help-block">Ex) 000-0000-000 방식으로 입력 부탁드립니다. </span>
						</div>
					</div>
					
					<div class="form-group">
						<!-- 생년월일-->
						<label class="control-label col-sm-2" for="birth">생년월일</label>
						<div class="col-sm-3">
							<input type="text" id="birth" name="birth"
								placeholder="생년월일" class="form-control" 
								 >
						</div>
					</div>
					
					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-3 col-sm-offset-2">
							<input type="submit" value="가입하기" class="btn btn-success"/>
						</div>
					</div>
				</fieldset>
		</form>
	</div>
	
</body>
</html>