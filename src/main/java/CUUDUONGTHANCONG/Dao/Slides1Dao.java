package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.MapperSlides1;
import CUUDUONGTHANCONG.Entity.Slides1;

@Repository
public class Slides1Dao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Slides1> GetDataSlide1(){
		List<Slides1> list = new ArrayList<Slides1>();
		String sql = "SELECT * FROM slides1";
		list = jdbcTemplate.query(sql, new MapperSlides1());
		return list;
	}
}
