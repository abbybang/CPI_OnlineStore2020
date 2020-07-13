package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;
import java.util.HashMap;

import ph.com.cpi.onlinestore2020.model.User;

public interface LoginService {
	public User getUser(String username, String password) throws SQLException;
	public User addUser( String fname, String lname,  String email, String address, 
			String phoneNumber, String username, String password, String isAdmin ) throws SQLException;
	public User authenticateUser(String username, String firstname, String lastname, String email) throws SQLException;
}
