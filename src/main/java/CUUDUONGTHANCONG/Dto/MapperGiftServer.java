package CUUDUONGTHANCONG.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperGiftServer implements RowMapper<GiftServer>{

	public GiftServer mapRow(ResultSet rs, int rowNum) throws SQLException {
		GiftServer ev = new GiftServer();
		ev.setIdserver(rs.getInt("idserver"));
		ev.setIdgiftserver(rs.getInt("idgiftserver"));
		ev.setTenserver(rs.getString("tenserver"));
		ev.setIdgift(rs.getInt("idgift"));
		ev.setGiftcode(rs.getString("giftcode"));
		return ev;
	}
}