package ph.com.cpi.onlinestore2020.service.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.CartDAO;
import ph.com.cpi.onlinestore2020.dao.impl.CartDAOImpl;
import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.service.CartService;

public class CartServiceImpl implements CartService {
	CartDAO cartDAO = new CartDAOImpl();

	@Override
	public List<Cart> getCartItems(Integer customerID) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerID", customerID);
		List<Cart> cartItems = cartDAO.getCartItems(params);
		return cartItems;
	}
}
