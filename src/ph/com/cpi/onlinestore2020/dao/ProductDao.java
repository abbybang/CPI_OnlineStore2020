package ph.com.cpi.onlinestore2020.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.model.Product;

public class ProductDao {
	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public ProductDao() {
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	public List<Product> getProductList() throws SQLException {
		List<Product> productList = null;
		try(SqlSession session = sqlSessionFactory.openSession()){
			productList = session.selectList("getProductList");
		}
		
		return productList;
	}
}
