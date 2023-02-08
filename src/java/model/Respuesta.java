/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author julia
 */
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import javax.print.attribute.DateTimeSyntax;
import javax.print.attribute.standard.DateTimeAtCompleted;
/**
 *
 * @author julian
 */
public class Respuesta implements Serializable{
    
    private int respuestaId;
    private int comentarioId;
    private int usuarioId;
    private String textoRespuesta;
    private Date fechaRespuesta;

    public Respuesta(int respuestaId, int comentarioId, int usuarioId, String textoRespuesta, Date fechaRespuesta) {
        this.respuestaId = respuestaId;
        this.comentarioId = comentarioId;
        this.usuarioId = usuarioId;
        this.textoRespuesta = textoRespuesta;
        this.fechaRespuesta = fechaRespuesta;
    }
    
    public Respuesta() {
        this.respuestaId = 0;
        this.comentarioId = 0;
        this.usuarioId = 0;
        this.textoRespuesta = "";
        this.fechaRespuesta = null;
    }

    public int getRespuestaId() {
        return respuestaId;
    }

    public void setRespuestaId(int respuestaId) {
        this.respuestaId = respuestaId;
    }

    public int getComentarioId() {
        return comentarioId;
    }

    public void setComentarioId(int comentarioId) {
        this.comentarioId = comentarioId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getTextoRespuesta() {
        return textoRespuesta;
    }

    public void setTextoRespuesta(String textoRespuesta) {
        this.textoRespuesta = textoRespuesta;
    }

    public Date getFechaRespuesta() {
        return fechaRespuesta;
    }

    public void setFechaRespuesta(Date fechaRespuesta) {
        this.fechaRespuesta = fechaRespuesta;
    }
    
    
    
}
