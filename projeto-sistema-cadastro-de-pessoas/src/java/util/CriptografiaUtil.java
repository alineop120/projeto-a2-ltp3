package util;

import org.mindrot.bcrypt.BCrypt;

/**
 *
 * @author 364975
 */
public class CriptografiaUtil {
    // Gerar hash da senha
    public static String gerarHash(String senha) {
        return BCrypt.hashpw(senha, BCrypt.gensalt());
    }

    // Verificar senha
    public static boolean verificarSenha(String senha, String hash) {
        return BCrypt.checkpw(senha, hash);
    }
}
