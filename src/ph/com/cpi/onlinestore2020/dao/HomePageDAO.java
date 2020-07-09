package ph.com.cpi.onlinestore2020.dao;

import java.sql.SQLException;
import java.util.List;

import ph.com.cpi.onlinestore2020.model.HomePage;


public interface HomePageDAO {

	public List<HomePage> getHomePageList() throws SQLException;
}
