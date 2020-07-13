package ph.com.cpi.onlinestore2020.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ph.com.cpi.onlinestore2020.model.Authenticator;
import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.impl.LoginServiceImpl;

public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	LoginServiceImpl loginServiceImpl = new LoginServiceImpl();
	private String pagePath = "";
       
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		try {
			String event = request.getParameter("event");
			
			if(event.equalsIgnoreCase("saveUserData")) {
				String fname = request.getParameter("fname");
				String lname = request.getParameter("lname");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String phoneNumber = request.getParameter("phoneNumber");
				String userName = request.getParameter("userName");
				String passWord = request.getParameter("passWord");
				String isAdmin = request.getParameter("isAdmin");
				
				Authenticator authenticator = new Authenticator();
				String result = authenticator.authenticate(fname, lname, email, userName);
				
				if(result.equalsIgnoreCase("success")) {
					pagePath = "pages/home/SampleHome.jsp";
					User user = loginServiceImpl.addUser(fname, lname, email, address, phoneNumber, userName, passWord, isAdmin);
					request.setAttribute("user", user);
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					dispatcher = request.getRequestDispatcher(pagePath);
					dispatcher.forward(request, response);
				} else {
					pagePath = "pages/registration/registration.jsp";
					request.setAttribute("errMsg", result);
					dispatcher = request.getRequestDispatcher(pagePath);
					dispatcher.forward(request, response);
				}
			}
		} catch(Exception e) {
			e.getMessage();
		}
	}
}
