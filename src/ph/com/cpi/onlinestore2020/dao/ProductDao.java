package ph.com.cpi.onlinestore2020.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.model.Product;

public interface ProductDao {
	public List<Product> getProductList() throws SQLException;
	public void addProduct(HashMap<String, Object> params) throws SQLException;
	public void updateProduct(HashMap<String, Object> params) throws SQLException;
	public void deleteProduct(HashMap<String, Object> params) throws SQLException;

	public Product getProductId(HashMap<String, Object> params) throws SQLException;

	public Integer generateProductId() throws SQLException;
}
