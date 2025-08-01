package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO
{
	public int deleteProduct(String pcode)
	{
		int rowCount=0;
		try
		{
			Connection con=DBconnect.connect();
			PreparedStatement stmt=con.prepareStatement("delete from product where pcode=?");
			
			stmt.setString(1, pcode);
			rowCount=stmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
