
package reto5ciclo2;
import java.sql.*;

public class JDBCUtilidades {
     String strConexionDB = "jdbc:sqlite:J:/Material mision TIC 2/Programacion Basica/Unidad 5/Reto5/ProyectosConstruccion.db";
    
    Connection conn = null;
    public JDBCUtilidades(){
        try{
            Class.forName("org.sqlite.JDBC");
            conn = DriverManager.getConnection(strConexionDB);  
            
        }catch(Exception e){
            System.out.println(e);
        }
        }
    
    

    public ResultSet consultarRegistros(String strSentenciaSQL){
       try{
            PreparedStatement pstm = conn.prepareStatement(strSentenciaSQL);
            ResultSet respuesta = pstm.executeQuery();
            return respuesta;
        }
        catch(Exception e){
            System.out.println( e);
            return null;
        }
    }
}
