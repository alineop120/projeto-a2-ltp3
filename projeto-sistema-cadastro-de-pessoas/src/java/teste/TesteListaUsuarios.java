package teste;

import dao.UsuarioDAO;

/**
 *
 * @author 364975
 */
public class TesteListaUsuarios {

    public static void main(String[] args) throws Exception {
        System.out.println(UsuarioDAO.listarTodos());
    }
    
}
