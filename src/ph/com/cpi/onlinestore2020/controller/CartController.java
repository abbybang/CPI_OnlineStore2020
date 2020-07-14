package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.service.impl.CartServiceImpl;

public class CartController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	CartServiceImpl cartService = new CartServiceImpl();
	RequestDispatcher requestDispatcher = null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "";
		
		try {
			page = "pages/cart/cart.jsp";
			Integer customerID = Integer.parseInt(request.getParameter("customerID"));
			List<Cart> items = cartService.getCartItems(customerID);
			request.setAttribute("items", items);
			System.out.println("Inside CartController");
		} catch (Exception e) {
			e.printStackTrace();
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "";
		RequestDispatcher requestDispatcher = null;
		try {
			String action = request.getParameter("action");	
			
			
			if(action.equals("addProductCart")){				
				Integer customerId = Integer.parseInt(request.getParameter("userId"));	
				System.out.println(customerId);
				Integer productId = Integer.parseInt(request.getParameter("productId"));
				System.out.println(productId);
				BigDecimal price = new BigDecimal(request.getParameter("price"));		
				System.out.println(price);
				Integer quantity = Integer.parseInt(request.getParameter("quantity"));	
				System.out.println(quantity);
				
				System.out.println("ADD--CART CONTROLLER");
				request.setAttribute("cartService", cartService.addCartItems(customerId, productId, price, quantity));
			
				page = "pages/cart/cart.jsp";
			}
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("FAILED--ADD--CART CONTROLLER");
			page = "pages/cart/cart.jsp";
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	}
}


