package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import CUUDUONGTHANCONG.Entity.MapperSlides4;
import CUUDUONGTHANCONG.Entity.Slides4;

@Repository
public class Slides4Dao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Slides4> GetDataSlide4(){
		List<Slides4> list = new ArrayList<Slides4>();
		String sql = "SELECT * FROM slides4";
		list = jdbcTemplate.query(sql, new MapperSlides4());
		return list;
	}
}