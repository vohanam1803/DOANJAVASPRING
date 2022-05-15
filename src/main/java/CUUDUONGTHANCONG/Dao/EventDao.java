package CUUDUONGTHANCONG.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.MapperEvent;

@Repository
public class EventDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;

	private String SqlString() {
		StringBuffer varname1 = new StringBuffer();
		varname1.append("SELECT ");
		varname1.append("p.id as id_sukien");
		varname1.append(",p.id_loaisukien ");
		varname1.append(",p.tensukien ");
		varname1.append(",p.date ");
		varname1.append(",p.description ");
		varname1.append(",p.hinhev ");
		varname1.append(",c.id ");
		varname1.append(",c.name ");
		varname1.append(",c.mota ");
		varname1.append("FROM sukien AS p ");
		varname1.append("INNER JOIN ");
		varname1.append("loaisukien AS c ");
		varname1.append("ON p.id_loaisukien = c.id ");
		return varname1.toString();
	}

	public List<Event> GetDataEvent() {
		String sql = SqlString();
		List<Event> list = jdbcTemplate.query(sql, new MapperEvent());
		return list;
	}

	public int AddEvent(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT  ");
		sql.append("INTO sukien ");
		sql.append("( ");
		sql.append("   id_loaisukien, ");
		sql.append("   tensukien, ");
		sql.append("   date, ");
		sql.append("   description, ");
		sql.append("   hinhev ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '" + event.getId_loaisukien() + "', ");
		sql.append("  '" + event.getTensukien() + "', ");
		sql.append("  '" + event.getDate() + "', ");
		sql.append("  '" + event.getDescription() + "', ");
		sql.append("  '" + event.getHinhev() + "' ");
		sql.append(")");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};

	public Event GetEventByAcc(Event event) {
		String sql = "SELECT * FROM sukien WHERE tensukien = '" + event.getTensukien() + "'";
		Event result = jdbcTemplate.queryForObject(sql, new MapperEvent());
		return result;
	};

	public void delete(Event event) {
		String sql = "DELETE FROM sukien WHERE tensukien = '" + event.getTensukien() + "'";
		jdbcTemplate.update(sql);
	}

	public void delete1(int id_sukien) {
		String sql = "DELETE FROM sukien WHERE id = " + id_sukien;
		jdbcTemplate.update(sql);
	}

	/* Edit */
	public int UpEvent(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE  ");
		sql.append("sukien ");
		sql.append("SET ");
		sql.append("tensukien ");
		sql.append("=");
		sql.append("  '" + event.getTensukien() + "', ");
		sql.append("date ");
		sql.append("=");
		sql.append("  '" + event.getDate() + "', ");
		sql.append("description ");
		sql.append("=");
		sql.append("  '" + event.getDescription() + "', ");
		sql.append("hinhev ");
		sql.append("=");
		sql.append("  '" + event.getHinhev() + "' ");
		sql.append("WHERE id");
		sql.append("=");
		sql.append("  '" + event.getId_sukien() + "' ");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
	public int UpEvent1(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE  ");
		sql.append("sukien ");
		sql.append("SET ");
		sql.append("tensukien ");
		sql.append("=");
		sql.append("  '" + event.getTensukien() + "'");
		sql.append("WHERE id");
		sql.append("=");
		sql.append("  '" + event.getId_sukien() + "' ");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
	public int UpEvent2(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE  ");
		sql.append("sukien ");
		sql.append("SET ");
		sql.append("date ");
		sql.append("=");
		sql.append("  '" + event.getDate() + "'");
		sql.append("WHERE id");
		sql.append("=");
		sql.append("  '" + event.getId_sukien() + "' ");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
	public int UpEvent3(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE  ");
		sql.append("sukien ");
		sql.append("SET ");
		sql.append("description ");
		sql.append("=");
		sql.append("  '" + event.getDescription() + "'");
		sql.append("WHERE id");
		sql.append("=");
		sql.append("  '" + event.getId_sukien() + "' ");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
	public int UpEvent4(Event event) {
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE  ");
		sql.append("sukien ");
		sql.append("SET ");
		sql.append("hinhev ");
		sql.append("=");
		sql.append("  '" + event.getHinhev() + "'");
		sql.append("WHERE id");
		sql.append("=");
		sql.append("  '" + event.getId_sukien() + "' ");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	
}
