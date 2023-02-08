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
public class Mascota implements Serializable{
    
    private int mascotaId;
    private int usuarioId;
    private String nombreMascota;
    private int edadMascota;
    private String sexoMascota;
    private String EspecieMascota;

    public Mascota(int mascotaId, int usuarioId, String nombreMascota, int edadMascota, String sexoMascota, String EspecieMascota) {
        this.mascotaId = mascotaId;
        this.usuarioId = usuarioId;
        this.nombreMascota = nombreMascota;
        this.edadMascota = edadMascota;
        this.sexoMascota = sexoMascota;
        this.EspecieMascota = EspecieMascota;
    }
    
    public Mascota() {
        this.mascotaId = 0;
        this.usuarioId = 0;
        this.nombreMascota = "";
        this.edadMascota = 0;
        this.sexoMascota = "";
        this.EspecieMascota = "";
    }

    public int getMascotaId() {
        return mascotaId;
    }

    public void setMascotaId(int mascotaId) {
        this.mascotaId = mascotaId;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public String getNombreMascota() {
        return nombreMascota;
    }

    public void setNombreMascota(String nombreMascota) {
        this.nombreMascota = nombreMascota;
    }

    public int getEdadMascota() {
        return edadMascota;
    }

    public void setEdadMascota(int edadMascota) {
        this.edadMascota = edadMascota;
    }

    public String getSexoMascota() {
        return sexoMascota;
    }

    public void setSexoMascota(String sexoMascota) {
        this.sexoMascota = sexoMascota;
    }

    public String getEspecieMascota() {
        return EspecieMascota;
    }

    public void setEspecieMascota(String EspecieMascota) {
        this.EspecieMascota = EspecieMascota;
    }
    
    
    
}
