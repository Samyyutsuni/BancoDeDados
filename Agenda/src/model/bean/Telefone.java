package model.bean;

import java.io.Serializable;

public class Telefone implements Serializable {
     private static final long serialVersionUID = 1L;
    private int codigo;
    private long numero;
    private long principal;

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public long getNumero() {
        return numero;
    }

    public void setNumero(long numero) {
        this.numero = numero;
    }

    public long getPrincipal() {
        return principal;
    }

    public void setPrincipal(long principal) {
        this.principal = principal;
    }
    
     
}
