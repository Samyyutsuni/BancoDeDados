package model.dao;

import com.oracle.webservices.internal.api.databinding.DatabindingModeFeature;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import model.bean.Contato;
import model.bean.Telefone;
import util.DatabaseManager;

public class ContatoDAO {

    private DatabaseManager data;

    public void setContato(Contato con) throws SQLException {
        String sql = "INSERT INTO contatos( nome, data_nascimento, email) VALUES (?,?,?)";
        data = new DatabaseManager();
        try (PreparedStatement ps = (PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setString(1, con.getNome());
            ps.setString(2, con.getDataNacimento());
            ps.setString(3, con.getEmail());
            ps.executeUpdate();
        }
    }

    public List<Contato> getContatos() {
        data = new DatabaseManager();
        List<Contato> contatos = new LinkedList<Contato>();
        String sql = "SELECT * FROM contatos";
        try {
            ResultSet rs = (ResultSet) data.getStatement().executeQuery(sql);
            while (rs.next()) {
                contatos.add(popula(rs));
            }
            rs.close();
        } catch (SQLException e) {

            e.printStackTrace();
        }

        return contatos;

    }

    public Contato getContato(int id) {
        PreparedStatement ps;
        ResultSet rs;
        Contato resul = null;
        data = new DatabaseManager();
        String sql = "SELECT * FROM contatos  WHERE codigo = ?";
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
    
     public Contato getContato(String name) {
        PreparedStatement ps;
        ResultSet rs;
        Contato resul = null;
        data = new DatabaseManager();
        String sql = "SELECT * FROM contatos  WHERE nome LIKE ?";
        try {
            ps = (PreparedStatement) data.getPreparedStatement(sql);
            ps.setString(1, name);
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

    public boolean delContato(int id) throws SQLException {
        boolean resul;
        String sql = "DELETE FROM contatos WHERE codigo = ?";
        data = new DatabaseManager();
        try (PreparedStatement ps = (PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setInt(1, id);
            resul = ps.execute();
        }
        return resul;
    }

    public boolean updateContato(Contato t) throws SQLException {
        boolean resul;
        String sql = "UPDATE contatos SET codigo=?, nome =?, data_nascimento=?, email=? WHERE codigo = ?";
        data = new DatabaseManager();
        try (PreparedStatement ps = (PreparedStatement) data.getPreparedStatement(sql)) {
            ps.setInt(1, t.getCodigo());
            ps.setString(2, t.getNome());
            ps.setString(3, t.getDataNacimento());
            ps.setString(4, t.getEmail());
            ps.setInt(5, t.getCodigo());
            resul = ps.execute();
        }
        return resul;
    }

    private Contato popula(ResultSet rs) throws SQLException {
        Contato c = new Contato();
        c.setCodigo(rs.getInt("codigo"));
        c.setNome(rs.getString("nome"));
        c.setEmail(rs.getString("email"));
        c.setDataNacimento(rs.getString("data_nascimento"));
        c.setTelefones(popula(c.getCodigo()));
        return c;
    }

    private List<Telefone> popula(int id) {
        TelefoneDAO prodao = new TelefoneDAO();
        List<Telefone> resul = prodao.getTelefones(id);
        return resul;
    }

}
