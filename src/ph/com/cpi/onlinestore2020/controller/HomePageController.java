package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.impl.HomePageServiceImpl;
import ph.com.cpi.onlinestore2020.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class HomePageController
 */
@WebServlet("/HomePageController")
public class HomePageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HomePageServiceImpl homepageList = new HomePageServiceImpl();
	RequestDispatcher rd = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String page = " ";
		
	try {
		request.setAttribute("homepageList", homepageList.getHomePageList());
		page = "/pages/HomepageM/Homepage.jsp";
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
		
			String action = request.getParameter("action");
			
			if(action.equals("get")) {

				ProductServiceImpl productService = null;
				request.setAttribute("productList", productService.getProductId(productId));
				
			}else {
				page = "/pages/HomepageM/Homepage.jsp";
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			page = "pages/error.jsp";
		}
		requestDispatcher = request.getRequestDispatcher(page);
		requestDispatcher.forward(request, response);
		 
	}
}

