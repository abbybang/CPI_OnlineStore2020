package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.User;

public interface LoginService {
	public List<User> getUser(String username, String password) throws SQLException;
}
