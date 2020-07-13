package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.impl.ProductServiceImpl;
import sun.rmi.server.Dispatcher;

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
			request.setAttribute("productInfo", productService.getProductId(productId));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		rd = request.getRequestDispatcher(page);
		rd.forward(request, response);		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String action = request.getParameter("action");
			if(action.equalsIgnoreCase("checkout"))
			{
				String userId = request.getParameter("userID");
				request.setAttribute("customerID", userId);
				request.setAttribute("action", "view");
				response.sendRedirect("pages/cart/cart.jsp");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

}
