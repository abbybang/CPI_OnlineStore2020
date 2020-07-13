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

public class LoginDAOimpl implements LoginDao {

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
	public User getUserDetails(HashMap<String, Object> params) throws SQLException {
		User user = null;
		
		try(SqlSession session = sqlSessionFactory.openSession()){
			user = session.selectOne("getUser", params);
		}
		
		return user;
	}
}
