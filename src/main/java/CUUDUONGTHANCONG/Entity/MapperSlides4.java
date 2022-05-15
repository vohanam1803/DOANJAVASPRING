package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides4 implements RowMapper<Slides4>{

	public Slides4 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides4 slides4 = new Slides4();
		slides4.setIdevent4(rs.getInt("idevent4"));
		slides4.setHinh4(rs.getString("hinh4"));
		slides4.setTensukien4(rs.getString("tensukien4"));
		slides4.setDate4(rs.getString("date4"));
		slides4.setMota4(rs.getString("mota4"));
		return slides4;
	}
}
