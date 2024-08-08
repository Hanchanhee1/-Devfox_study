<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정</title>
</head>
<body>
<h4>회원수정</h4>
<a href="/project/">홈으로</a>
<form name="register_frm" action="/project/member/updatepro" method="post" onsubmit="return confirm('수정 하시겠습니까?');">
    <input type="hidden" name="id" value="${member.id}" />
    <label for="pw">비밀번호:</label>
    <input type="password" name="pw" id="pw" value="${member.pw}" />
    <br/>
    <label for="name">이름:</label>
    <input type="text" name="name" id="name" value="${member.name}" />
    <br/>
    <label for="gender">성별:</label>
    <select name="gender" id="gender">
        <option value="M" ${member.gender == 'M' ? 'selected' : ''}>남</option>
        <option value="F" ${member.gender == 'F' ? 'selected' : ''}>여</option>
    </select>
    <br/>
    <label for="tel">전화번호:</label>
    <input type="text" name="tel" id="tel" value="${member.tel}" />
    <br/>
    <label for="birth">생일:</label>
    <input type="text" name="birth" id="birth" value="${member.birth}" />
    <br/>
    <input type="submit" value="수정하기" />
</form>
</body>
</html>