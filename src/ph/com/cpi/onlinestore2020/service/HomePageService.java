package ph.com.cpi.onlinestore2020.service;

import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.HomePage;


public interface HomePageService {

	public List<HomePage> getHomePageList() throws SQLException;
}
