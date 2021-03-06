package ph.com.cpi.onlinestore2020.service.impl;

import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.ProductDao;
import ph.com.cpi.onlinestore2020.dao.impl.ProductDaoImpl;
import ph.com.cpi.onlinestore2020.model.Product;
import ph.com.cpi.onlinestore2020.service.ProductService;

public class ProductServiceImpl implements ProductService{
	ProductDao productList = new ProductDaoImpl();
	
	Integer productId = 0;
	//GET PRODUCT LIST
	@Override
	public List<Product> getProductList() throws SQLException{
		return productList.getProductList();
	}
	
	//ADD PRODUCT
	@Override
	public List<Product> addProduct(Integer productId, String productName, String brand, BigDecimal price, Integer stock, String description) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put(  "productId", productId  );
		params.put("productName", productName);
		params.put(      "brand", brand      );
		params.put(      "price", price      );
		params.put(      "stock", stock      );
		params.put("description", description );
		productList.addProduct(params);
		List<Product> products = productList.getProductList();
		return products;
	}
	
	//UPDATE PRODUCT
	@Override
	public List<Product> updateProduct(Integer productId, String productName, String brand, BigDecimal price, Integer stock, String description) throws SQLException {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put(  "productId", productId  );
		params.put("productName", productName);
		params.put(      "brand", brand      );
		params.put(      "price", price      );
		params.put(      "stock", stock      );
		params.put("description", description );
		productList.updateProduct(params);
		List<Product> products = productList.getProductList();
		return products;
	}

	//DELETE PRODUCT
	@Override
	public List<Product> deleteProduct(String[] toDelete) throws SQLException {	
		int[] productId = new int[toDelete.length];
	    for(int i = 0; i < toDelete.length; i++)
	    {
	    	productId[i]=Integer.parseInt(toDelete[i]);
	    	HashMap<String, Object> params = new HashMap<String, Object>();
			params.put("productId", productId[i]);
			productList.deleteProduct(params);
	    }
		List<Product> products = productList.getProductList();
		return products;
	}
	
	//GENERATE PRODUCT NEW ID
	@Override
	public Integer generateProductId() throws SQLException {
		return productList.generateProductId();
	}
	
	//GET PRODUCT LIST ID
	@Override
	public Product getProductId(Integer productId) throws SQLException{
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put(  "productId", productId  );
		return productList.getProductId(params);
		}
}
