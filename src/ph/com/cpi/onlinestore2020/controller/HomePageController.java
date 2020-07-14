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
import ph.com.cpi.onlinestore2020.service.impl.HomePageServiceImpl;
import ph.com.cpi.onlinestore2020.service.impl.ProductServiceImpl;

public class HomePageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HomePageServiceImpl homepageList = new HomePageServiceImpl();
	RequestDispatcher rd = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String page = "";
		
	try {
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		String account = "";
		if(user != null) {
			account = "SIGN OUT";
		} else {
			account = "SIGN IN";
		}
		
		request.setAttribute("homepageList", homepageList.getHomePageList());
		request.setAttribute( "account", account );
		page = "pages/Homepagemain/Homepage.jsp";
	}catch(SQLException sqlexception) {
		sqlexception.printStackTrace();
	}catch(Exception e) {
		e.printStackTrace();
		page = "/pages/error.jsp";
	}
	
	rd = request.getRequestDispatcher(page);
	rd.forward(request, response);
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = "";
		RequestDispatcher requestDispatcher = null;
		try {
			Integer productId = Integer.parseInt(request.getParameter("productId"));
			Integer userId = Integer.parseInt(request.getParameter("userId"));
			
			String action = request.getParameter("action");
			
			if(action.equals("get")) {

				ProductServiceImpl productService = null;
				request.setAttribute("productList", productService.getProductId(productId));
			}else {
				page = "pages/Homepagemain/Homepage.jsp";
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			page = "pages/error.jsp";
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
		 
	}
}

