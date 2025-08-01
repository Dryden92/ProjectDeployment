package pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		
		if(session==null)
		{
			req.setAttribute("msg", "session expired");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else
		{
			String pcode=req.getParameter("pcode");
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("productList");
			
			ProductBean pbean=null;
			
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext())
			{
				pbean=i.next();
				if(pcode.equals(pbean.getPcode()))
					break;
			}
			
			pbean.setPrice(req.getParameter("pprice"));
			pbean.setPqty(req.getParameter("pqty"));
			
			int rowCount=new UpdateProductDAO().updateProduct(pbean);
			if(rowCount>0)
			{
				req.setAttribute("msg", "data updated successfully");
				req.getRequestDispatcher("UpdateProduct.jsp").forward(req, res);
			}
		}
	}
}
