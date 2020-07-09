package ph.com.cpi.onlinestore2020.service.impl;

import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.dao.HomePageDAO;
import ph.com.cpi.onlinestore2020.dao.impl.HomePageDaoImpl;
import ph.com.cpi.onlinestore2020.model.HomePage;


public class HomePageServiceImpl {

HomePageDAO homepageList = new HomePageDaoImpl();
	
	public List<HomePage> getHomePageList() throws SQLException{
		return homepageList.getHomePageList();
	}
	
}
