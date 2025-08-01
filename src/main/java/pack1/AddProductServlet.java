package pack1;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet
{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			req.setAttribute("msg", "session expired!!!");
			req.getRequestDispatcher("AdminLogin.html").forward(req, res);
		}
		else
		{
			ProductBean pbean=new ProductBean();
			pbean.setPcode(req.getParameter("pcode"));
			pbean.setPname(req.getParameter("name"));
			pbean.setPcompany(req.getParameter("company"));
			pbean.setPrice(req.getParameter("price"));
			pbean.setPqty(req.getParameter("qty"));
			
			int rowCount=new AddProductDAO().insertProduct(pbean);
			
			if(rowCount==0)
			{
				throw new ServletException("Data not inserted");
			}
			else
			{
				req.setAttribute("msg", "Data Inserted");
				req.getRequestDispatcher("AddProduct.jsp").forward(req, res);
			}
		}
	}
}
