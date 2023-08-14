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
public class userdetailquickquote extends HttpServlet {

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
        String str=request.getParameter("q_quote_id");
        int id=Integer.parseInt(str.trim());
        SafexQuickQuoteDAOImpl daoObj=new SafexQuickQuoteDAOImpl();
        SafexQuickQuote obj=new SafexQuickQuote();
        obj.setQ_quote_id(id);
        obj=daoObj.getRecordById(id);
        System.out.println("Servlet"+obj);
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet userdetailquickquote</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println(" <table border=1px>");
            out.println(" <tr>");
            out.println("        <th>q_quote_ID </th>");
            out.println("        <th>Name </th>");
            out.println("        <th>Email </th>");
            out.println("        <th>Phone </th>");
            out.println(" </tr>");
            out.println(" <tr>");
            out.println("<td>"+obj.getQ_quote_id()+"</td>");
            out.println("<td>"+obj.getName()+"</td>"); 
            out.println("<td>"+obj.getEmail()+"</td>");
            out.println("<td>"+obj.getPhone()+"</td>");        
            out.println("  </tr>    "); 
            out.println("   </table>");
            out.println("<h1>Servlet userdetailquickquote at " + request.getContextPath() + "</h1>");
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
