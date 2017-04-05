/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import model.bean.Telefone;
import util.DatabaseManager;

/**
 *
 * @author jose
 */
public class TelefoneDAO {

    DatabaseManager data = null;

    public void insertTelefone( Telefone tel, int id) throws SQLException {

        String sql = "INSERT INTO telefones(numero, principal, contato_codigo) VALUES (?,?,?)";
        data = new DatabaseManager();
        try (PreparedStatement ps =(PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setLong(1, tel.getNumero());
            ps.setLong(2, tel.getPrincipal());
            ps.setInt(3, id);
            ps.executeUpdate();
        }
    }
    
    public void insertTelefone( Telefone tel) throws SQLException {

        String sql = "INSERT INTO telefones(numero, principal) VALUES (?,?)";
        data = new DatabaseManager();
        try (PreparedStatement ps =(PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setLong(1, tel.getNumero());
            ps.setLong(2, tel.getPrincipal());            
            ps.executeUpdate();
        }
    }

    public Telefone getTelefone(int id) {
        PreparedStatement ps;
        ResultSet rs;
        Telefone resul = null;
        data = new DatabaseManager();
        String sql = "SELECT * FROM telefones  WHERE codigo = ?";
        try {
            ps = (PreparedStatement) data.getPreparedStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                resul = popula(rs);
            }

            rs.close();
            ps.close();

        } catch (SQLException e) {

            e.printStackTrace();
        }

        return resul;

    }

    public List<Telefone> getTelefones() {
        data = new DatabaseManager();
        List<Telefone> resul = new LinkedList<Telefone>();
        String sql = "SELECT * FROM telefones ";
        try {
            
            ResultSet rs = (ResultSet) data.getStatement().executeQuery(sql);
            while (rs.next()) {
                resul.add(popula(rs));
            }
            rs.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return resul;
    }
    
    public List<Telefone> getTelefones(int id) {
        PreparedStatement ps;
        ResultSet rs;       
        
        data = new DatabaseManager();
        List<Telefone> resul = new LinkedList<Telefone>();
        String sql = "SELECT * FROM telefones WHERE contato_codigo = ?";
        try {
            ps = (PreparedStatement) data.getPreparedStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                resul.add(popula(rs));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return resul;
    }
    
    public boolean delTelefone(int id) throws SQLException{
        boolean resul;
        String sql = "DELETE FROM  telefones WHERE codigo = ?";
        data = new DatabaseManager();
        try (PreparedStatement ps =(PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setInt(1, id);            
            resul=ps.execute();
        }
        return resul;
    }
    
    public boolean updateTelefone(Telefone t) throws SQLException{
        boolean resul;
        String sql = "UPDATE telefones SET codigo=?, numero=?, principal=?  WHERE codigo =?";
        data = new DatabaseManager();
        try (PreparedStatement ps =(PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setInt(1,t.getCodigo());
            ps.setLong(2, t.getNumero());
            ps.setLong(3, t.getPrincipal());
            ps.setInt(4, t.getCodigo());
            
            resul=ps.execute();
        }
        return resul;
    }
    
    public boolean updateTelefone(Telefone t, int id) throws SQLException{
        boolean resul;
        String sql = "UPDATE telefones SET codigo=?, numero=?, principal=? contato_codigo= ?  WHERE codigo = ?";
        data = new DatabaseManager();
        try (PreparedStatement ps =(PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setInt(1,t.getCodigo());
            ps.setLong(2, t.getNumero());
            ps.setLong(3, t.getPrincipal());
            ps.setInt(4, id);
            ps.setInt(5, t.getCodigo());
            resul=ps.execute();
        }
        return resul;
    }

    private Telefone popula(ResultSet rs) throws SQLException {
        Telefone t = new Telefone();
        t.setCodigo(rs.getInt("codigo"));
        t.setNumero(rs.getLong("numero"));
        t.setPrincipal(rs.getLong("principal"));
        return t;
    }
}
