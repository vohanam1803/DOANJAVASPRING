package CUUDUONGTHANCONG.Service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CUUDUONGTHANCONG.Dao.BinhkhiDao;
import CUUDUONGTHANCONG.Dao.EventDao;
import CUUDUONGTHANCONG.Dao.GiftDao;
import CUUDUONGTHANCONG.Dao.MenuDao;
import CUUDUONGTHANCONG.Dao.MonPhaiDao;
import CUUDUONGTHANCONG.Dao.UsersDao;
import CUUDUONGTHANCONG.Dao.VohocDao;
import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Entity.Binhkhi;
import CUUDUONGTHANCONG.Entity.Giftcode;
import CUUDUONGTHANCONG.Entity.Menu;
import CUUDUONGTHANCONG.Entity.Users;
import CUUDUONGTHANCONG.Entity.monphai;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersDao usersDao = new UsersDao();

	public int AddAccount(Users user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));

		return usersDao.AddAccount(user);
	}

	public Users CheckAccount(Users user) {
		String pass = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		if (user != null) {
			if (BCrypt.checkpw(pass, user.getPassword())) {

				return user;

			} else {
				return null;
			}
		}
		return null;
	}

	@Autowired
	EventDao evDao = new EventDao();

	public int AddEvent(Event event) {
		return evDao.AddEvent(event);
	}

	public void delete(Event event) {

		evDao.delete(event);
	}

	public int UpEvent(Event event) {
		return evDao.UpEvent(event);
	}
	public int UpEvent1(Event event) {
		return evDao.UpEvent1(event);
	}
	public int UpEvent2(Event event) {
		return evDao.UpEvent2(event);
	}
	public int UpEvent3(Event event) {
		return evDao.UpEvent3(event);
	}
	public int UpEvent4(Event event) {
		return evDao.UpEvent4(event);
	}
	
	public void delete1(int id_sukien) {
		// validate business
		evDao.delete1(id_sukien);
	}

	@Autowired
	VohocDao vhDao = new VohocDao();

	public void deletevohoc(int id_vh) {
		// validate business
		vhDao.deletevohoc(id_vh);
	}
	
	public int AddVohoc(Vohoc vohoc) {
		return vhDao.AddVohoc(vohoc);
	}
	
	@Autowired
	MonPhaiDao mpDao = new MonPhaiDao(); 

	 
	
	public List<monphai> GetDataMonPhai() {

		return mpDao.GetDataMonPhai();
	}
	
	
	
	@Autowired
	private BinhkhiDao bkDao;

	public List<Binhkhi> GetDataBinhkhi() {

		return bkDao.GetDataBinhkhi();
	}
}
