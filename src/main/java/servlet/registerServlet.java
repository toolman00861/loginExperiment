package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.userService;

import java.io.IOException;

public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        userService uService = new userService();
        HttpSession session = request.getSession();
        if (username.isEmpty() || password.isEmpty() || email.isEmpty() || phone.isEmpty()) {
            request.setAttribute("err", "Please fill in all fields.");
            response.sendRedirect("register.jsp");
            return;
        }
        if (uService.findUser(username) != null) {
            request.setAttribute("err", "Username already exists.");
            response.sendRedirect("register.jsp");
        } else {
            uService.addUser(username, password, email, phone);
            session.setAttribute("msg", "Registration successful.");
            response.sendRedirect("login.jsp");
        }
    }
}
