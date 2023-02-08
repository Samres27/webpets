
package model;

import java.io.Serializable;
import java.sql.Date;

public class Amigo implements Serializable{
     private int amigo_id;
     private int usuario_id;
     private int id_usuario_amigo;
     private Date fecha_solicitud;
     private Date fecha_respuesta;

    public Amigo(int amigo_id, int usuario_id, int id_usuario_amigo, Date fecha_solicitud) {
        this.amigo_id = amigo_id;
        this.usuario_id = usuario_id;
        this.id_usuario_amigo = id_usuario_amigo;
        this.fecha_solicitud = fecha_solicitud;
    }
    
    public Amigo(){
        this.amigo_id=0;
        this.usuario_id=0;
        this.id_usuario_amigo=0;
        this.fecha_solicitud=null;
        this.fecha_respuesta=null;
    }

    public int getAmigo_id() {
        return amigo_id;
    }

    public void setAmigo_id(int amigo_id) {
        this.amigo_id = amigo_id;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public int getId_usuario_amigo() {
        return id_usuario_amigo;
    }

    public void setId_usuario_amigo(int id_usuario_amigo) {
        this.id_usuario_amigo = id_usuario_amigo;
    }

    public Date getFecha_solicitud() {
        return fecha_solicitud;
    }

    public void setFecha_solicitud(Date fecha_solicitud) {
        this.fecha_solicitud = fecha_solicitud;
    }
    
    
     
     
}
