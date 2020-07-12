package ph.com.cpi.onlinestore2020.dao.impl;

import java.io.InputStream;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.ArrayList;
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
//		try {
//			this.inputStream = Resources.getResourceAsStream(resource);
//			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	}

	@Override
	public List<Cart> getCartItems(HashMap<String, Object> params) throws SQLException {
		List<Cart> cartItems = new ArrayList<Cart>();
//		try(SqlSession session = sqlSessionFactory.openSession()) {
//			cartItems = session.selectList("getCartItems", params);
//		}
		
		Cart item1 = new Cart(1, 11, "Aspire 3 A315-42-R4BG", new BigDecimal(19999), 3);
		Cart item2 = new Cart(1, 12, "Aspire 5 A514-53-39QP", new BigDecimal(25999), 1);
		Cart item3 = new Cart(1, 13, "Aspire 5 A514-52KG-31B8", new BigDecimal(26999), 2);
		
		cartItems.add(item1);
		cartItems.add(item2);
		cartItems.add(item3);
		
		return cartItems;
	}
}
