package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.MapperMenu;
import CUUDUONGTHANCONG.Entity.Menu;

@Repository
public class MenuDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Menu> GetDataMenu(){
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM menu";
		list = jdbcTemplate.query(sql, new MapperMenu());
		return list;
	}
}
