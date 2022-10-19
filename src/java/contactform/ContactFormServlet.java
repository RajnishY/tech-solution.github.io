/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package contactform;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author 91769
 */
public class ContactFormServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ContactFormServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ContactFormServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
            String n=request.getParameter("name");
            String em=request.getParameter("email");
            String s=request.getParameter("subject");
            String m=request.getParameter("message"); 
        try
        {
            PrintWriter out=response.getWriter();
            Class.forName("com.mysql.jdbc.Driver");    
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_commerce","root", "21mca3015");
            String sql="insert into ecom_contactform values('"+n+"','"+em+"','"+s+"','"+m+"')";
//            out.println(sql);
            PreparedStatement ps=con.prepareStatement(sql);
            
            ps.executeQuery();
            
//            if(rs.next()){
                 response.sendRedirect("contactus.jsp?msg=Message send succesfully");
//            }else{
//                response.sendRedirect("contactus.jsp?Some issue occur");
//            }
            
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
