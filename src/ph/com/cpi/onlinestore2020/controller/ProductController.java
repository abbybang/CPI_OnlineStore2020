package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.service.ProductService;

public class ProductController extends HttpServlet{
	ProductService productList = new ProductService();
	RequestDispatcher rd = null;
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		String page = "pages/admin.jsp";
		
		try {
			req.setAttribute("productList", productList.getProductList());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		rd = req.getRequestDispatcher(page);
		rd.forward(req, res);
		
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException{
		this.doGet(req, res);
	}
}
