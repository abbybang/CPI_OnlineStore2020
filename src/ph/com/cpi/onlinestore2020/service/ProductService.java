package ph.com.cpi.onlinestore2020.service;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.ProductDao;
import ph.com.cpi.onlinestore2020.model.Product;

public interface ProductService {
	public List<Product> getProductList() throws SQLException;
	public Product getProductId(Integer productId) throws SQLException;
	public List<Product> addProduct(Integer productId, String productName, String brand, BigDecimal price, Integer stock, String description) throws SQLException;
	public List<Product> updateProduct(Integer productId, String productName, String brand, BigDecimal price, Integer stock, String description) throws SQLException;
	public List<Product> deleteProduct(String[] productId) throws SQLException;
}
