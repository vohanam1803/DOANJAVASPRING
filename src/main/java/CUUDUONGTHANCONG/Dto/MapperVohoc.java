package CUUDUONGTHANCONG.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperVohoc implements RowMapper<Vohoc>{

	public Vohoc mapRow(ResultSet rs, int rowNum) throws SQLException 
	{
		Vohoc ev = new Vohoc();
		ev.setId_vh(rs.getLong("id_vh"));
		ev.setId_mp(rs.getLong("id_mp"));
		ev.setId_bk(rs.getLong("id_bk"));
		ev.setTieude(rs.getString("tieude"));
		ev.setHinh(rs.getString("hinh"));
		ev.setId_binhkhi(rs.getLong("id_binhkhi"));
		ev.setTenbinhkhi(rs.getString("tenbinhkhi"));
		ev.setId_monphai(rs.getLong("id_monphai"));
		ev.setTenmonphai(rs.getString("tenmonphai"));
		return ev;
	}
}
