package Model;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;

public class Cadastra {
    public Connection cadastra(ConexaoDAO cadastra){
        Connection conn = new ConexaoDAO().conectaBD();
        try {
           String sql = "INSERT INTO estoque(nome,ampere,preco,quantidade) VALUES (?,?,?,?)";           
           PreparedStatement pstm = conn.prepareStatement(sql);
           pstm.setString(1,cadastra.getNome());
           pstm.setDouble(2,cadastra.getAmpere());
           pstm.setDouble(3,cadastra.getPreco());
           pstm.setInt(4,cadastra.getQuantidade());
                      
           pstm.executeUpdate();
           pstm.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "erro ao efetuar cadastro");
        }
        return conn;
    }
}
