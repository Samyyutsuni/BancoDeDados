package model.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Contato implements Serializable{
     private static final long serialVersionUID = 1L;
    private int codigo;
    
    private String nome;
    
    private String dataNacimento;
    
    private String email;
    
    private List<Telefone> telefones;

    public List<Telefone> getTelefones() {
        return telefones;
    }

    public void setTelefones(List<Telefone> telefones) {
        this.telefones = telefones;
    }   
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDataNacimento() {
        return dataNacimento;
    }

    public void setDataNacimento(String dataNacimento) {
        this.dataNacimento = dataNacimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
