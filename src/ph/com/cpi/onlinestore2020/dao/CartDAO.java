package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Cart;
<<<<<<< HEAD
import ph.com.cpi.onlinestore2020.model.Product;
=======
import ph.com.cpi.onlinestore2020.model.Transaction;
>>>>>>> 2f2428837f1ee6ae608d76756cb9ca2b91b44eab

public interface CartDAO {
	public void addCartItems(HashMap<String, Object> params) throws SQLException;
	public List<Cart> getCartItems(HashMap<String, Object> params) throws SQLException;
	public void addTransaction(HashMap<String, Object> params) throws SQLException;
	public List<Transaction> getTransaction(HashMap<String, Object> params) throws SQLException;
	public void addSale(HashMap<String, Object> params) throws SQLException;
	public void deleteItem(HashMap<String, Object> params) throws SQLException;
}
