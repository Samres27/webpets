/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import com.google.gson.Gson;
import dao.Basedatos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import model.Multimedia;

/**
 * EditarPublicacionControlador
 * @author julia
 */
public class EditarPublicacionControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     private  Gson gson = new Gson();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EditarPublicacion</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditarPublicacion at " + request.getContextPath() + "</h1>");
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
        String textoPublicacion = request.getParameter("texto_edicion");
        int idPublicacion =Integer.parseInt(request.getParameter("publicacion_id"));
        String contenido_multimedia[] = request.getParameterValues("multimedia");
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
         String respuestaJson=" ";
        
        if (Basedatos.eliminarMultimediaPorIdPublicacion(idPublicacion) && contenido_multimedia.length>0){
            
            //atrapo el png de la cadena dentro de las imagenes
            boolean success = true;
            for (int i=0; i<contenido_multimedia.length;i++){
                String contenido = contenido_multimedia[i];
                String formato = contenido.substring(11,14);
                
                        
                        Multimedia  mul = new Multimedia(0,idPublicacion,formato, contenido);
                        if(!Basedatos.registrarMultimedia(mul)){
                            success=false;
                        }
            }
            String fechaPublicacion = LocalDate.now()+"";
            if(success && Basedatos.setPublicacion(idPublicacion, idUsuario, fechaPublicacion, textoPublicacion)){
                 respuestaJson = this.gson.toJson("Se realizo correctamente la actualizacion de datos");
                
            }else{
               respuestaJson = this.gson.toJson("No se pudo actualizar los datos");
               
            }
           
        }
                
                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                out.print(respuestaJson);
                out.flush();
    
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
