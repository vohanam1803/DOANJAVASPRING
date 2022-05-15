package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Entity.MapperMonphai;

import CUUDUONGTHANCONG.Entity.monphai;

@Repository
public class MonPhaiDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;

	public List<monphai> GetDataMonPhai() {
		List<monphai> list = new ArrayList<monphai>();
		String sql = "SELECT * FROM monphai";
		list = jdbcTemplate.query(sql, new MapperMonphai());
		return list;
	}

	
}
