package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.Giftcode;
import CUUDUONGTHANCONG.Entity.MapperGift;


@Repository
public class GiftDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	public List<Giftcode> GetDataGift(){
		List<Giftcode> list = new ArrayList<Giftcode>();
		String sql = "SELECT * FROM giftcode";
		list = jdbcTemplate.query(sql, new MapperGift());
		return list;
	}
}
