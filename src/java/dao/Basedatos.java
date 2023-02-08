package dao;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import model.Comentario;
import model.Multimedia;
import model.Publicacion;
import model.Respuesta;
import model.Usuario;

/**
 *
 * @author yosoy
 */
public class Basedatos {
    // * Clase de acceso a los datos
    /**
        * En esta clase los metodos seran publicos y estaticos.
        * Tener metodos estaticos con el fin de agilizar las consultas sin tener que declarar la clase.
        * Los nombres de los metodos seran claros para cumplir los puntos expresados.
        * @author: Para indicar el autor del codigo
        * @method: Para indicar que hace el metodo. 
    */ 
    
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo esta encargado de registrar a un Usuario en la base de datos,  
        * @param u .
        * @return boolean si se pudo o no realizar la insersion.
    */
   
    public static boolean registrarUser(Usuario u ) {
        
        try {
            
            String SQL = "INSERT INTO usuario (`NOMBRES`,`APELLIDOS`,`NICKNAME`,`CLAVE`,`FECHA_NACIMIENTO`,`NACIONALIDAD`,`SEXO_USUARIO`) VALUES (?,?,?,?,?,?,?);";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
                st.setString(1, u.getNombre());
                st.setString(2, u.getApellido());
                st.setString(3, u.getNickName());
                st.setString(4, u.getClave());
                st.setDate(5, u.getFechaNacimiento());
                st.setString(6, u.getNacionalidad());
                st.setString(7 , u.getSexo());
            return (st.executeUpdate())>0;    
          
        } catch (SQLException ex) {
            return false;
        }
        
    }
    
    
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo tiene la funcionalidad de realizar una consulta 
                 con el fin de buscar a un usuario enla base de datos.  
        * @param nickname .
        * @return boolean si se encontro el nickname en la tabla.
    */
   
