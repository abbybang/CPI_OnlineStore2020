package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.service.impl.ProductServiceImpl;

public class ProductInfoController extends HttpServlet {
	ProductServiceImpl productService = new ProductServiceImpl();
	
	RequestDispatcher rd = null;
	private static final long serialVersionUID = 1L;

    public ProductInfoController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "pages/viewProduct/ShowProduct.jsp";
		try {
			
			Integer productId = Integer.parseInt(request.getParameter("productId"));
			request.setAttribute("productList", productService.getProductInfo(productId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
