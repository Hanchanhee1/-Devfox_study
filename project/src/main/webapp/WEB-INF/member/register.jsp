<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
<div>
<h4>회원가입</h4>
<form name="register_frm" action="/project/member/write" method="post">
    <label for="id">아이디:</label>
    <input type="text" name="id" id="id" />
    <c:if test="${not empty message}">
        <p style="color: red;">${message}</p>
    </c:if>
    <br/>
    <label for="pw">비밀번호:</label>
    <input type="password" name="pw" id="pw" />
    <br/>
    <label for="name">이름:</label>
    <input type="text" name="name" id="name" />
    <br/>
    <label for="gender">성별:</label>
    <select name="gender" id="gender">
        <option value="M">남</option>
        <option value="F">여</option>
    </select>
    <br/>
    <label for="tel">전화번호:</label>
    <input type="text" name="tel" id="tel" />
    <br/>
    <label for="birth">생일:</label>
    <input type="text" name="birth" id="birth" />
    <br/>
    <input type="submit" value="가입하기" />
</form>
</div>
</body>
</html>
