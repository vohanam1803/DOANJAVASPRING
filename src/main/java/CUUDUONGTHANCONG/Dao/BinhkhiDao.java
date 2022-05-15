package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.Binhkhi;
import CUUDUONGTHANCONG.Entity.MapperBinhkhi;


@Repository
public class BinhkhiDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;

	public List<Binhkhi> GetDataBinhkhi() {
		List<Binhkhi> list = new ArrayList<Binhkhi>();
		String sql = "SELECT * FROM binhkhi";
		list = jdbcTemplate.query(sql, new MapperBinhkhi());
		return list;
	}
}
