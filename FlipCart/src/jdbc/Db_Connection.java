package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class Db_Connection {
	private static Connection conn;
	public static Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.OracleDriver");
		conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","orcl11g");
		return conn;
	}

}
