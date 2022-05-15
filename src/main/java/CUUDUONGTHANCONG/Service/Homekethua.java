package CUUDUONGTHANCONG.Service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import CUUDUONGTHANCONG.Dao.SlidesDao;

import CUUDUONGTHANCONG.Dao.VohocDao;
import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.GiftServer;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Dao.EventDao;
import CUUDUONGTHANCONG.Dao.GiftDao;
import CUUDUONGTHANCONG.Dao.GiftServerDao;
import CUUDUONGTHANCONG.Dao.LoaisukienDao;
import CUUDUONGTHANCONG.Dao.MenuDao;
import CUUDUONGTHANCONG.Dao.Slides1Dao;
import CUUDUONGTHANCONG.Dao.Slides2Dao;
import CUUDUONGTHANCONG.Dao.Slides3Dao;
import CUUDUONGTHANCONG.Dao.Slides4Dao;
import CUUDUONGTHANCONG.Dao.Slides5Dao;
import CUUDUONGTHANCONG.Entity.Giftcode;
import CUUDUONGTHANCONG.Entity.Loaisukien;
import CUUDUONGTHANCONG.Entity.Menu;
import CUUDUONGTHANCONG.Entity.Slides;
import CUUDUONGTHANCONG.Entity.Slides1;
import CUUDUONGTHANCONG.Entity.Slides2;
import CUUDUONGTHANCONG.Entity.Slides3;
import CUUDUONGTHANCONG.Entity.Slides4;
import CUUDUONGTHANCONG.Entity.Slides5;


@Service
public class Homekethua implements IHome {
	@Autowired
	private MenuDao menuDao;

	public List<Menu> GetDataMenu() {

		return menuDao.GetDataMenu();
	}

	@Autowired
	private LoaisukienDao loaisukienDao;

	public List<Loaisukien> GetDataLSK() {

		return loaisukienDao.GetDataLSK();
	}

	@Autowired
	private SlidesDao slidesDao;

	public List<Slides> GetDataSlide() {

		return slidesDao.GetDataSlide();
	}

	@Autowired
	private Slides1Dao slides1Dao;

	public List<Slides1> GetDataSlide1() {

		return slides1Dao.GetDataSlide1();
	}

	@Autowired
	private Slides2Dao slides2Dao;

	public List<Slides2> GetDataSlide2() {

		return slides2Dao.GetDataSlide2();
	}

	@Autowired
	private Slides3Dao slides3Dao;

	public List<Slides3> GetDataSlide3() {

		return slides3Dao.GetDataSlide3();
	}

	@Autowired
	private Slides4Dao slides4Dao;

	public List<Slides4> GetDataSlide4() {

		return slides4Dao.GetDataSlide4();
	}

	@Autowired
	private Slides5Dao slides5Dao;

	public List<Slides5> GetDataSlide5() {

		return slides5Dao.GetDataSlide5();
	}

	@Autowired
	private EventDao eventDao;

	public List<Event> GetDataEvent() {
		List<Event> listEvent = eventDao.GetDataEvent();
		return listEvent;
	}
	
	

	
	@Autowired
	private GiftDao giftDao;

	public List<Giftcode> GetDataGift() {

		return giftDao.GetDataGift();
	}

	@Autowired
	private VohocDao vohocDao;

	public List<Vohoc> GetDataVohoc() {
		List<Vohoc> listVohoc = vohocDao.GetDataVohoc();
		return listVohoc;
	}

	@Autowired
	private GiftServerDao giftserverDao;

	public List<GiftServer> GetDataGiftServer() {
		List<GiftServer> list = giftserverDao.GetDataGiftServer();
		return list;
	}

	
}
