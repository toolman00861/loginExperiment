package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.userService;

import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class loginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        userService uService = new userService();
        HttpSession session = request.getSession(); // 获取当前Session

        if (!uService.validateUser(username)) {
            session.setAttribute("err", "Invalid username.");
            response.sendRedirect("login.jsp"); // 登录失败，重定向回登录页面
            return;
        }
        // 模拟用户验证，仅用于示例
        if (uService.login(username, password)) {
            session.setAttribute("username", username); // 将用户名设置到会话中
            response.sendRedirect("home.jsp"); // 登录成功，重定向到欢迎页面
        } else {
            session.setAttribute("err", "Invalid password.");
            response.sendRedirect("login.jsp"); // 登录失败，重定向回登录页面
        }
    }
}