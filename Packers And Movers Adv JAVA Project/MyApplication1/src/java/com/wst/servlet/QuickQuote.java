/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.wst.servlet;

import com.wst.bean.SafexQuickQuote;
import com.wst.dao.SafexQuickQuoteDAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
public class QuickQuote extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String name=request.getParameter("sxhname");
        String email=request.getParameter("sxhemail");
        String phone=request.getParameter("sxhphone");
        String movingfrom=request.getParameter("sxhmfrom");
        String movingto=request.getParameter("sxhmto");
        String movingdate=request.getParameter("sxhmdate");
        String message=request.getParameter("sxhmessage");
        String isread="No";
        SafexQuickQuote obj=new SafexQuickQuote();
        obj.setName(name);
        obj.setEmail(email);
        obj.setPhone(phone);
        obj.setMoving_from(movingfrom);
        obj.setMoving_to(movingto);
        obj.setMoving_date(movingdate);
        obj.setMessage(message);
        obj.setIs_read(isread);
        SafexQuickQuoteDAOImpl daoObj=new SafexQuickQuoteDAOImpl();
        int r=daoObj.registerUser(obj);
        PrintWriter out = response.getWriter();
        response.sendRedirect("./index.jsp?sucess=messageSent");
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet QuickQuote</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Record Inserted "+r);
            //out.println("<h1>Servlet QueryQuote at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
