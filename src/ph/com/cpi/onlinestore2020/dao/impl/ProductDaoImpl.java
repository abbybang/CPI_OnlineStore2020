package ph.com.cpi.onlinestore2020.dao.impl;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.dao.ProductDao;
import ph.com.cpi.onlinestore2020.model.Product;

public class ProductDaoImpl implements ProductDao{
	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public ProductDaoImpl() {
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	//GET PRODUCT LIST
	@Override
	public List<Product> getProductList() throws SQLException {
		List<Product> productList = null;
		try(SqlSession session = sqlSessionFactory.openSession()){
			productList = session.selectList("getProductList");
		}
		
		return productList;
	}
	
	//ADD PRODUCT
	@Override
	public void addProduct(HashMap<String, Object> params) throws SQLException{
		try(SqlSession session = sqlSessionFactory.openSession()){
			session.update("addProduct",params);
			session.commit();
		}
	}
	
	//UPDATE PRODUCT
	@Override
	public void updateProduct(HashMap<String, Object> params) throws SQLException{
		try(SqlSession session = sqlSessionFactory.openSession()){
			session.update("updateProduct",params);
			session.commit();
		}
	}
	
	//DELETE CART
	public void deleteProduct(HashMap<String, Object> params) throws SQLException {
		try(SqlSession session = sqlSessionFactory.openSession()){
			session.update("deleteProduct", params);
			session.commit();
		}
	}
	
	//GENERATE NEW PRODUCT ID
		@Override
		public Integer generateProductId() throws SQLException {
			Integer newProductId;
			try(SqlSession session = sqlSessionFactory.openSession()){
				newProductId = session.selectOne("newProductId");
			}
			
			return newProductId;
		}
}
