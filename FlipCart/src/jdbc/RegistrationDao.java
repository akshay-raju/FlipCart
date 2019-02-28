package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistrationDao {
public int insert(String emil,String u,String p) throws Exception{
	System.out.println(emil+u+p );
	String query="insert into reg values(?,?,?)";
	Connection conn=Db_Connection.getConnection();
	PreparedStatement ps=conn.prepareStatement(query);
	ps.setString(1,emil);
	ps.setString(2, u);
	ps.setString(3,p);
	int output=ps.executeUpdate();
	return output;
}	
	public boolean validate(String username,String password) throws Exception
	{
		Connection conn=Db_Connection.getConnection();
		String sql="select username,password from reg";
		Statement s=conn.createStatement();
		ResultSet rs=s.executeQuery(sql);
		while(rs.next())
		{
			String dname=rs.getString("username");
		
			String dp=rs.getString("password");
			if(username.equals(dname)&&password.equals(dp))
			{
				return true;
			}
			
		}
		return false;
	}
	public boolean add(String un,String mobile,String price) throws Exception{
		
		String query="insert into cart1 values(?,?,?)";
		Connection conn=Db_Connection.getConnection();
		PreparedStatement ps=conn.prepareStatement(query);
		ps.setString(2,mobile);
		ps.setString(3, price);
		ps.setString(1,un);
		ps.executeUpdate();
		return true;
	}	
}
