package CUUDUONGTHANCONG.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperGift implements RowMapper<Giftcode>{

	public Giftcode mapRow(ResultSet rs, int rowNum) throws SQLException {
		Giftcode g = new Giftcode();
		g.setIdgift(rs.getInt("idgift"));
		g.setGiftcode(rs.getString("giftcode"));
		return g;
	}
}
