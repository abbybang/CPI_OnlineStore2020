package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.HashMap;

import ph.com.cpi.onlinestore2020.model.User;

public interface LoginDao {
	public User getUserDetails(HashMap<String, Object> params) throws SQLException;
}
