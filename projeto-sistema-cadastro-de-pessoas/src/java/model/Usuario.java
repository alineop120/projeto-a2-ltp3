package model;

/**
 *
 * @author 364975
 */
public class Usuario {
    // Atributos
    private int id;
    private String nome;
    private String email;
    private String senha;
    private int acesso;
    
    // Construtor Vazio
    public Usuario() {}
    
    // Construtor
    public Usuario(int id, String nome, String email,
            String senha, int acesso) 
    {
        this.id = id;
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.acesso = acesso;
    }
    
    @Override
    public String toString() {
        return "Usuario{" + 
                "id = " + id + 
                ", nome = " + nome +
                ", email = " + email +
                ", senha = " + senha + 
                ", acesso = " + acesso + 
                "}";
    }

    // Get's and Set's
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public int getAcesso() {
        return acesso;
    }

    public void setAcesso(int acesso) {
        this.acesso = acesso;
    }


}
