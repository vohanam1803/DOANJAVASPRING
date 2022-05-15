package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides3 implements RowMapper<Slides3>{

	public Slides3 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides3 slides3 = new Slides3();
		slides3.setIdevent3(rs.getInt("idevent3"));
		slides3.setHinh3(rs.getString("hinh3"));
		slides3.setTensukien3(rs.getString("tensukien3"));
		slides3.setDate3(rs.getString("date3"));
		slides3.setMota3(rs.getString("mota3"));
		return slides3;
	}
}
