package ph.com.cpi.onlinestore2020.service;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.model.Transaction;

public interface CartService {
	public List<Cart> getCartItems(Integer customerID) throws SQLException;
	public void addTransaction(Integer customerID, BigDecimal grandTotal) throws SQLException;
	public List<Transaction> getTransaction(Integer customerID) throws SQLException;
	public void addSale(Integer transactionID, Integer productID, BigDecimal price, Integer quantity) throws SQLException;
	public void deleteItem(Integer customerID, Integer productID) throws SQLException;
	public List<Cart> addCartItems(Integer customerId, Integer productId, BigDecimal price, Integer quantity)throws SQLException;
}