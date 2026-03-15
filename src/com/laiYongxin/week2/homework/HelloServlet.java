package com.laiYongxin.week2.homework;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        response.setContentType("text/html;charset=UTF-8");

        // 核心修改：路径改为/WEB-INF/register.jsp（适配WEB-INF目录）
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/register.jsp");
        try {
            dispatcher.include(request, response);
        } catch (ServletException e) {
            System.out.println("JSP路径错误，真实路径：/WEB-INF/register.jsp");
            e.printStackTrace();
        }

        PrintWriter writer = response.getWriter();
        writer.println("<div style='margin-top:20px;border-top:1px solid #ccc;padding-top:10px;'>");
        writer.println("Hello World<br>");
        writer.println("Name : 赖永鑫<br>");
        writer.println("ID : 2024061010000318<br>");
        writer.println("Date and Time : " + new Date());
        writer.println("</div>");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
}