/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DigitalDAO;
import entity.Digital;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author khoi.tranvan
 */
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            DigitalDAO digitalDAO = new DigitalDAO();

            Digital latestDigital = digitalDAO.getLatestDigital();
            List<Digital> listFiveDigital = digitalDAO.getTopDigital(5);

            String url = request.getServletPath();
            if (url.equals("/home")) {
                /* If url is /home */
                request.setAttribute("detail", latestDigital);
            } else if (url.equals("/detail")) {
                /* If url is /detail */
                try {
                    int id = Integer.parseInt(request.getParameter("id"));
                    Digital digitalDetail = digitalDAO.getDigitalByID(id);
                    request.setAttribute("detail", digitalDetail);
                } catch (Exception e) {
                    response.sendRedirect(request.getContextPath() + "/home");
                    return;
                }
            }

            request.setAttribute("top5", listFiveDigital);
            request.setAttribute("lastD", latestDigital);

            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
            request.setAttribute("error", e.toString());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
