package ph.com.cpi.onlinestore2020.dao.impl;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.HashMap;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.dao.LoginDao;
import ph.com.cpi.onlinestore2020.model.User;




public class LoginDaoImpl implements LoginDao {

	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public LoginDaoImpl() {
		super();
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public User getUserDetails(HashMap<String, Object> params) throws SQLException {
		User user = null;
		
		try(SqlSession session = sqlSessionFactory.openSession()){
			user = session.selectOne("getUser", params);
		}
		
		return user;
	}
	
	@Override
	public void addUser(HashMap<String, Object> params) throws SQLException {
		try(SqlSession session = sqlSessionFactory.openSession()){
			session.update("addUser",params);
			session.commit();
		}
	}
	
	@Override
	public User authenticateUser(HashMap<String, Object> params) throws SQLException {
		User user = null;
		
		try(SqlSession session = sqlSessionFactory.openSession()){
			user = session.selectOne("authenticateUser", params);
		}
		
		return user;
	}
}
