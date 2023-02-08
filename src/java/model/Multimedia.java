/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.io.Serializable;



/**
 *
 * @author julia
 */
public class Multimedia  implements Serializable{
    
    private int multimediaId;
    private int publicacionId;
    private String formato;
    private String contenidoMultimedia;

    public Multimedia(int multimediaId, int publicacionId, String formato, String contenidoMultimedia) {
        this.multimediaId = multimediaId;
        this.publicacionId = publicacionId;
        this.formato = formato;
        this.contenidoMultimedia = contenidoMultimedia;
    }
    public Multimedia() {
        this.multimediaId = 0;
        this.publicacionId = 0;
        this.formato = "";
        this.contenidoMultimedia = "";    
    }

    public int getMultimediaId() {
        return multimediaId;
    }

    public void setMultimediaId(int multimediaId) {
        this.multimediaId = multimediaId;
    }

    public int getPublicacionId() {
        return publicacionId;
    }

    public void setPublicacionId(int publicacionId) {
        this.publicacionId = publicacionId;
    }

    public String getFormato() {
        return formato;
    }

    public void setFormato(String formato) {
        this.formato = formato;
    }

    public String getContenidoMultimedia() {
        return contenidoMultimedia;
    }

    public void setContenidoMultimedia(String contenidoMultimedia) {
        this.contenidoMultimedia = contenidoMultimedia;
    }
    
    
    
}
