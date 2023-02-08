/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.Basedatos;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import model.Multimedia;
import model.Publicacion;

/**
 *
 * @author julia
 */
public class PublicarControlador extends HttpServlet {

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
            out.println("<title>Servlet multimediaControlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet multimediaControlador at " + request.getContextPath() + "</h1>");
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
       
        String contenido[] = request.getParameterValues("multimedia");
        String textoPublicacion = request.getParameter("texto_publicacion");
        String fechaPublicacion = LocalDate.now()+"";
        int idUsuario = Integer.parseInt((String) request.getParameter("id_user"));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            long fecha = 0;
          try {
                fecha = sdf.parse(fechaPublicacion).getTime();
          } catch (ParseException ex) {
                    
          }
          
          Date date = new Date(fecha);
          
        if(!textoPublicacion.equals("") && !textoPublicacion.equals("Comentar ...")){
            Publicacion pub = new Publicacion(0, idUsuario, date, textoPublicacion);
            int idPublicacion = Basedatos.registrarPublicacion(pub);
            if(idPublicacion > 0){
                if(contenido.length>0){
                    boolean success = true;
                    for (int i=0; i<contenido.length; i++){
                        Multimedia  mul = new Multimedia(0,idPublicacion,"png", contenido[i]);
                        if(!Basedatos.registrarMultimedia(mul)){
                            success=false;
                        }
                    }
                    
                    if(success){
                        request.setAttribute("mensaje", "Se publicacion exitosamente");
                    }else{
                        request.setAttribute("mensaje", "Ocurrio un error al publicar. Vuelva a intentar");
                    }
                    
                }else{
                    request.setAttribute("mensaje", "Se publicacion exitosamente sin imagen");
                }
            }else{
                request.setAttribute("mensaje", "No se logro hacer la publicacion");
            }
        }else{
            request.setAttribute("mensaje", "Ingrese un texto valido.");
        }
            
            
            request.getRequestDispatcher("publicarContenido.jsp").forward(request, response);
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
