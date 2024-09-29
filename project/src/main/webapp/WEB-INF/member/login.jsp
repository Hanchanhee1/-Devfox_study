<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        .error-message {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div style="text-align:center;">
    <h4><i class="fa fa-angle-right"></i> 로그인</h4>
    <a href="/project/">홈으로</a>
    <form name="login_frm" action="/project/member/loginpro" method="post">
        <table cellpadding="0" cellspacing=5 width="815" bgcolor=#f3f3f3 border=0>
            <tr>
                <td bgcolor=#ffffff height=100% align=center valign=top>
                    <table cellpadding=0 cellspacing=0 border=0 width=710>
                        <tr>
                            <td>
                                <table cellpadding="0" cellspacing=0 width="100%" bgcolor=#f7f7f7 border=0>
                                    <tr>
                                        <td bgcolor=#ffffff align=center>
                                            <table cellpadding="0" cellspacing="0" border=0 align=center width=678>
                                                <tr>
                                                    <td align=center width=353>
                                                        <table cellpadding="0" cellspacing="0" border=0 width=353>
                                                            <tr>
                                                                <td>
                                                                    <table cellpadding="0" cellspacing="0" border=0>
                                                                        <tr>
                                                                            <td colspan=3><img src="/project/images/page_login.gif"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height=25></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td background="/project/images/inputBg.gif"><img src="/project/images/login_id.gif"></td>
                                                                            <td background="/project/images/inputBg.gif">
                                                                                <input type="text" name="id" size="15" class="grayinput" tabindex=1 style="width: 156;" value="">
                                                                            </td>
                                                                            <td rowspan=3 style="padding-left: 10" valign=bottom>
                                                                                <input type='image' src="/project/images/btn_login.gif" border="0" tabindex=3>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height=10></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td background="/project/images/inputBg.gif"><img src="/project/images/login_pass.gif"></td>
                                                                            <td background="/project/images/inputBg.gif">
                                                                                <input type="password" name="pw" size="15" class="grayinput" tabindex='2' style='width: 156;'>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan=3></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="padding-left: 60; padding-top: 60"></td>
                                                </tr>
                                                <tr>
                                                    <td colspan=3 style="padding-top: 20" style=padding-left:40></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height=30></td>
                        </tr>
                        <tr>
                            <td>
                                <c:if test="${not empty message}">
                                    <p class="error-message">${message}</p>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <td height=49></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
