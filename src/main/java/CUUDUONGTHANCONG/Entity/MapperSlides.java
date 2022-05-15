package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides>{

	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides slides = new Slides();
		slides.setIdevent(rs.getInt("idevent"));
		slides.setHinh(rs.getString("hinh"));
		slides.setTensukien(rs.getString("tensukien"));
		slides.setDate(rs.getString("date"));
		slides.setMota(rs.getString("mota"));
		return slides;
	}
}


