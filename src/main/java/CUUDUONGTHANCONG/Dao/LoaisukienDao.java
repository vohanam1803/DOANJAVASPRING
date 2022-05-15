package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.Loaisukien;
import CUUDUONGTHANCONG.Entity.MapperLoaisukien;


@Repository
public class LoaisukienDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Loaisukien> GetDataLSK(){
		List<Loaisukien> list = new ArrayList<Loaisukien>();
		String sql = "SELECT * FROM loaisukien";
		list = jdbcTemplate.query(sql, new MapperLoaisukien());
		return list;
	}
}
