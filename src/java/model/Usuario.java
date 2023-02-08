
package model;

import java.io.Serializable;
import java.sql.Date;


public class Usuario implements Serializable{
   
    private int usuarioId;
    private String nombre;
    private String apellido;
    private String nickName;
    private String clave;
    private Date fechaNacimiento;
    private String nacionalidad;
    private String sexo;
    
    
    public Usuario() {
        this.usuarioId = 0;
        this.nombre = "";
        this.apellido = "";
        this.nickName = "";
        this.clave = "";
        this.fechaNacimiento = null;
        this.nacionalidad = "";
        this.sexo = "";
    }

    public Usuario(String nombre, String apellido, String nickName, String clave, Date fechaNacimiento, String nacionalidad, String sexo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.nickName = nickName;
        this.clave = clave;
        this.fechaNacimiento = fechaNacimiento;
        this.nacionalidad = nacionalidad;
        this.sexo = sexo;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getNacionalidad() {
        return nacionalidad;
    }

    public void setNacionalidad(String nacionalidad) {
        this.nacionalidad = nacionalidad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }
       
}
