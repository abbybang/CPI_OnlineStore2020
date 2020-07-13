package ph.com.cpi.onlinestore2020.model;

import java.sql.SQLException;

import ph.com.cpi.onlinestore2020.service.impl.LoginServiceImpl;

public class Authenticator {
	private LoginServiceImpl loginServiceImpl = new LoginServiceImpl();
	public String authenticate( String firstname, String lastname, String email, String username) {
		User user = null;
		String errMsg = "";

		try {
			user = loginServiceImpl.authenticateUser('%' + username + '%','%' + firstname + '%', '%' + lastname + '%', '%' + email + '%');
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		if(user != null) {
			if(firstname.equalsIgnoreCase(user.getFname()) && lastname.equalsIgnoreCase(user.getLname())) {
				errMsg = "name";
				return errMsg;
			} else if(username.equalsIgnoreCase(user.getUserName())) {
				errMsg = "username";
				return errMsg;
			} else if(email.equalsIgnoreCase(user.getEmail())) {
				errMsg = "email";
				return errMsg;
			}
		}
		
		return "Success";
	}
}
