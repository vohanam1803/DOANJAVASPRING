package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides1 implements RowMapper<Slides1>{

	public Slides1 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides1 slides1 = new Slides1();
		slides1.setIdevent1(rs.getInt("idevent1"));
		slides1.setHinh1(rs.getString("hinh1"));
		slides1.setTensukien1(rs.getString("tensukien1"));
		slides1.setDate1(rs.getString("date1"));
		slides1.setMota1(rs.getString("mota1"));
		return slides1;
	}
}