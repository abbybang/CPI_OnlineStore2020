package ph.com.cpi.onlinestore2020.service.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.CartDAO;
import ph.com.cpi.onlinestore2020.dao.impl.CartDAOImpl;
import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.model.Transaction;
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

	@Override
	public void addTransaction(Integer customerID, BigDecimal grandTotal) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerID", customerID);
		params.put("grandTotal", grandTotal);
		cartDAO.addTransaction(params);
	}

	@Override
	public List<Transaction> getTransaction(Integer customerID) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerID", customerID);
		List<Transaction> transaction = cartDAO.getTransaction(params);
		return transaction;
	}

	@Override
	public void addSale(Integer transactionID, Integer productID, BigDecimal price, Integer quantity) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("transactionID", transactionID);
		params.put(    "productID", productID);
		params.put(        "price", price);
		params.put(     "quantity", quantity);
		cartDAO.addSale(params);
	}

	@Override
	public void deleteItem(Integer customerID, Integer productID) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("customerID", customerID);
		params.put("productID", productID);
		cartDAO.deleteItem(params);
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
		return null;
	}
}
