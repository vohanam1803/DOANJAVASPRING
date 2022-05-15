package CUUDUONGTHANCONG.UserController;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Entity.Users;
import CUUDUONGTHANCONG.Entity.monphai;
import CUUDUONGTHANCONG.Service.AccountServiceImpl;
import CUUDUONGTHANCONG.Service.Homekethua;

@Controller
public class UserController {
	@Autowired
	Homekethua homekethua;
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {
		ModelAndView mv = new ModelAndView("user/register");
		mv.addObject("user", new Users());
		return mv;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView addRegister(HttpServletRequest request, HttpSession session,
			@ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView();
		int count = accountService.AddAccount(user);
		if (count > 0) {
			mv.addObject("status", "Đăng Ký thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}
		mv.setViewName("user/admin");
		/*
		 * mv.addObject("slides", homekethua.GetDataSlide()); mv.addObject("slides1",
		 * homekethua.GetDataSlide1()); mv.addObject("slides2",
		 * homekethua.GetDataSlide2()); mv.addObject("slides3",
		 * homekethua.GetDataSlide3()); mv.addObject("slides4",
		 * homekethua.GetDataSlide4()); mv.addObject("slides5",
		 * homekethua.GetDataSlide5());
		 */
		mv.addObject("name", user.getDisplay_name());
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin() {
		ModelAndView mv = new ModelAndView("user/login");
		mv.addObject("user", new Users());
		return mv;
	}

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView Login(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			@ModelAttribute("user") Users user) {
		ModelAndView mv = new ModelAndView();
		user = accountService.CheckAccount(user);
		if (user != null) {
			mv.setViewName("user/index");
			mv.addObject("gift", homekethua.GetDataGift());
			mv.addObject("loaisukien", homekethua.GetDataLSK());
			mv.addObject("event", homekethua.GetDataEvent());
			mv.addObject("giftserver", homekethua.GetDataGiftServer());
			/*
			 * mv.addObject("slides", homekethua.GetDataSlide()); mv.addObject("slides1",
			 * homekethua.GetDataSlide1()); mv.addObject("slides2",
			 * homekethua.GetDataSlide2()); mv.addObject("slides3",
			 * homekethua.GetDataSlide3()); mv.addObject("slides4",
			 * homekethua.GetDataSlide4()); mv.addObject("slides5",
			 * homekethua.GetDataSlide5());
			 */
			session.setAttribute("LoginInfo", user);
		} else {
			mv.setViewName("user/login");
			mv.addObject("message", "Username or Password is wrong!!");
		}

		return mv;

	}

	@RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public ModelAndView Out(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/index");
		mv.addObject("gift", homekethua.GetDataGift());
		mv.addObject("loaisukien", homekethua.GetDataLSK());
		mv.addObject("event", homekethua.GetDataEvent());
		mv.addObject("giftserver", homekethua.GetDataGiftServer());
		mv.addObject("slides", homekethua.GetDataSlide());
		mv.addObject("slides1", homekethua.GetDataSlide1());
		mv.addObject("slides2", homekethua.GetDataSlide2());
		mv.addObject("slides3", homekethua.GetDataSlide3());
		mv.addObject("slides4", homekethua.GetDataSlide4());
		mv.addObject("slides5", homekethua.GetDataSlide5());
		session.removeAttribute("LoginInfo");
		return mv;
	}

	@RequestMapping(value = "/giftout", method = RequestMethod.GET)
	public String Giftngoai(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		session.removeAttribute("LoginInfo");
		mv.addObject("gift", homekethua.GetDataGift());
		mv.addObject("loaisukien", homekethua.GetDataLSK());
		mv.addObject("event", homekethua.GetDataEvent());
		mv.addObject("giftserver", homekethua.GetDataGiftServer());
		return "user/giftcode";
	}

	@RequestMapping(value = "/let2", method = RequestMethod.GET)
	public ModelAndView let2() {
		ModelAndView mv = new ModelAndView("user/let2");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/let2", method = RequestMethod.POST)
	public ModelAndView addRegister(HttpServletRequest request, HttpSession session,
			@ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView();
		int count = accountService.AddEvent(event);
		if (count > 0) {
			mv.addObject("status", "Thêm thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}
		mv.setViewName("user/let2");
		return mv;
	}

	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public ModelAndView Delete() {
		ModelAndView mv = new ModelAndView("user/product");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public ModelAndView DeleteEv(HttpServletRequest request, HttpSession session,
			@ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView("user/product");
		accountService.delete(event);
		mv.addObject("status", "Delete Success!!");

		return mv;
	}

	/* klist */
	@RequestMapping(value = "/sukienedit")
	public ModelAndView Editsukien() {
		ModelAndView mv = new ModelAndView("user/sukien");
		mv.addObject("event", homekethua.GetDataEvent());
		return mv;
	}

	@RequestMapping("/{id_sukien}")
	public ModelAndView doDeleteCustomer(@PathVariable int id_sukien, Model model) {
		ModelAndView mv = new ModelAndView("user/sukien");
		accountService.delete1(id_sukien);
		mv.addObject("event", homekethua.GetDataEvent());
		return mv;
	}

	/* edit */
	/* Edit ten ev */
	@RequestMapping(value = "/updatesukien", method = RequestMethod.GET)
	public ModelAndView Up() {
		ModelAndView mv = new ModelAndView("user/updatesukien");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/updatesukien", method = RequestMethod.POST)
	public ModelAndView UpEv(HttpServletRequest request, HttpSession session, @ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView();
		int count1 = accountService.UpEvent1(event);
		if (count1 > 0) {
			mv.addObject("status", "Update thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}

		mv.setViewName("user/updatesukien");
		return mv;
	}

	/* Edit ngay */
	@RequestMapping(value = "/updatesukien1", method = RequestMethod.GET)
	public ModelAndView Up1() {
		ModelAndView mv = new ModelAndView("user/updatesukien1");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/updatesukien1", method = RequestMethod.POST)
	public ModelAndView UpEv1(HttpServletRequest request, HttpSession session, @ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView();
		int count2 = accountService.UpEvent2(event);
		if (count2 > 0) {
			mv.addObject("status", "Update thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}

		mv.setViewName("user/updatesukien1");
		return mv;
	}

	/* Edit mo ta */
	@RequestMapping(value = "/updatesukien2", method = RequestMethod.GET)
	public ModelAndView Up2() {
		ModelAndView mv = new ModelAndView("user/updatesukien2");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/updatesukien2", method = RequestMethod.POST)
	public ModelAndView UpEv2(HttpServletRequest request, HttpSession session, @ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView();
		int count3 = accountService.UpEvent3(event);
		if (count3 > 0) {
			mv.addObject("status", "Update thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}

		mv.setViewName("user/updatesukien2");
		return mv;
	}

	/* Edit hinh */
	@RequestMapping(value = "/updatesukien3", method = RequestMethod.GET)
	public ModelAndView Up3() {
		ModelAndView mv = new ModelAndView("user/updatesukien3");
		mv.addObject("event", new Event());
		return mv;
	}

	@RequestMapping(value = "/updatesukien3", method = RequestMethod.POST)
	public ModelAndView UpEv3(HttpServletRequest request, HttpSession session, @ModelAttribute("event") Event event) {
		ModelAndView mv = new ModelAndView();
		int count4 = accountService.UpEvent4(event);
		if (count4 > 0) {
			mv.addObject("status", "Update thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}

		mv.setViewName("user/updatesukien3");
		return mv;
	}
	/*
	 * @RequestMapping(value = "/updatesukien1", method = RequestMethod.GET) public
	 * ModelAndView Up1() { ModelAndView mv = new
	 * ModelAndView("user/updatesukien1"); mv.addObject("event", new Event());
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/updatesukien1", method = RequestMethod.POST) public
	 * ModelAndView UpEv1(HttpServletRequest request, HttpSession
	 * session, @ModelAttribute("event1") Event event) { ModelAndView mv = new
	 * ModelAndView(); int count2 = accountService.UpEvent2(event); if (count2 > 0)
	 * { mv.addObject("status", "Update thành công !!"); } else {
	 * mv.addObject("status", "Error!!"); }
	 * 
	 * mv.setViewName("user/updatesukien1"); return mv; }
	 * 
	 * @RequestMapping(value = "/updatesukien2", method = RequestMethod.GET) public
	 * ModelAndView Up2() { ModelAndView mv = new
	 * ModelAndView("user/updatesukien2"); mv.addObject("event", new Event());
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/updatesukien2", method = RequestMethod.POST) public
	 * ModelAndView UpEv2(HttpServletRequest request, HttpSession
	 * session, @ModelAttribute("event2") Event event) { ModelAndView mv = new
	 * ModelAndView(); int count3 = accountService.UpEvent3(event); if (count3 > 0)
	 * { mv.addObject("status", "Update thành công !!"); } else {
	 * mv.addObject("status", "Error!!"); }
	 * 
	 * mv.setViewName("user/updatesukien2"); return mv; }
	 * 
	 * @RequestMapping(value = "/updatesukien3", method = RequestMethod.GET) public
	 * ModelAndView Up3() { ModelAndView mv = new
	 * ModelAndView("user/updatesukien3"); mv.addObject("event", new Event());
	 * return mv; }
	 * 
	 * @RequestMapping(value = "/updatesukien3", method = RequestMethod.POST) public
	 * ModelAndView UpEv3(HttpServletRequest request, HttpSession
	 * session, @ModelAttribute("event3") Event event) { ModelAndView mv = new
	 * ModelAndView(); int count3 = accountService.UpEvent3(event); if (count3 > 0)
	 * { mv.addObject("status", "Update thành công !!"); } else {
	 * mv.addObject("status", "Error!!"); }
	 * 
	 * mv.setViewName("user/updatesukien3"); return mv; }
	 */

	@RequestMapping(value = "/savefile", method = RequestMethod.POST)
	public ModelAndView upload(@RequestParam CommonsMultipartFile file, HttpSession session) {
		String path = session.getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();

		System.out.println(path + " " + filename);
		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return new ModelAndView("upload-success", "filename", path + "/" + filename);
	}

	@RequestMapping(value = "/view")
	public ModelAndView View() {
		ModelAndView mv = new ModelAndView("user/viewsukien");
		mv.addObject("gift", homekethua.GetDataGift());
		mv.addObject("loaisukien", homekethua.GetDataLSK());
		mv.addObject("event", homekethua.GetDataEvent());
		return mv;
	}

	@RequestMapping(value = "/option")
	public ModelAndView ViewOption() {
		ModelAndView mv = new ModelAndView("user/optionedt");
		return mv;
	}

	/*
	 * @RequestMapping(value = "/editoption") public ModelAndView Option() {
	 * ModelAndView mv = new ModelAndView("user/optionedt"); return mv; }
	 * 
	 * @RequestMapping(value = "/editoption1") public ModelAndView Option1() {
	 * ModelAndView mv = new ModelAndView("user/updatesukien"); return mv; }
	 * 
	 * @RequestMapping(value = "/editoption2") public ModelAndView Option2() {
	 * ModelAndView mv = new ModelAndView("user/updatesukien1"); return mv; }
	 * 
	 * @RequestMapping(value = "/editoption3") public ModelAndView Option3() {
	 * ModelAndView mv = new ModelAndView("user/updatesukien2"); return mv; }
	 * 
	 * @RequestMapping(value = "/editoption4") public ModelAndView Option4() {
	 * ModelAndView mv = new ModelAndView("user/updatesukien3"); return mv; }
	 */
	// vo hoc
	@RequestMapping(value = "/vohocedit")
	public ModelAndView VohocEdit() {
		ModelAndView mv = new ModelAndView("user/vohocedit");
		mv.addObject("vohoc", homekethua.GetDataVohoc());
		mv.addObject("monphai", accountService.GetDataMonPhai());
		mv.addObject("binhkhi", accountService.GetDataBinhkhi());
		return mv;
	}
	/*
	 * @RequestMapping(value = "/vohocedit", method = RequestMethod.POST) public
	 * ModelAndView AddMonphai(HttpServletRequest request, HttpSession session,
	 * 
	 * @ModelAttribute("monphai") monphai mp) { ModelAndView mv = new
	 * ModelAndView("user/vohocedit"); int count = accountService.AddMonphai(mp); if
	 * (count > 0) { mv.addObject("status", "Thêm môn phái thành công !!"); } else {
	 * mv.addObject("status", "Error!!"); } mv.setViewName("user/vohocedit"); return
	 * mv; }
	 */
	
	@RequestMapping("/deletevohoc/{id_vh}")
	public ModelAndView DeleteVohoc(@PathVariable int id_vh, Model model) {
		ModelAndView mv = new ModelAndView("user/vohocedit");
		accountService.deletevohoc(id_vh);
		mv.addObject("vohoc", homekethua.GetDataVohoc());
		mv.addObject("monphai", accountService.GetDataMonPhai());
		mv.addObject("binhkhi", accountService.GetDataBinhkhi());
		return mv;
	}

	
	@RequestMapping(value = "/addvohoc", method = RequestMethod.GET)
	public ModelAndView AddVohoc() {
		ModelAndView mv = new ModelAndView("user/themvohoc");
		mv.addObject("vohoc", new Vohoc());
		mv.addObject("monphai", accountService.GetDataMonPhai());
		mv.addObject("binhkhi", accountService.GetDataBinhkhi());
		return mv;
	}

	@RequestMapping(value = "/addvohoc", method = RequestMethod.POST)
	public ModelAndView AddVohoc(HttpServletRequest request, HttpSession session,
			@ModelAttribute("vohoc") Vohoc vohoc) {
		ModelAndView mv = new ModelAndView();
		int count = accountService.AddVohoc(vohoc);
		if (count > 0) {
			mv.addObject("status", "Thêm võ học thành công !!");
		} else {
			mv.addObject("status", "Error!!");
		}
		mv.setViewName("user/themvohoc");
		return mv;
	}
	
	
}
