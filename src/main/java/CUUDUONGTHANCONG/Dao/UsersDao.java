package CUUDUONGTHANCONG.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import CUUDUONGTHANCONG.Entity.MapperUsers;
import CUUDUONGTHANCONG.Entity.Users;

@Repository
public class UsersDao {
	@Autowired
	public JdbcTemplate jdbcTemplate;

	public int AddAccount(Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT  ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("   user, ");
		sql.append("   password, ");
		sql.append("   display_name, ");
		sql.append("   address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("  '" + user.getUser() + "', ");
		sql.append("  '" + user.getPassword() + "', ");
		sql.append("  '" + user.getDisplay_name() + "', ");
		sql.append("  '" + user.getAddress() + "' ");
		sql.append(")");

		int insert = jdbcTemplate.update(sql.toString());
		return insert;
	};

	public Users GetUserByAcc(Users user)
	{
		String sql = "SELECT * FROM users WHERE user = '"+user.getUser()+"'";
		Users result = jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
	};
	
	
}
