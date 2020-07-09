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

import ph.com.cpi.onlinestore2020.dao.LoginDAO;
import ph.com.cpi.onlinestore2020.model.User;

public class LoginDAOimpl implements LoginDAO {

	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public LoginDAOimpl() {
		super();
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public List<User> getUserDetails(HashMap<String, Object> params) throws SQLException {
		List<User> user = null;
		
		try(SqlSession session = sqlSessionFactory.openSession()){
			user = session.selectList("getUser", params);
		}
		
		return user;
	}
}
