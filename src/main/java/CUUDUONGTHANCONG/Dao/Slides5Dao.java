package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.MapperSlides5;
import CUUDUONGTHANCONG.Entity.Slides5;

@Repository
public class Slides5Dao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Slides5> GetDataSlide5(){
		List<Slides5> list = new ArrayList<Slides5>();
		String sql = "SELECT * FROM slides5";
		list = jdbcTemplate.query(sql, new MapperSlides5());
		return list;
	}
}
