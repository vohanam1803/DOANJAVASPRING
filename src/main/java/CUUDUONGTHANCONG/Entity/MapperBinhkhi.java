package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBinhkhi implements RowMapper<Binhkhi>{

	public Binhkhi mapRow(ResultSet rs, int rowNum) throws SQLException {
		Binhkhi bk = new Binhkhi();
		bk.setId_binhkhi(rs.getLong("id_binhkhi"));
		bk.setTenbinhkhi(rs.getString("tenbinhkhi"));
		return bk;
	}
}