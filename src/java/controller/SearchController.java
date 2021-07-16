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
public class SearchController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try { 
            /* Get keyword that user wants to search */
            if(!request.getParameterMap().containsKey("keyword")){
                response.sendRedirect(request.getContextPath() + "/home");
                return;
            }
            String keyword = request.getParameter("keyword").trim();
            if (keyword == null || keyword.equals("")) {
                response.sendRedirect(request.getContextPath() + "/home");
                return;
            }

            DigitalDAO digitalDAO = new DigitalDAO();
            int index = 1;  /* Dafault index page */
            int size = 2;   /* Number of records that show up in a pagemj */

            /* Get current page index  */
            if (request.getParameterMap().containsKey("index")) {
                try {
                    index = Integer.parseInt(request.getParameter("index"));
                } catch (NumberFormatException e) {
                    index = 1;
                }
            }

            Digital latestDigital = digitalDAO.getLatestDigital();                                  /* Get the latest digital news */
            List<Digital> listFiveDigital = digitalDAO.getTopDigital(5);                            /* 5 latest digital news */
            List<Digital> listSearchPaging = digitalDAO.searchDigitalPaging(keyword, index, size);  /* List of digital news that user wants to search in paging page */
            
            /* Calculate total page of records that user has searched */
            int searchRecords = digitalDAO.counSearchRecords(keyword);
            int page = searchRecords / size;
            if (searchRecords % size != 0) {
                page++;
            }
            request.setAttribute("result", "Total results return : "+searchRecords);
            request.setAttribute("listSearchPaging", listSearchPaging);
            request.setAttribute("keyword", keyword);
            request.setAttribute("index", index);
            request.setAttribute("page", page);
            request.setAttribute("top5", listFiveDigital);
            request.setAttribute("lastD", latestDigital);

            request.getRequestDispatcher("search.jsp").forward(request, response);

        } catch (Exception e) {
            request.setAttribute("error", e.toString());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

}
