package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.service.impl.CartServiceImpl;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	CartServiceImpl cartService = new CartServiceImpl();
	RequestDispatcher requestDispatcher = null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "";
		
		try {
			String action = request.getParameter("action");
			Integer customerID = Integer.parseInt(request.getParameter("customerID"));
			
			if(action.equals("view")) {
				page = "pages/cart/cart.jsp";
				
				List<Cart> cartItems = cartService.getCartItems(customerID);
				BigDecimal grandTotal = new BigDecimal(0);
				Integer itemCount = 0;
				
				if(cartItems != null) {
					for(Cart item : cartItems) {
						BigDecimal subTotal = item.getPrice().multiply(new BigDecimal(item.getQuantity()));
						grandTotal = grandTotal.add(subTotal);
						itemCount += item.getQuantity();
					}
				}
				
				request.setAttribute("customerID", customerID.toString());
				request.setAttribute("cartItems", cartItems);
				request.setAttribute("grandTotal", grandTotal);
				request.setAttribute("itemCount", itemCount);
				
				System.out.println("Is cartItems empty? " + (cartItems == null));
				System.out.println("cartItems.size(): " + cartItems.size());
				System.out.println("Customer ID: " + customerID);
				System.out.println("Inside CartController");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
