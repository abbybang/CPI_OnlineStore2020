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
import ph.com.cpi.onlinestore2020.service.impl.LoginServiceImpl;

public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String pagePath = "";
	LoginServiceImpl loginServiceImpl = new LoginServiceImpl();
       
    public LoginController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		
		try {
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			if( user != null) {
				pagePath =  "pages/home/SampleHome.jsp";
				request.setAttribute("user", user);
				dispatcher = request.getRequestDispatcher(pagePath);
				dispatcher.forward(request, response);
			} else {
				pagePath =  "pages/loginpage/login.jsp";
				dispatcher = request.getRequestDispatcher(pagePath);
				dispatcher.forward(request, response);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String event = request.getParameter("event");
		RequestDispatcher dispatcher = null;
		User user = null;
		
		try {
			if(event.equalsIgnoreCase("login")) {
				String username = request.getParameter("username");
				String password = request.getParameter("password");
					 try { 
						 user = loginServiceImpl.getUser(username, password); 
						 if(user != null) {
							 pagePath = "pages/home/SampleHome.jsp";
							 dispatcher = request.getRequestDispatcher(pagePath);
							 request.setAttribute("user", user);
							 HttpSession session = request.getSession();
							 session.setAttribute("user", user);
							 dispatcher.forward(request, response);
						 } else {
							 pagePath = "pages/loginpage/login.jsp";
							 String errMsg = "The credentials you have entered is invalid. Please try again.";
							 dispatcher = request.getRequestDispatcher(pagePath);
							 request.setAttribute("errMsg", errMsg);
							 dispatcher.forward(request, response);
						 }
					 } catch(SQLException e) { 
						  e.printStackTrace(); 
					 }
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
