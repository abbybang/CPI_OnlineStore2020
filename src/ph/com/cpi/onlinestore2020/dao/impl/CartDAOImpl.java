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
import ph.com.cpi.onlinestore2020.model.Transaction;

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

	@Override
	public void addCartItems(HashMap<String, Object> params) throws SQLException{
		try(SqlSession session = sqlSessionFactory.openSession()){
			session.update("addCartItems",params);
			session.commit();
		}
	}

	@Override
	public void addTransaction(HashMap<String, Object> params) throws SQLException {
		try(SqlSession session = sqlSessionFactory.openSession()) {
			session.update("addTransaction", params);
			session.commit();
		}
	}

	@Override
	public List<Transaction> getTransaction(HashMap<String, Object> params) throws SQLException {
		List<Transaction> transaction = null;
		try(SqlSession session = sqlSessionFactory.openSession()) {
			transaction = session.selectList("getTransactionID", params);
		}
		return transaction;
	}

	@Override
	public void addSale(HashMap<String, Object> params) throws SQLException {
		try(SqlSession session = sqlSessionFactory.openSession()) {
			session.update("addSale", params);
			session.commit();
		}
	}

	@Override
	public void deleteItem(HashMap<String, Object> params) throws SQLException {
		try(SqlSession session = sqlSessionFactory.openSession()) {
			session.update("deleteItem", params);
			session.commit();
		}
	}
}
