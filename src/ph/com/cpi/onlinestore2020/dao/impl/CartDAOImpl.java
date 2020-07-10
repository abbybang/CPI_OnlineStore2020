package ph.com.cpi.onlinestore2020.dao.impl;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.dao.CartDAO;
import ph.com.cpi.onlinestore2020.model.Cart;

public class CartDAOImpl implements CartDAO {
	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public CartDAOImpl() {
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Cart> getCartItems(HashMap<String, Object> params) throws SQLException {
		List<Cart> cartItems = null;
		try(SqlSession session = sqlSessionFactory.openSession()) {
			cartItems = session.selectList("getCartItems", params);
		}
		return cartItems;
	}
}
