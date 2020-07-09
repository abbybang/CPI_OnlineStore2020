package ph.com.cpi.onlinestore2020.service.impl;

import java.sql.SQLException;
import java.util.HashMap;

import ph.com.cpi.onlinestore2020.dao.impl.LoginDAOimpl;
import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.LoginService;

public class LoginServiceImpl implements LoginService {
	LoginDAOimpl loginDAOimpl = new LoginDAOimpl();

	@Override
	public User getUser(String username, String password) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("username", username.toLowerCase());
		params.put("password", password.toLowerCase());
		
		User user = loginDAOimpl.getUserDetails(params);
		return user;
	}
}
