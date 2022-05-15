package CUUDUONGTHANCONG.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import CUUDUONGTHANCONG.Dto.GiftServer;
import CUUDUONGTHANCONG.Dto.MapperGiftServer;

@Repository
public class GiftServerDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;
	
	private String SqlString()
	{
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT ");
		varname1.append("p.idserver ");
		varname1.append(",p.idgift as idgiftserver ");
		varname1.append(",p.tenserver ");
		varname1.append(",c.idgift ");
		varname1.append(",c.giftcode ");
		varname1.append("FROM server AS p ");
		varname1.append("INNER JOIN ");
		varname1.append("giftcode AS c ");
		varname1.append("ON p.idgift = c.idgift ");
		varname1.append("GROUP BY p.tenserver");
		return varname1.toString();
	}
	public List<GiftServer> GetDataGiftServer(){
		String sql = SqlString();
		List<GiftServer> list =  jdbcTemplate.query(sql, new MapperGiftServer());
		return list;
	}
}
