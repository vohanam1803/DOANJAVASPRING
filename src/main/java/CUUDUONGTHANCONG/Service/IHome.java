package CUUDUONGTHANCONG.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.GiftServer;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Entity.Giftcode;
import CUUDUONGTHANCONG.Entity.Loaisukien;
import CUUDUONGTHANCONG.Entity.Menu;
import CUUDUONGTHANCONG.Entity.Slides;
import CUUDUONGTHANCONG.Entity.Slides1;
import CUUDUONGTHANCONG.Entity.Slides2;
import CUUDUONGTHANCONG.Entity.Slides3;
import CUUDUONGTHANCONG.Entity.Slides4;
import CUUDUONGTHANCONG.Entity.Slides5;
import CUUDUONGTHANCONG.Entity.Users;




@Service
public interface IHome
{
	@Autowired
	public List<Menu> GetDataMenu();
	@Autowired
	public List<Slides> GetDataSlide();
	@Autowired
	public List<Slides1> GetDataSlide1();
	@Autowired
	public List<Slides2> GetDataSlide2();
	@Autowired
	public List<Slides3> GetDataSlide3();
	@Autowired
	public List<Slides4> GetDataSlide4();
	@Autowired
	public List<Slides5> GetDataSlide5();
	
	@Autowired
	public List<Loaisukien> GetDataLSK();

	@Autowired
	public List<Event> GetDataEvent();
	@Autowired
	public List<Giftcode> GetDataGift();
	@Autowired
	public List<Vohoc> GetDataVohoc();
	@Autowired
	public List<GiftServer> GetDataGiftServer();
	
	
	
}
