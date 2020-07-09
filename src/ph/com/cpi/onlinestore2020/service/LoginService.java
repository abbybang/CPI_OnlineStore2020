package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;

import ph.com.cpi.onlinestore2020.model.User;

public interface LoginService {
	public User getUser(String username, String password) throws SQLException;
}
