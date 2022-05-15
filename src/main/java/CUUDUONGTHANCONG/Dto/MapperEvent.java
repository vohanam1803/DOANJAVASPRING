package CUUDUONGTHANCONG.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;


public class MapperEvent implements RowMapper<Event>{

	public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
		Event ev = new Event();
		ev.setId_sukien(rs.getLong("id_sukien"));
		ev.setId_loaisukien(rs.getInt("id_loaisukien"));
		ev.setTensukien(rs.getString("tensukien"));
		ev.setDate(rs.getString("date"));
		ev.setDescription(rs.getString("description"));
		ev.setHinhev(rs.getString("hinhev"));
		ev.setId(rs.getInt("id"));
		ev.setName(rs.getString("name"));
		ev.setMota(rs.getString("mota"));
		return ev;
	}
}
