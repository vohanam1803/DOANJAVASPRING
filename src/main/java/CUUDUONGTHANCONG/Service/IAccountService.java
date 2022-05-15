package CUUDUONGTHANCONG.Service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.GiftServer;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Entity.Binhkhi;
import CUUDUONGTHANCONG.Entity.Giftcode;
import CUUDUONGTHANCONG.Entity.Menu;
import CUUDUONGTHANCONG.Entity.Users;
import CUUDUONGTHANCONG.Entity.monphai;


@Service
public interface IAccountService {

	public int AddAccount(Users user);

	public Users CheckAccount(Users user);

	public int AddEvent(Event event);
	
	
	public void delete(Event event);
	
	
	public int UpEvent(Event event);
	public int UpEvent1(Event event);
	public int UpEvent2(Event event);
	public int UpEvent3(Event event);
	public int UpEvent4(Event event);
	
	public void delete1(int id_sukien);
	
	
	public void deletevohoc(int id_vh);
	public int AddVohoc(Vohoc vohoc);
	@Autowired
	public List<monphai> GetDataMonPhai();
	
	
	
	@Autowired
	public List<Binhkhi> GetDataBinhkhi();
}
