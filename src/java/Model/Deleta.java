package Model;

import java.sql.Connection;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.sql.PreparedStatement;

public class Deleta {
    public static void deletaBD(int id){
        Connection conn = new ConexaoDAO().conectaBD();
        try {
            String SQL = "DELETE FROM estoque WHERE id = ?";            
            PreparedStatement pstm = conn.prepareStatement(SQL);
            pstm.setInt(1,id);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
