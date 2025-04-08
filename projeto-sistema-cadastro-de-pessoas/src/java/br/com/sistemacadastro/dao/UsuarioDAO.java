package br.com.sistemacadastro.dao;

import java.util.List;
import br.com.sistemacadastro.model.Usuario;
import br.com.sistemacadastro.uitl.ConnectionFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author 364975
 */
public class UsuarioDAO {

    public List<Usuario> listarTodos() {
    	return null;
    }

    public void inserir(Usuario usuario) throws SQLException 
    {
    	try(Connection conn = ConnectionFactory.getConnection())
        {
        	PreparedStatement ps = conn.prepareStatement("insert into usuarios(nome,senha,email,nivel) values (?,?,?,?)");
        	ps.setString(1, usuario.getNome());
        	ps.setString(2, usuario.getSenha());
        	ps.setString(3, usuario.getEmail());
        	ps.setInt(4, usuario.getNivelAcesso());
        	ps.executeUpdate();
    	}
        catch(SQLException e)
        {
        	e.getMessage();
    	}
    }

    public void atualizar(Usuario usuario) {
    }

    public void deletar(int id) {
    }

}
