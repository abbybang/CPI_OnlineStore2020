package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Cart;

public interface CartDAO {
	public List<Cart> getCartItems(HashMap<String, Object> params) throws SQLException;
}
