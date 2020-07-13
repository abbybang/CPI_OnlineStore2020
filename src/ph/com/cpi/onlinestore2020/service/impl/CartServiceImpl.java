package ph.com.cpi.onlinestore2020.service.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.CartDAO;
import ph.com.cpi.onlinestore2020.dao.impl.CartDAOImpl;
import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.service.CartService;

public class CartServiceImpl implements CartService {
	CartDAO cartItems = new CartDAOImpl();

	@Override
	public List<Cart> getCartItems(Integer customerID) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerID", customerID);
		List<Cart> items = cartItems.getCartItems(params);
		return items;
	}
	
	//ADD PRODUCT
	@Override
	public List<Cart> addCartItems(Integer customerId, Integer productId, BigDecimal price, Integer quantity) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", customerId);
		params.put("productId", productId);
		params.put("price", price);
		params.put("quantity", quantity);
		cartItems.addCartItems(params);
		List<Cart> students = cartItems.getCartItems(params);
		return students;
	}
}
