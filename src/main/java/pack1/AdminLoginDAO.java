package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO
{
	public AdminBean checkAdminLogin(String admin_username, String admin_pwd)
	{
		AdminBean bean=null;
		try
		{
			Connection con=DBconnect.connect();
			PreparedStatement pstm=con.prepareStatement("select * from admin where uname=? and pword=?");
			
			pstm.setString(1, admin_username);
			pstm.setString(2, admin_pwd);
			
			ResultSet rs=pstm.executeQuery();
			
			if(rs.next())
			{
				bean=new AdminBean();
				bean.setUname(rs.getString(1));
				bean.setPword(rs.getString(2));
				bean.setFname(rs.getString(3));
				bean.setLname(rs.getString(4));
				bean.setAddr(rs.getString(5));
				bean.setMid(rs.getString(6));
				bean.setPhno(rs.getString(7));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return bean;
	}
}
