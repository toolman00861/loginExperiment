<%@ page import="JavaBean.User" %>
<%@ page import="service.userService" %>
<%--
  Created by IntelliJ IDEA.
  User: Q
  Date: 2024/11/8
  Time: 0:57
  To change this template use File | Settings | File Templates.
--%>
<%
    User user = new User();
    if(session != null) {
        String name = (String) session.getAttribute("username");
        userService service = new userService();
        user = service.findUser(name);
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
</head>
<body>
 <h1> 欢迎进入！ <%= user.getUsername() %></h1>
 <table>
     <tr>
         <td>
             <p>邮箱： <%= user.getEmail() %></p>
         </td>
     </tr>
     <tr>
         <td>
             <p>手机号： <%= user.getPhone() %></p>
         </td>
     </tr>
 </table>
</body>
</html>
