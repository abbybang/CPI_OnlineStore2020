package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Cart;
import ph.com.cpi.onlinestore2020.model.Transaction;

public interface CartDAO {
	public List<Cart> getCartItems(HashMap<String, Object> params) throws SQLException;
	public void addTransaction(HashMap<String, Object> params) throws SQLException;
	public List<Transaction> getTransaction(HashMap<String, Object> params) throws SQLException;
	public void addSale(HashMap<String, Object> params) throws SQLException;
	public void deleteItem(HashMap<String, Object> params) throws SQLException;
}
