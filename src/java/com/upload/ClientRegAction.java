/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.database.Dbconnection;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author KishanVenky
 */
@MultipartConfig(maxFileSize=16*1024*1024)
public class ClientRegAction extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       try{
         String pkey=request.getParameter("pkey");  
         String name=request.getParameter("name");  
         String email=request.getParameter("email"); 
         String mobile=request.getParameter("mobile"); 
         String address=request.getParameter("address"); 
         String uname=request.getParameter("uname"); 
         String pass=request.getParameter("pass"); 
         Part image=request.getPart("image");
         
         InputStream in=image.getInputStream();
     
         String k=Key.randomAlphaNumeric(6);
         String cid="CID"+k;
         
       
         Connection con=Dbconnection.getcon();
         PreparedStatement pst=con.prepareStatement("insert into client values('"+cid+"','"+pkey+"','"+name+"','"+email+"','"+mobile+"','"+address+"','"+uname+"','"+pass+"',?,'waiting','waiting','waiting')");
         pst.setBlob(1,in);
         int i=pst.executeUpdate();
         if(i>0){
             response.sendRedirect("Client.jsp?msg=Registraion Success..!!");
         }else{
               response.sendRedirect("ClientRegister.jsp?msg=Registraion Failed..!!");
         }
       }catch(Exception e){
        System.out.println(e);
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
