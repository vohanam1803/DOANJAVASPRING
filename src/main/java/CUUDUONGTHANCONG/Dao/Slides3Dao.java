package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import CUUDUONGTHANCONG.Entity.MapperSlides3;
import CUUDUONGTHANCONG.Entity.Slides3;

@Repository
public class Slides3Dao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Slides3> GetDataSlide3(){
		List<Slides3> list = new ArrayList<Slides3>();
		String sql = "SELECT * FROM slides3";
		list = jdbcTemplate.query(sql, new MapperSlides3());
		return list;
	}
}
