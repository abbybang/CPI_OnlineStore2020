package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.model.Transaction;
import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.impl.CartServiceImpl;

public class CartController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	CartServiceImpl cartService = new CartServiceImpl();
	RequestDispatcher requestDispatcher = null;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "";
		
		try {
			String action = request.getParameter("action");
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			Integer customerID = user.getUserId();
			
			if(action != null && action.equals("confirm")) {
				page = "pages/Homepagemain/Homepage.jsp";
				BigDecimal grandTotal = new BigDecimal(Double.parseDouble(request.getParameter("grandTotal")));
				cartService.addTransaction(customerID, grandTotal);
				Transaction transaction = cartService.getTransaction(customerID).get(0);
				List<Cart> cartItems = cartService.getCartItems(customerID);
				
				for(Cart item : cartItems) {
					cartService.addSale(transaction.getTransactionID(), item.getProductId(), item.getPrice(), item.getQuantity());
				}
				
				for(Cart item : cartItems) {
					cartService.deleteItem(customerID, item.getProductId());
				}
			} else {
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
			}
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
				Integer productId = Integer.parseInt(request.getParameter("productId"));
				BigDecimal price = new BigDecimal(request.getParameter("price"));		
				Integer quantity = Integer.parseInt(request.getParameter("quantity"));	
				
				request.setAttribute("cartService", cartService.addCartItems(customerId, productId, price, quantity));
			
				page = "pages/cart/cart.jsp";
			}
		}catch(Exception e){
			e.printStackTrace();
			page = "pages/cart/cart.jsp";
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
	}
}


