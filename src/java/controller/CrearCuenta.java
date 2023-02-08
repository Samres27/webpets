
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

import model.Usuario;

/**
 *
 * @author julia
 */
public class CrearCuenta extends HttpServlet {

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
            out.println("<title>Servlet CrearCuenta</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CrearCuenta at " + request.getContextPath() + "</h1>");
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
            String nombres = request.getParameter("nombres");
            String apellidos = request.getParameter("apellidos");
            String user = request.getParameter("nick_name");
            String clave = request.getParameter("clave");
            String fechaNacimiento = request.getParameter("fecha_nacimiento");
            String nacionalidad = request.getParameter("nacionalidad");
            String sexo = request.getParameter("sexo");
            
            if(Basedatos.buscarUser(user)){            
                    request.setAttribute("mensaje", "El nombre de usario ya existe por favor ingrese otro");   
            }else{
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    long fecha = 0;
                try {
                    fecha = sdf.parse(fechaNacimiento).getTime();
                } catch (ParseException ex) {
                    
                }
                    Date date = new Date(fecha);
                
                
                if(!clave.equals("")){
                    if(clave.length()>6){
                        Usuario usuario = new Usuario(nombres, apellidos, user, clave, date, nacionalidad, sexo);
                        if(Basedatos.registrarUser(usuario)){
                            request.setAttribute("mensaje", "Registro exitoso!");
                        }else{
                            request.setAttribute("mensaje", "Vuelva a intentar");
                        }
                    }else{
                        request.setAttribute("mensaje", "Ingrese una contraseña mayor a 6 caracteres");
                    }
                }else{
                    request.setAttribute("mensaje", "Ingrese una contraseña valida");
                }
            }
            request.getRequestDispatcher("crearCuenta.jsp").forward(request, response);
        
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
