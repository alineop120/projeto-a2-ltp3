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
    	ArrayList listaUsuarios = new ArrayList();
    	try (Connection conn = ConnectionFactory.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("select * from usuarios");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) 
            {
            	Usuario usuario = new Usuario();
            	usuario.setId(rs.getInt("id"));
            	usuario.setNome(rs.getString("nome"));
            	usuario.setEmail(rs.getString("email"));
            	usuario.setNivelAcesso(rs.getInt("nivel"));
            	listaUsuarios.add(usuario);
            }
    	} 
        catch (SQLException e) {
            e.getMessage();
    	}
    	return listaUsuarios;
    }

    public void inserir(Usuario usuario) throws SQLException {
    	try(Connection conn = ConnectionFactory.getConnection()){
            PreparedStatement ps = conn.prepareStatement("insert into usuarios(nome,senha,email,nivel) values (?,?,?,?)");
            ps.setString(1, usuario.getNome());
            ps.setString(2, usuario.getSenha());
            ps.setString(3, usuario.getEmail());
            ps.setInt(4, usuario.getNivelAcesso());
            ps.executeUpdate();
    	}
        catch(SQLException e){
            e.getMessage();
    	}
    }

    public void atualizar(Usuario usuario) {
    }

    public void deletar(int id) {
        try (Connection conn = ConnectionFactory.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("delete from usuarios where id=?");
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

}
