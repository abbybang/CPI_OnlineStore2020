package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.ProductDao;
import ph.com.cpi.onlinestore2020.model.Product;

public class ProductService {
ProductDao productList = new ProductDao();
	
	public List<Product> getProductList() throws SQLException{
		return productList.getProductList();
	}
}
