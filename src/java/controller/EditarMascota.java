package controller;

import dao.Basedatos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Daniel
 */
public class EditarMascota extends HttpServlet {

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
            out.println("<title>Servlet EditarMascota</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarMascota at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String nickname = request.getParameter("nickname");
        String clave= request.getParameter("clave");
        String nombre = request.getParameter("nombre");
        String edad = request.getParameter("edadMascota");
        String sexo = request.getParameter("sexoMascota");
        String especie = request.getParameter("especie");
        
        int edadm=Integer.parseInt(edad);
        if(Basedatos.buscarPassword(nickname,clave)){
            int ID=Basedatos.retornarUsuarioId(nickname);
            if(Basedatos.setMascota(ID,edadm, especie, sexo, nombre)){
                            request.setAttribute("mensaje", "El cambio se realizo con exito");
            }   
            else
                            request.setAttribute("mensaje", "no se pudo realizar el cambio");
        }
        else
            
            request.setAttribute("mensaje", "El nombre de usuario o la contraseña es incorrecto");
        
        request.getRequestDispatcher("editarMascota.jsp").forward(request, response);
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