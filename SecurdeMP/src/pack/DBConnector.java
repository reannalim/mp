package pack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JOptionPane;

public class DBConnector{
	private String dbname = "sec";
	private String USER = "root";
	private String PASS = "p@ssword";
	private String DB_URL = "jdbc:mysql://localhost:3306/"+dbname;
	private Connection conn = null;

	public DBConnector(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			this.conn = DriverManager.getConnection(DB_URL,USER,PASS);
		}
		catch(SQLException se){
			se.printStackTrace();
			String t1="Database Error: ";
			String m1="Could not connect to database.";
			JOptionPane.showMessageDialog(null, m1, t1, JOptionPane.INFORMATION_MESSAGE);
			System.exit(0);
		}
		catch(Exception e){
			e.printStackTrace();
			String t1="Database Error: ";
			String m1="JDBC Driver not properly set.";
			JOptionPane.showMessageDialog(null, m1, t1, JOptionPane.INFORMATION_MESSAGE);
			System.exit(0);
		}
	}
	
	public Connection getConnection(){
		return this.conn;
	}
	
	public void closeConnection() throws SQLException{
		this.conn.close();
	}
}