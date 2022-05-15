package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.MapperSlides2;
import CUUDUONGTHANCONG.Entity.Slides2;

@Repository
public class Slides2Dao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Slides2> GetDataSlide2(){
		List<Slides2> list = new ArrayList<Slides2>();
		String sql = "SELECT * FROM slides2";
		list = jdbcTemplate.query(sql, new MapperSlides2());
		return list;
	}
}
