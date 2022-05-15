package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperLoaisukien implements RowMapper<Loaisukien>{

	public Loaisukien mapRow(ResultSet rs, int rowNum) throws SQLException {
		Loaisukien lsk = new Loaisukien();
		lsk.setId(rs.getInt("id"));
		lsk.setName(rs.getString("name"));
		lsk.setMota(rs.getString("mota"));
		return lsk;
	}
}