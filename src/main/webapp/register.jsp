<%--
  Created by IntelliJ IDEA.
  User: Q
  Date: 2024/11/8
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
    <form action="">
        <table>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>手机号：</td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td><input type="submit" value="注册"></td>
            </tr>
        </table>
    </form>
    <br/>
    <%
        String msg = (String) session.getAttribute("msg");
        if (msg != null) {
    %>
    <p style='color:orangered;'> <%= msg %> </p>
    <%
            session.removeAttribute("msg"); // 显示后清除信息
        }
    %>
</body>
</html>
