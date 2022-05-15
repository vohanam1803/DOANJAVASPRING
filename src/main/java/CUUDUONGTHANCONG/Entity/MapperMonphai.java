package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperMonphai implements RowMapper<monphai>{

	public monphai mapRow(ResultSet rs, int rowNum) throws SQLException {
		monphai mp = new monphai();
		mp.setId_monphai(rs.getLong("id_monphai"));
		mp.setTenmonphai(rs.getString("tenmonphai"));
		return mp;
	}
}
