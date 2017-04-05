/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;


import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Month;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.bean.Contato;
import model.bean.Telefone;
import model.dao.ContatoDAO;
import model.dao.TelefoneDAO;


/**
 *
 * @author jose
 */
public class Agenda {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        List<Contato> contatos;
        ContatoDAO conDAO = new ContatoDAO();
        TelefoneDAO tda= new TelefoneDAO();
        Telefone ts = tda.getTelefone(1);
        ts.setNumero(99999999);
        
        tda.updateTelefone(ts);
        
        System.out.println(conDAO.getContato("elisa").getNome());
        
        conDAO.delContato(5);
        
        contatos=conDAO.getContatos();
        
        
        for(Contato c : contatos){
            System.out.println(c.getNome());
            for(Telefone t : c.getTelefones()){
                System.out.print(t.getNumero()+", ");
            }
            System.out.println(c.getDataNacimento());
            
        }
    }
    
}
