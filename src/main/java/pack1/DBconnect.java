package pack1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect
{	
	public static Connection connect()
	{
		Connection con=null;
		try
		{
			Class.forName(DBinfo.driver);
			con=DriverManager.getConnection(DBinfo.DBurl, DBinfo.DBuname, DBinfo.DBpwd);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
