
package Model;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexaoDAO {

   
    public int getQuantidade() {
        return quantidade;
    }

    
    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    
    public String getNome() {
        return nome;
    }

    
    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getAmpere() {
        return ampere;
    }

    public void setAmpere(double ampere) {
        this.ampere = ampere;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    private String nome;
    private double ampere;
    private double preco;
    private int quantidade;
    
    public Connection conectaBD(){
        String URL = "jdbc:postgresql://localhost:5432/centralBaterias";
        String user = "postgres";
        String password = "postgres";
        Connection conn=null;
        try {
            Class.forName("org.postgresql.Driver"); 
            conn = DriverManager.getConnection(URL,user,password);
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConexaoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}
