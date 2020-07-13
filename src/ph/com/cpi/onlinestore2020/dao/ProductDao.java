package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.Product;

public interface ProductDao {
	public List<Product> getProductList() throws SQLException;
	public void addProduct(HashMap<String, Object> params) throws SQLException;
	public void updateProduct(HashMap<String, Object> params) throws SQLException;
	public void deleteProduct(HashMap<String, Object> params) throws SQLException;
	public Integer generateProductId() throws SQLException;
	public Product getProductId(HashMap<String, Object> params) throws SQLException;
	
}
