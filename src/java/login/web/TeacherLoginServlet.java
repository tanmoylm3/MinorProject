/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import login.bean.LoginBean;

import login.database.TeacherLoginDao;

/**
 *
 * @author Tanmoy
 */
@WebServlet("/login1")
public class TeacherLoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private TeacherLoginDao loginDao1;

    public void init() {
        loginDao1 = new TeacherLoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        LoginBean loginBean1 = new LoginBean();
        loginBean1.setUsername(username);
        loginBean1.setPassword(password);

        try {
            if (loginDao1.validate(loginBean1)) {
                HttpSession session = request.getSession();
                session.setAttribute("sessionid1",username);
                response.sendRedirect("TEACHER_DASHBOARD.jsp");
            } else {
                HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("index.jsp");
                
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
