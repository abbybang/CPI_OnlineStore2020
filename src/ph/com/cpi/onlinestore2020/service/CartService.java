package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Cart;

public interface CartService {
	public List<Cart> getCartItems(Integer customerID) throws SQLException;
}