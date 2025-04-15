package dao;

import java.util.List;
import model.Usuario;
import util.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author 364975
 */
public class UsuarioDAO {
    public List<Usuario> listarTodos() {
    	ArrayList lista = new ArrayList();
        
    	try (Connection conn = ConnectionFactory.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("select * from usuarios");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
            	Usuario u = new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getInt("acesso")
                );
            lista.add(u);
            }   
    	} 
        catch (SQLException e) {
            e.getMessage();
    	}
    	return lista;
    }

    public void inserir(Usuario usuario) throws SQLException {
    	try(Connection conn = ConnectionFactory.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("insert into usuarios(nome,email,senha,acesso) values (?,?,?,?)");
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getEmail());
            ps.setString(3, usuario.getSenha());
            ps.setInt(4, usuario.getAcesso());
            ps.executeUpdate();
    	}
        catch(SQLException e) {
            e.getMessage();
    	}
    }

    public void atualizar(Usuario usuario) {
    }

    public void deletar(int id) {
    }

}
