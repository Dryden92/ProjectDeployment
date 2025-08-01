package pack1;

import java.io.Serializable;

public class ProductBean implements Serializable
{
	private String pcode, pname, pcompany, price, pqty;

	public String getPcode() {
		return pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPcompany() {
		return pcompany;
	}

	public void setPcompany(String pcompany) {
		this.pcompany = pcompany;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPqty() {
		return pqty;
	}

	public void setPqty(String pqty) {
		this.pqty = pqty;
	}
	
}
