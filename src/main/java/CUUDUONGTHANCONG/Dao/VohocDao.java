package CUUDUONGTHANCONG.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.MapperVohoc;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Entity.MapperUsers;
import CUUDUONGTHANCONG.Entity.Users;


@Repository
public class VohocDao {
	@Autowired
	public  JdbcTemplate jdbcTemplate;

	private String SqlString() {
		StringBuffer  varname1 = new StringBuffer();
		varname1.append("SELECT ");
		varname1.append("p.id_vohoc as id_vh ");
		varname1.append(",p.id_monphai as id_mp ");
		varname1.append(",p.id_binhkhi as id_bk");
		varname1.append(",p.tieude ");
		varname1.append(",p.hinh ");
		varname1.append(",c.id_binhkhi ");
		varname1.append(",c.tenbinhkhi ");
		varname1.append(",d.id_monphai ");
		varname1.append(",d.tenmonphai ");
		varname1.append("FROM vohoc AS p ");
		varname1.append("INNER JOIN ");
		varname1.append("binhkhi AS c ");
		varname1.append("ON p.id_binhkhi = c.id_binhkhi ");
		varname1.append("INNER JOIN ");
		varname1.append("monphai AS d ");
		varname1.append("ON p.id_monphai = d.id_monphai");
		return varname1.toString();

	}
	public List<Vohoc> GetDataVohoc(){
		String sql = SqlString();
		List<Vohoc> list =  jdbcTemplate.query(sql, new MapperVohoc());
		return list;
	}
	
	public void deletevohoc(int id_vh) {
		String sql = "DELETE FROM vohoc WHERE id_vohoc = " + id_vh;
		jdbcTemplate.update(sql);
	}
	
	public int AddVohoc(Vohoc vohoc) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT  ");
		sql.append("INTO vohoc ");
		sql.append("( ");
		sql.append("   id_monphai, ");
		sql.append("   id_binhkhi, ");
		sql.append("   tieude, ");
		sql.append("   hinh ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '" + vohoc.getId_mp() + "', ");
		sql.append("  '" + vohoc.getId_bk() + "', ");
		sql.append("  '" + vohoc.getTieude() + "', ");
		sql.append("  '" + vohoc.getHinh() + "' ");
		sql.append(")");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
}
