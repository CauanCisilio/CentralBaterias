
package Model;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.PreparedStatement;


public class Select {
    public ArrayList<ConexaoDAO> ListarBaterias(){
        ArrayList<ConexaoDAO> lista = new ArrayList<>();
        try {
            String SQL = "SELECT * FROM estoque";
           Connection conn = new ConexaoDAO(). conectaBD();
            PreparedStatement pstm = conn.prepareStatement(SQL);
            ResultSet rs = pstm.executeQuery();
            
            while(rs.next()){
                ConexaoDAO bateria = new ConexaoDAO();
                
                bateria.setId(rs.getInt("id"));
                bateria.setNome(rs.getString("nome"));
                bateria.setAmpere(rs.getDouble("ampere"));
                bateria.setPreco(rs.getDouble("preco"));
                bateria.setQuantidade(rs.getInt("quantidade"));
               
                
                lista.add(bateria);              
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return lista;
    }
}
