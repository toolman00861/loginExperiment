<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>登录界面</title>
</head>
<body>
<h1><%= "登录" %></h1>
<form action="loginServlet" method="post">
  <table>
    <tr>
      <td>用户名：</td>
      <td>
        <label>
        <input type="text" name="username">
        </label>
      </td>
    </tr>
    <tr>
      <td>密码：</td>
      <td><input type="password" name="password"></td>
    </tr>
    <tr>
      <td><input type="submit" value="登录"></td>
       <td><a href="register.jsp">注册</a></td>
    </tr>
  </table>
</form>

<br/>
<%
  if (session != null) { // 确保会话存在
    String msg = (String) session.getAttribute("msg");
    if (msg != null) {
%>
<p style='color:lightgreen;'> <%= msg %> </p>
<%
      session.removeAttribute("msg"); // 显示后清除信息
    }
  }
%>
<%
  if (session != null) { // 确保会话存在
    String err = (String) session.getAttribute("err");
    if (err != null) {
%>
<p style='color:orangered;'> <%= err %> </p>
<%
      session.removeAttribute("msg"); // 显示后清除信息
    }
  }
%>
</body>
</html>