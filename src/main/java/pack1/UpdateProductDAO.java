package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO
{
	public int updateProduct(ProductBean pbean)
	{
		int rowCount=0;
		try
		{
			Connection con=DBconnect.connect();
			PreparedStatement stmt=con.prepareStatement("update product set pprice=?,pqty=? where pcode=?");
			stmt.setString(1, pbean.getPrice());
			stmt.setString(2, pbean.getPqty());
			stmt.setString(3, pbean.getPcode());
			
			rowCount=stmt.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rowCount;
	}
}
