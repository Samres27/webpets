/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


import java.io.Serializable;
/**
 *
 * @author julian
 */
public class Comentario implements Serializable {
    
    private int comentarioId;
    private int publicacionId;
    private int respuestaId;
    private int usuarioId;
    private String textoComentario;

    
    public Comentario(int comentarioId, int publicacionId, int respuestaId, int usuarioId, String textoComentario) {
        this.comentarioId = comentarioId;
        this.publicacionId = publicacionId;
        this.respuestaId = respuestaId;
        this.usuarioId = usuarioId;
        this.textoComentario = textoComentario;
    }
    
    
    public Comentario() {
        this.comentarioId = 0;
        this.publicacionId = 0;
        this.respuestaId = 0;
        this.usuarioId = 0;
        this.textoComentario = "";
    }

    
    public int getComentarioId() {
        return comentarioId;
    }

    public void setComentarioId(int comentarioId) {
        this.comentarioId = comentarioId;
    }

    public int getPublicacionId() {
        return publicacionId;
    }

    public void setPublicacionId(int publicacionId) {
        this.publicacionId = publicacionId;
    }

    public int getRespuestaId() {
        return respuestaId;
    }

    public void setRespuestaId(int respuestaId) {
        this.respuestaId = respuestaId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getTextoComentario() {
        return textoComentario;
    }

    public void setTextoComentario(String textoComentario) {
        this.textoComentario = textoComentario;
    }
    
    
}
