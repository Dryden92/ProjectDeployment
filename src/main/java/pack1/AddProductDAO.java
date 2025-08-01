package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int insertProduct(ProductBean bean)
	{
		int rowCount=0;
		try
		{
			Connection con=DBconnect.connect();
			PreparedStatement stmt=con.prepareStatement("insert into product values(?,?,?,?,?)");
			
			stmt.setString(1, bean.getPcode());
			stmt.setString(2, bean.getPname());
			stmt.setString(3, bean.getPcompany());
			stmt.setString(4, bean.getPrice());
			stmt.setString(5, bean.getPqty());
			
			rowCount=stmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