    public static boolean buscarUser(String nickname){
        try {
            boolean resp = false;
            String SQL = "SELECT * FROM `usuario` WHERE `NICKNAME` = '"+ nickname +"';";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL);
            ResultSet result = st.executeQuery();
            while (result.next()){
                resp=true;
            }
            return resp;
            
        } catch (SQLException ex) {
            return false;
        }
        
    }
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo tiene la funcionalidad de realizar una consulta 
                 con el fin de encontrar el usuarioId por el nickname.  
        * @param nickname .
        * @return si encuentra el id reornara un entero sino devolvera un 0.
    */
   
    public static int retornarUsuarioId(String nickname){
        try {
            if(buscarUser(nickname)){
                String SQL = "SELECT * FROM `usuario` WHERE `NICKNAME` = '"+ nickname +"';";
                Connection con = Conexion.conectar();
                PreparedStatement st = con.prepareStatement(SQL);
                ResultSet result = st.executeQuery();
                int id=0;
                while (result.next()){
                    id = result.getInt("USUARIO_ID");
                }
                return id;
            }else{
                return 0;
            }   
        } catch (SQLException ex) {
            return 0;
        }
        
    }
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo tiene la funcionalidad de realizar una consulta 
                 con el fin de encontrar las publicaciones de un usuario.  
        * @param usuarioId .
        * @return ArrayList<Publicacion>.
    */
   
    public static ArrayList<Publicacion> retornarPublicacionesPorId(int usuarioId){
        try {
            
                String SQL = "SELECT p.*, u.`NICKNAME`  FROM `usuario` u,`publicacion` p "
                        + "WHERE (p.`USUARIO_ID`="+usuarioId+" AND u.`USUARIO_ID`=p.`USUARIO_ID`);";
                Connection con = Conexion.conectar();
                PreparedStatement st = con.prepareStatement(SQL);
                ResultSet result = st.executeQuery();
                Publicacion p;
                ArrayList<Publicacion> pub = new ArrayList<>();
                while(result.next()){
                    p=new Publicacion();
                    p.setUsuarioId(result.getInt("USUARIO_ID"));
                    p.setFechaPublicacion(result.getDate("FECHA_PUBLICACION"));
                    p.setPublicacionId(result.getInt("PUBLICACION_ID"));
                    p.setContenidoPublicacion(result.getString("TEXTO_PUBLICACION"));
                    p.setNickname(result.getString("NICKNAME"));
                    pub.add(p);
                }
                
            return pub;
        } catch (SQLException ex) {
            return null;
        }
        
    }
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo tiene la funcionalidad de realizar una consulta 
                 con el fin de buscar la clave de cuanta de un usuario en la base de datos.  
        * @param clave .
        * @return boolean si se encontro la clave en las tablas.
    */
    public static boolean buscarPassword( String nickname, String clave){
        try {
            boolean resp = false;
            
            String SQL = "SELECT * FROM `usuario` WHERE `NICKNAME`='"+nickname+"' AND`CLAVE`='"+clave+"' ;";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL);
            ResultSet result = st.executeQuery();
            while (result.next()){
                resp=true;
            }
            return resp;
            
        } catch (SQLException ex) {
            return false;
        }
        
    }
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method En el metodo siguiente se realiza un listado de comentarios general
        * @param  .
        * 
        * @return ArrayList de Comentarios.
    */
    public static ArrayList<Comentario> listaComentarios( ) {
        
        try {
            
            String SQL = "SELECT * FROM `comentarios`;";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<Comentario> lista = new ArrayList<>();
            Comentario comentario;
            
            while(resultado.next()){
                comentario = new Comentario();
                comentario.setComentarioId(resultado.getInt("COMENTARIO_ID"));  
                comentario.setPublicacionId(resultado.getInt("PUBLICACION_ID"));
                comentario.setUsuarioId(resultado.getInt("USUARIO_ID"));
                comentario.setTextoComentario(resultado.getString("TEXTO_COMENTARIO"));
                
                lista.add(comentario);
            }
            
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
        
    }
    
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method En el metodo siguiente se obtendra la lista de comentarios de 
                 un id de publicacion. 
        * @param publicacionid .
        * 
        * @return ArrayList de Comentarios.
    */
    public static ArrayList<Comentario> listaComentarios(int publicacionid) {
        
        try {
            
            String SQL = "SELECT * FROM `comentarios` WHERE `PUBLICACION_ID`= "+publicacionid+";";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<Comentario> lista = new ArrayList<>();
            Comentario comentario;
            
            while(resultado.next()){
                comentario = new Comentario();
                comentario.setComentarioId(resultado.getInt("COMENTARIO_ID"));  
                comentario.setPublicacionId(resultado.getInt("PUBLICACION_ID"));
                comentario.setUsuarioId(resultado.getInt("USUARIO_ID"));
                comentario.setTextoComentario(resultado.getString("TEXTO_COMENTARIO"));
                
                lista.add(comentario);
            }
            
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
        
    }
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method En el metodo siguiente se obtendra la lista de Respuestas. 
        * @param  .
        * 
        * @return ArrayList de Respuestas.
    */
    
    public static ArrayList<Respuesta> listaRespuesta() {
        
        try {
            
            String SQL = "SELECT * FROM `respuestas`;";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<Respuesta> lista = new ArrayList<>();
            Respuesta respuesta;
            
            while(resultado.next()){
                respuesta = new Respuesta();
                respuesta.setRespuestaId(resultado.getInt("RESPUESTA_ID"));  
                respuesta.setComentarioId(resultado.getInt("COMENTARIO_ID"));
                respuesta.setUsuarioId(resultado.getInt("USUARIO_ID"));
                respuesta.setTextoRespuesta(resultado.getString("TEXTO_RESPUESTA"));
                respuesta.setFechaRespuesta(resultado.getDate("FECHA_RESPUESTA"));
                
                
       
                lista.add(respuesta);
            }
            
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
        
    }
    
     /**
        *@author Julian Angel Rodriguez Ortiz
        *@method En el metodo siguiente se obtendra la lista de respuestas de 
                 un id de comentario. 
        * @param comentarioid .
        * @return ArrayList de Comentarios.
    */
    public static ArrayList<Respuesta> listaRespuesta(int comentarioid) {  
        try {
            String SQL = "SELECT * FROM `comentarios` WHERE `PUBLICACION_ID`= "+comentarioid+";";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            ArrayList<Respuesta> lista = new ArrayList<>();
            Respuesta respuesta;
            while(resultado.next()){
                respuesta = new Respuesta();
                respuesta.setRespuestaId(resultado.getInt("RESPUESTA_ID"));  
                respuesta.setComentarioId(resultado.getInt("COMENTARIO_ID"));
                respuesta.setUsuarioId(resultado.getInt("USUARIO_ID"));
                respuesta.setTextoRespuesta(resultado.getString("TEXTO_RESPUESTA"));
                respuesta.setFechaRespuesta(resultado.getDate("FECHA_RESPUESTA"));
                
                
       
                lista.add(respuesta);
            }
            
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
        
    }
                     /**
     * 
     * @param id
     * @param idPublicacion
     * @param texto
     * @return 
  *@method:este metodo realiza la insersion de un comentario
  * @author Daniel Jose Reque Mendoza
  */
        public static boolean comentar(int id,int idPublicacion,String texto){
            try {
              String SQL ="INSERT INTO comentarios (PUBLICACION_ID,USUARIO_ID,TEXTO_COMENTARIO) VALUES (?,?,?);";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               st.setInt(1,idPublicacion);
               st.setInt(2,id);
               st.setString(3, texto);
               return st.executeUpdate()>0;
               
           } catch (SQLException ex) {
               return false;
           }  
        }
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo esta encargado de registrar una respuesta en la base de datos,  
        * @param r .
        * @return boolean si se pudo o no realizar la insersion.
    */
   
    public static boolean registrarRespuesta(Respuesta r ) {    
        try {
            
            String SQL = "INSERT INTO RESPUESTAS (`COMENTARIO_ID`,`USUARIO_ID`,`TEXTO_RESPUESTA`,`FECHA_RESPUESTA`) VALUES (?,?,?,?);";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
                st.setInt(1, r.getComentarioId());
                st.setInt(2, r.getUsuarioId());
                st.setString(3, r.getTextoRespuesta());
                st.setDate(4, (Date) r.getFechaRespuesta());
                
            return st.executeUpdate()>0;    
          
        } catch (SQLException ex) {
            return false;
        }
        
    }
    /**
        *@author Daniel Raid Montaño López
        *@method Este metodo esta encargado de registrar a una Publicación en la base de datos,  
        * @param pub .
        * @return devuelve el id de la ultima publicacion que se inserto.
    */
    public static int registrarPublicacion (Publicacion pub){
        try {
            String SQL="INSERT INTO publicacion(`USUARIO_ID`,`FECHA_PUBLICACION`,`TEXTO_PUBLICACION`) VALUES (?,?,?);";
            Connection con=Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            
            st.setInt(1,pub.getUsuarioId());
            st.setDate(2,pub.getFechaPublicacion());
            st.setString(3,pub.getContenidoPublicacion());
            st.executeUpdate();
            int id= 0;
            ResultSet ide = st.getGeneratedKeys();
                if(ide.next()){
                    id= ide.getInt(1);
                }
            return id;
            
            } catch (SQLException ex) {
            return 0;
            }
    }
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo esta encargado de registrar multimedia en la base de datos,  
        * @param m .
        * @return boolean si se pudo o no realizar la inserción.
    */
    public static boolean registrarMultimedia (Multimedia m){
        try {
            String SQL="INSERT INTO `multimedia`(`PUBLICACION_ID`,`TIPO_FORMATO`,`CONTENIDO_MULTIMEDIA`) VALUES (?,?,?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1,m.getPublicacionId());
            st.setString(2,m.getFormato());
            String convert= m.getContenidoMultimedia();
            InputStream targetStream = new ByteArrayInputStream(convert.getBytes()); 
            st.setBlob(3, targetStream);
            return (st.executeUpdate())>0;
            
            } catch (SQLException ex) {
            return false;
            }
    }
    /*@method en este metodo registra una mascota por parametros.
    @return boolean si se pudo realizar la insersion
    @param nombremascota
    */
    public static boolean registrarMascota(String ID,String nombre,String edad,String sexo,String especie ) {
        
        try {
            String SQL = "INSERT INTO MASCOTA(`USUARIO_ID`,`NOMBRE_MASCOTA`,`EDAD_MASCOTA`,`SEXO_MASCOTA`,`MASCOTA_ESPECIE`) VALUES ("+ID+",'"+nombre+"',"+edad+",'"+sexo+"','"+especie+"');";
            Connection con = Conexion.conectar();
            PreparedStatement st= con.prepareStatement(SQL);
            return (st.executeUpdate())>0;    
          
        } catch (SQLException ex) {
            return false;
        }
    }
    
    /**
     * @param ID
     * @param IDamigo
  *@method:este metodo comprueba si ya son amigos 
  * @author Daniel Jose Reque Mendoza
  */
     public static boolean esAmigo(int ID,int IDamigo){
         try{
             boolean resp=false;
         String SQL="SELECT * FROM amigo WHERE USUARIO_ID="+ID+" AND ID_USUARIO_AMIGO="+IDamigo+";";
         Connection con = Conexion.conectar();
         PreparedStatement st= con.prepareStatement(SQL);
         ResultSet resultado = st.executeQuery();
         while(resultado.next())
                resp=true;
         return resp;
             
         } catch (SQLException ex) {
            return false;
        }
     }
            /**
     * 
     * @param ID
     * @param IDamigo
  *@method:este metodo comprueba si ya te envio una solicitud
  * @author Daniel Jose Reque Mendoza
  */
     public static boolean yaTienesSolicitud(int ID,int IDamigo){
         try{
             boolean resp=false;
         String SQL="SELECT * FROM amigo WHERE USUARIO_ID="+IDamigo+" AND ID_USUARIO_AMIGO="+ID+";";
         Connection con = Conexion.conectar();
         PreparedStatement st= con.prepareStatement(SQL);
         ResultSet resultado = st.executeQuery();
         while(resultado.next())
                resp=true;
         return resp;
             
         } catch (SQLException ex) {
            return false;
        }
     }
            /**
     * @param ID
     * @param IDamigo
  *@method:este metodo envia la solicitud a registrarse
  * @author Daniel Jose Reque Mendoza
  */
     public static boolean enviarSolicitud(int ID,int IDamigo){
          try {
              char n=34;
               DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
               String SQL ="INSERT INTO AMIGO(USUARIO_ID,ID_USUARIO_AMIGO,FECHA_SOLICITUD) VALUES (?,?,"+n+dtf.format(LocalDateTime.now())+n+");";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               st.setInt(1,ID);
               st.setInt(2,IDamigo);
               return (st.executeUpdate())>0;
               
           } catch (SQLException ex) {
               return false;
           }  
       }
            /**
     * @param ID
     * @param IDamigo
  *@method:este metodo responde a una solicitud ya enviada
  * @author Daniel Jose Reque Mendoza
  */
       public static boolean responderSolicitud(int ID,int IDamigo){
          try {
              char n=34;
              DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
               String SQL ="UPDATE amigo SET FECHA_ACEPTACION="+n+dtf.format(LocalDateTime.now())+n+"WHERE `USUARIO_ID`="+ID+" AND ID_USUARIO_AMIGO =";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               return st.executeUpdate()>0;
               
           } catch (SQLException ex) {
               return false;
           }  
       }
    
    
    /**
 *@method:este metodo edita la informacion de un usuario
 * @author Daniel Jose Reque Mendoza
 * @param id_usuario 
 * @param nombre_nuevo.
 */
        public static boolean setUsuario(String nuevoNombres,String nuevoApellidos, String nuevoSexoUsuario, String nuevaClave, String nuevaFechaDeNacimiento, String nuevaNacionalidad, String nuevoNickname ){
       try {
           char n=34;
            String SQL ="UPDATE `usuario` SET `NOMBRES` = '"+nuevoNombres+"',`APELLIDOS`= '"+nuevoApellidos+"', `CLAVE`= '"+nuevaClave+"',`FECHA_NACIMIENTO`= "+n+nuevaFechaDeNacimiento+n+",`NACIONALIDAD`= '"+nuevaNacionalidad+"',`SEXO_USUARIO`= '"+nuevoSexoUsuario+"' WHERE `NICKNAME`='"+nuevoNickname+"';";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL);
            return st.executeUpdate()>0;
        } catch (SQLException ex) {
            return false;
        }  
    }
  /**
  *@method:este metodo edita la informacion de la mascota de un usuario
  * @author Daniel Jose Reque Mendoza
  * @param idUsuario , nuevoTipo
  */
           public static boolean setMascota(int idUsuario, int edadMascota, String nuevoTipo, String sexoMascota, String nombreNuevo){
          try {
               String SQL ="UPDATE `mascota` SET `MASCOTA_ESPECIE`='"+nuevoTipo+"' , "
                       + "`NOMBRE_MASCOTA`='"+nombreNuevo+"', `SEXO_MASCOTA`='"+sexoMascota +"', "
                       + "`EDAD_MASCOTA`="+edadMascota+"   WHERE `USUARIO_ID`="+idUsuario+";";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               return st.executeUpdate()>0;
           } catch (SQLException ex) {
               return false;
           }  
       }
    /**
    *@method: El metodo realiza una busqueda en la base de datos para encontrar las publicaciones
    *         que en su contenido tengan un texto igual al ingresado
    * @author Julian Angel Rodriguez Ortiz
    * @param textoBuscado
    * @return ArrayList<Publiacion> .
    */
     public static ArrayList<Publicacion> buscarPublicaciones(String textoBuscado){
        try{
            String SQL = "SELECT p.`PUBLICACION_ID`, p.`FECHA_PUBLICACION`, p.`TEXTO_PUBLICACION`, "
               + "p.`USUARIO_ID`, u.`NICKNAME` FROM `usuario` u,`publicacion` "
               + "p  WHERE (u.`USUARIO_ID` = p.`USUARIO_ID`) AND "
               + " (p.`TEXTO_PUBLICACION` LIKE '%"+textoBuscado+"%');";
       
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            
            ArrayList<Publicacion> lista = new ArrayList<>();
            Publicacion publicacion;
            
            while(resultado.next()){
                publicacion = new Publicacion();
                
                publicacion.setUsuarioId(resultado.getInt("USUARIO_ID"));
                publicacion.setFechaPublicacion(resultado.getDate("FECHA_PUBLICACION"));
                publicacion.setPublicacionId(resultado.getInt("PUBLICACION_ID"));
                publicacion.setNickname(resultado.getString("NICKNAME"));
                lista.add(publicacion);
            }
            
            return lista;
            
        } catch (SQLException ex) {
            return null;
        }
     
     }
     
     /**
           *@method: El metodo realiza una busqueda en la base de datos para encontrar una publicacion
           *         por su id
           * @author Julian Angel Rodriguez Ortiz
           * @param idPublicacion
           * @return Publicacion .
           */
     public static Publicacion buscarPublicacionesPorId(int idPublicacion){
        try{
            String SQL = "SELECT  u.`NICKNAME`,p.`USUARIO_ID`, p.`FECHA_PUBLICACION`, p.`TEXTO_PUBLICACION`, m.`CONTENIDO_MULTIMEDIA`, m.`MULTIMEDIA_ID`"
                    + "FROM `usuario` u,`publicacion` p LEFT JOIN `multimedia` m ON (m.`PUBLICACION_ID`=p.`PUBLICACION_ID` AND p.`PUBLICACION_ID` = "+idPublicacion+") "
                    + "WHERE (p.`PUBLICACION_ID`= "+idPublicacion+" AND u.`USUARIO_ID`=p.`USUARIO_ID` );" ;
       
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            ResultSet resultado = st.executeQuery();
            
            ArrayList<Multimedia> lista = new ArrayList<>();
            
            Publicacion p = new Publicacion();
             Multimedia m;
            while(resultado.next()){
                if(p.getPublicacionId()==0){
                    p.setUsuarioId(resultado.getInt("USUARIO_ID"));
                    p.setFechaPublicacion(resultado.getDate("FECHA_PUBLICACION"));
                    p.setPublicacionId(idPublicacion);
                    p.setContenidoPublicacion(resultado.getString("TEXTO_PUBLICACION"));
                    p.setNickname(resultado.getString("NICKNAME"));
                }
                
                 m = new Multimedia();
                m.setContenidoMultimedia(resultado.getString("CONTENIDO_MULTIMEDIA"));
                m.setMultimediaId(resultado.getInt("MULTIMEDIA_ID"));
                m.setPublicacionId(idPublicacion);
                lista.add(m);
                
            }
            Multimedia[] multi = new Multimedia [lista.size()];
            if(p.getPublicacionId()!=0){
                for (int i = 0; i<lista.size();i++ ){
                    multi[i] =  lista.get(i);
                }
                p.setMultimedia(multi);
            }
           
            
            return p;
            
        } catch (SQLException ex) {
            return null;
        }
     
     }
     
    /**
           *@method: El metodo realiza una actualizacion de la informacion en Publicaciones 
           * @author Julian Angel Rodriguez Ortiz
           * @param Publicacion 
           * @return Boolean si se ejectuto correctamente.
           */   
     public static boolean setPublicacion(int idUsuario, int idPublicacion, String fechaPublicacion, String contenidoPublicacion){
          try {
             
               String SQL ="UPDATE `publicacion`  SET   `FECHA_PUBLICACION`='"+fechaPublicacion+"',"
                       + "`TEXTO_PUBLICACION`='"+contenidoPublicacion+"' WHERE `PUBLICACION_ID`= "+idPublicacion+"; ";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               return st.executeUpdate()>0;
           } catch (SQLException ex) {
               return false;
           }  
       }
     /**
           *@method: El metodo realiza una actualizacion de la informacion en Multimedia
           * @author Julian Angel Rodriguez Ortiz
           * @param Multimedia
           * @return Boolean si se ejectuto correctamente.
           */   
     public static boolean setMultimedia(int idMultimedia, String formato, String contenidoMultimedia){
          try {
              
               String SQL ="UPDATE `multimedia` SET `TIPO_FORMATO`='"+formato+"', `CONTENIDO_MULTIMEDIA`='"+contenidoMultimedia+"' WHERE `MULTIMEDIA_ID`="+idMultimedia+"; ";
               Connection con = Conexion.conectar();
               PreparedStatement st = con.prepareStatement(SQL);
               return st.executeUpdate()>0;
           } catch (SQLException ex) {
               return false;
           }  
       }
     
     /**
           *@method: Listara lod id de las multimedias, siendo el primer nodo la primera inserccion de una imagen por parte del usuario
           * @author Julian Angel Rodriguez Ortiz
           * @param idPublicacion
           * @return El ArrayLista de ids de la multimedia en funcion a un id Publiacacion.
           */ 
     public static boolean eliminarMultimediaPorIdPublicacion(int idPublicacion){
        try {
            if(idPublicacion!=0){
                String SQL = "DELETE FROM `multimedia` WHERE `PUBLICACION_ID`="+idPublicacion+"";
                Connection con = Conexion.conectar();
                PreparedStatement st = con.prepareStatement(SQL);
                
                
                return st.executeUpdate()>0;
            }else{
                return false;
            }   
        } catch (SQLException ex) {
            return false;
        }
        
    }
     
    /**
        *@author Julian Angel Rodriguez Ortiz
        *@method Este metodo tiene la funcionalidad de realizar una consulta 
                 con el fin de buscar a un usuario enla base de datos.  
        * @param nickname .
        * @return boolean si se encontro el nickname en la tabla.
    */
   
    public static boolean esModerador(String nickname){
        try {
            boolean resp = false;
            String SQL = "SELECT * FROM `usuario` WHERE `NICKNAME` = '"+ nickname +"' AND ;";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(SQL);
            ResultSet result = st.executeQuery();
            while (result.next()){
                resp=true;
            }
            return resp;
            
        } catch (SQLException ex) {
            return false;
        }
        
    }
}

