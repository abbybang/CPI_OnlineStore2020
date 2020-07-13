package ph.com.cpi.onlinestore2020.service.impl;

import java.sql.SQLException;
import java.util.HashMap;

import ph.com.cpi.onlinestore2020.dao.impl.LoginDaoImpl;
import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.LoginService;

public class LoginServiceImpl implements LoginService {
	
	LoginDaoImpl loginDAOimpl = new LoginDaoImpl();
	@Override
	public User getUser(String username, String password) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("username", username.toLowerCase());
		params.put("password", password.toLowerCase());
		
		User user = loginDAOimpl.getUserDetails(params);
		return user;
	}
	
	@Override
	public User addUser(String fname, String lname, String email, String address, String phoneNumber, String username,
			String password, String isAdmin) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("fname", fname.toLowerCase());
		params.put("lname", lname.toLowerCase());
		params.put("email", email.toLowerCase());
		params.put("address", address.toLowerCase());
		params.put("phoneNumber", phoneNumber.toLowerCase());
		params.put("userName", username.toLowerCase());
		params.put("passWord", password.toLowerCase());
		params.put("isAdmin", isAdmin.toLowerCase());
		
		loginDAOimpl.addUser(params);

		HashMap<String, Object> params2 = new HashMap<String, Object>();
		params2.put("username", username);
		params2.put("password", password);
		
		User user = loginDAOimpl.getUserDetails(params2);

		return user;
	}

	@Override
	public User authenticateUser(String username, String firstname, String lastname, String email) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("username", username.toLowerCase());
		params.put("firstname", firstname.toLowerCase());
		params.put("lastname", lastname.toLowerCase());
		params.put("email", email.toLowerCase());
		
		User user = loginDAOimpl.authenticateUser(params);
		return user;
	}
}
