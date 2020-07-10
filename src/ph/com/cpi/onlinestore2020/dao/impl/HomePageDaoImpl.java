package ph.com.cpi.onlinestore2020.dao.impl;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import ph.com.cpi.onlinestore2020.dao.HomePageDAO;
import ph.com.cpi.onlinestore2020.dao.ProductDao;
import ph.com.cpi.onlinestore2020.model.HomePage;
import ph.com.cpi.onlinestore2020.model.Product;

public class HomePageDaoImpl implements HomePageDAO {
	String resource = "ph/com/cpi/onlinestore2020/resource/MyBatisConfig.xml";
	InputStream inputStream;
	SqlSessionFactory sqlSessionFactory;
	
	public HomePageDaoImpl() {
		try {
			this.inputStream = Resources.getResourceAsStream(resource);
			this.sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<HomePage> getHomePageList() throws SQLException {
		List<HomePage> homepageList = null;
		try(SqlSession session = sqlSessionFactory.openSession()){
			homepageList = session.selectList("getHomePageList");
		}
		
		return homepageList;
	}
}
