/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author julia
 */
public class Publicacion {
    private int publicacionId;
    private int usuarioId;
    private Date fechaPublicacion;
    private String contenidoPublicacion;
    private Multimedia multimedia[];
    private String nickname;
    
    public Publicacion(int publicacionId, int usuarioId, Date fechaPublicacion, String contenidoPublicacion) {
        this.publicacionId = publicacionId;
        this.usuarioId = usuarioId;
        this.fechaPublicacion = fechaPublicacion;
        this.contenidoPublicacion = contenidoPublicacion;
    }
    
    public Publicacion() {
        this.publicacionId = 0;
        this.usuarioId = 0;
        this.fechaPublicacion = null;
        this.contenidoPublicacion = "";
        this.multimedia =null;
    }

    public int getPublicacionId() {
        return publicacionId;
    }

    public void setPublicacionId(int publicacionId) {
        this.publicacionId = publicacionId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(Date fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public String getContenidoPublicacion() {
        return contenidoPublicacion;
    }

    public void setContenidoPublicacion(String contenidoPublicacion) {
        this.contenidoPublicacion = contenidoPublicacion;
    }

    public Multimedia[] getMultimedia() {
        return multimedia;
    }

    public void setMultimedia(Multimedia[] multimedia) {
        this.multimedia = multimedia;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    
    
    
}
