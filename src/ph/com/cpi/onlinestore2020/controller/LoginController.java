package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
				pagePath =  "pages/loginpage/login.jsp";
				request.setAttribute("user", user);
				request.setAttribute("msg", "you are logged in!");
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
		User user = new User();
		PrintWriter a = response.getWriter();
		
		if(event.equalsIgnoreCase("login")) {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			try {
				loginServiceImpl.getUser(username, password);
				a.print(user.getUserName());
			} catch(SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
}
