package ph.com.cpi.onlinestore2020.service.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.impl.LoginDAOimpl;
import ph.com.cpi.onlinestore2020.model.User;
import ph.com.cpi.onlinestore2020.service.LoginService;

public class LoginServiceImpl implements LoginService {
	LoginDAOimpl loginDAOimpl = new LoginDAOimpl();

	@Override
	public List<User> getUser(String username, String password) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("username", username);
		password = "admin";
		params.put("password", password);
		System.out.println(params);
		List<User> user = loginDAOimpl.getUserDetails(params);
		return user;
	}
}
