package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides5 implements RowMapper<Slides5>{

	public Slides5 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides5 slides5 = new Slides5();
		slides5.setIdevent5(rs.getInt("idevent5"));
		slides5.setHinh5(rs.getString("hinh5"));
		slides5.setTensukien5(rs.getString("tensukien5"));
		slides5.setDate5(rs.getString("date5"));
		slides5.setMota5(rs.getString("mota5"));
		return slides5;
	}
}