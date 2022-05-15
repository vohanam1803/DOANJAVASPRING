package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides2 implements RowMapper<Slides2>{

	public Slides2 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides2 slides2 = new Slides2();
		slides2.setIdevent2(rs.getInt("idevent2"));
		slides2.setHinh2(rs.getString("hinh2"));
		slides2.setTensukien2(rs.getString("tensukien2"));
		slides2.setDate2(rs.getString("date2"));
		slides2.setMota2(rs.getString("mota2"));
		return slides2;
	}
}