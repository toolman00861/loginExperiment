<%--
  Created by IntelliJ IDEA.
  User: Q
  Date: 2024/11/9
  Time: 17:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>AI交流网页</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <script src="js/scripts.js"></script>
    <style>

    </style>
</head>
<body>
<div id="sidebar">
    <h2>功能</h2>
    <ul>
        <li><a href="#">主页</a></li>
        <li><a href="#">设置</a></li>
        <li><a href="#">帮助</a></li>
        <li><a href="#">关于</a></li>
    </ul>
</div>

<div id="main">
    <h1>与AI聊天</h1>
    <div id="chat-container">
        <div id="messages"></div>
        <div id="user-input-container">
            <input type="text" id="user-input" placeholder="输入您的消息...">
            <button onclick="sendMessage()">发送</button>
        </div>
    </div>
</div>

<div id="right-sidebar">
    <h2>文章推荐</h2>
    <ul>
        <li><a href="#">文章1</a></li>
        <li><a href="#">文章2</a></li>
        <li><a href="#">文章3</a></li>
        <li><a href="#">文章4</a></li>
    </ul>
</div>
</body>
</html>
