package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.service.ProductService;
import ph.com.cpi.onlinestore2020.service.impl.ProductServiceImpl;

public class ProductController extends HttpServlet{
	ProductServiceImpl productList = new ProductServiceImpl();
	RequestDispatcher rd = null;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String page = "pages/admin/admin.jsp";
		
		try {
			request.setAttribute("productList", productList.getProductList());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String page = "";
		RequestDispatcher requestDispatcher = null;
		
		try {
			String action = request.getParameter("action");	
			
			
			if(action.equals("add") || action.equals("update")) {
				try {
					String productName = request.getParameter("productName");
					String brand = request.getParameter("brand");
					BigDecimal price = new BigDecimal(request.getParameter("price"));				
					Integer stock = Integer.parseInt(request.getParameter("stock"));	
					String description = request.getParameter("description");
	
					if(action.equals("add")) {
						request.setAttribute("productList", productList.addProduct(productList.generateProductId(), productName, brand, price, stock, description));
					}else if(action.equals("update")) {
						Integer productId = Integer.parseInt(request.getParameter("productId"));
						request.setAttribute("productList", productList.updateProduct(productId, productName, brand, price, stock, description));
					}
				}catch(Exception e) {
					page = "pages/admin/error.jsp";
				}
			}else if(action.equals("delete")) {			
				String[] toDelete = request.getParameterValues("toDelete[]");
				request.setAttribute("productList", productList.deleteProduct(toDelete));
			}
			page = "pages/admin/updateTable.jsp";			
		}catch(Exception e){
			page = "pages/admin/admin.jsp";
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	}
}
