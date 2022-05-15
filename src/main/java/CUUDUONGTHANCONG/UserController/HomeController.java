package CUUDUONGTHANCONG.UserController;


import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import CUUDUONGTHANCONG.Dto.Vohoc;
import CUUDUONGTHANCONG.Dto.Event;
import CUUDUONGTHANCONG.Dto.GiftServer;
import CUUDUONGTHANCONG.Entity.Users;
import CUUDUONGTHANCONG.Service.Homekethua;

@Controller
public class HomeController {
	@Autowired
	Homekethua homekethua;

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("gift", homekethua.GetDataGift());
		mv.addObject("loaisukien", homekethua.GetDataLSK());
		mv.addObject("event", homekethua.GetDataEvent());

		return mv;
	}
	
	
	
	
	@RequestMapping(value = "/admin")
	public ModelAndView Admin() {
		ModelAndView mv = new ModelAndView("user/admin");
		mv.addObject("vohoc", homekethua.GetDataVohoc());
		return mv;
	}
	
	@RequestMapping(value = "/viewchitiet")
	public ModelAndView Sukienchitiet() {
		ModelAndView mv = new ModelAndView("user/sukienchitiet");
		mv.addObject("event", homekethua.GetDataEvent());
		mv.addObject("loaisukien", homekethua.GetDataLSK());
		return mv;
	}
	

	@RequestMapping(value = "/gift")
	public ModelAndView Giftcode() {
		ModelAndView mv = new ModelAndView("user/giftcode");
		mv.addObject("giftserver", homekethua.GetDataGiftServer());
		/* mv.addObject("user", new Users()); */
		return mv;
	}
	
	@RequestMapping(value = "/welcome")
	public ModelAndView welcome() {
		ModelAndView mv = new ModelAndView("user/welcome");
		return mv;
	}

	@RequestMapping(value = "/test")
	public ModelAndView GF() {
		ModelAndView mv = new ModelAndView("user/gift");
		mv.addObject("giftserver", homekethua.GetDataGiftServer());
		mv.addObject("vohoc", homekethua.GetDataVohoc());
		/* mv.addObject("user", new Users()); */
		return mv;
	}
	

	/*
	 * @RequestMapping(value = "/giftProcess", method = RequestMethod.POST) public
	 * ModelAndView Login(HttpServletRequest request, HttpServletResponse response,
	 * HttpSession session,
	 * 
	 * @ModelAttribute("user") Users user) { ModelAndView mv = new ModelAndView();
	 * user = accountService.CheckAccount(user); if (user != null) {
	 * mv.setViewName("user/index"); mv.addObject("slides",
	 * homekethua.GetDataSlide()); mv.addObject("slides1",
	 * homekethua.GetDataSlide1()); mv.addObject("slides2",
	 * homekethua.GetDataSlide2()); mv.addObject("slides3",
	 * homekethua.GetDataSlide3()); mv.addObject("slides4",
	 * homekethua.GetDataSlide4()); mv.addObject("slides5",
	 * homekethua.GetDataSlide5()); session.setAttribute("LoginInfo", user); } else
	 * { mv.setViewName("user/login"); mv.addObject("message",
	 * "Username or Password is wrong!!"); }
	 * 
	 * return mv;
	 * 
	 * }
	 */
	/*
	 * @RequestMapping(value = "/product") public ModelAndView Product() {
	 * ModelAndView mv = new ModelAndView("user/product"); return mv; }
	 * 
	 * @RequestMapping(value = "/user/admin") public ModelAndView Admin() {
	 * ModelAndView mv = new ModelAndView("user/admin"); return mv; }
	 * 
	 * @RequestMapping(value = "/resign") public ModelAndView Resign() {
	 * ModelAndView mv = new ModelAndView("user/resign"); return mv; }
	 */

	@RequestMapping(value = "/monphai")
	public ModelAndView Monphai() {
		ModelAndView mv = new ModelAndView("user/monphai");
		return mv;
	}

	@RequestMapping(value = "/vohoc")
	public ModelAndView Vohoc(HttpSession session,@ModelAttribute("vohoc") Vohoc vohoc) {
		ModelAndView mv = new ModelAndView("user/vohoc");
		mv.addObject("vohoc", homekethua.GetDataVohoc());
		return mv;
	}
	

	@RequestMapping(value = "/thieulam")
	public ModelAndView Vohoc1() {
		ModelAndView mv = new ModelAndView("monphai/thieulam");
		return mv;
	}

	@RequestMapping(value = "/caibang")
	public ModelAndView Vohoc2() {
		ModelAndView mv = new ModelAndView("monphai/caibang");
		return mv;
	}

	@RequestMapping(value = "/vodang")
	public ModelAndView Vohoc3() {
		ModelAndView mv = new ModelAndView("monphai/vodang");
		return mv;
	}

	@RequestMapping(value = "/ngami")
	public ModelAndView Vohoc4() {
		ModelAndView mv = new ModelAndView("monphai/ngami");
		return mv;
	}

	@RequestMapping(value = "/quantuduong")
	public ModelAndView Vohoc5() {
		ModelAndView mv = new ModelAndView("monphai/quantuduong");
		return mv;
	}

	@RequestMapping(value = "/duongmon")
	public ModelAndView Vohoc6() {
		ModelAndView mv = new ModelAndView("monphai/duongmon");
		return mv;
	}

	@RequestMapping(value = "/camyve")
	public ModelAndView Vohoc7() {
		ModelAndView mv = new ModelAndView("monphai/camyve");
		return mv;
	}

	@RequestMapping(value = "/cuclaccoc")
	public ModelAndView Vohoc8() {
		ModelAndView mv = new ModelAndView("monphai/cuclaccoc");
		return mv;
	}

	@RequestMapping(value = "/minhgiao")
	public ModelAndView Vohoc9() {
		ModelAndView mv = new ModelAndView("monphai/minhgiao");
		return mv;
	}

	@RequestMapping(value = "/tugiatrang")
	public ModelAndView Vohoc10() {
		ModelAndView mv = new ModelAndView("monphai/tugiatrang");
		return mv;
	}

	@RequestMapping(value = "/kimchamthamgia")
	public ModelAndView Vohoc11() {
		ModelAndView mv = new ModelAndView("monphai/kimchamthamgia");
		return mv;
	}

	@RequestMapping(value = "/vocanmon")
	public ModelAndView Vohoc12() {
		ModelAndView mv = new ModelAndView("monphai/vocanmon");
		return mv;
	}

	@RequestMapping(value = "/dihoacung")
	public ModelAndView Vohoc13() {
		ModelAndView mv = new ModelAndView("monphai/dihoacung");
		return mv;
	}

	@RequestMapping(value = "/datma")
	public ModelAndView Vohoc23() {
		ModelAndView mv = new ModelAndView("monphai/datma");
		return mv;
	}

	@RequestMapping(value = "/vanthusontrang")
	public ModelAndView Vohoc24() {
		ModelAndView mv = new ModelAndView("monphai/vanthusontrang");
		return mv;
	}

	@RequestMapping(value = "/daohoadao")
	public ModelAndView Vohoc14() {
		ModelAndView mv = new ModelAndView("monphai/daohoadao");
		return mv;
	}

	@RequestMapping(value = "/vomonphai")
	public ModelAndView Vohoc15() {
		ModelAndView mv = new ModelAndView("monphai/vomonphai");
		return mv;
	}

	@RequestMapping(value = "/hoason")
	public ModelAndView Vohoc16() {
		ModelAndView mv = new ModelAndView("monphai/hoason");
		return mv;
	}

	@RequestMapping(value = "/como")
	public ModelAndView Vohoc17() {
		ModelAndView mv = new ModelAndView("monphai/como");
		return mv;
	}

	@RequestMapping(value = "/huyetdaomon")
	public ModelAndView Vohoc18() {
		ModelAndView mv = new ModelAndView("monphai/huyetdaomon");
		return mv;
	}

	@RequestMapping(value = "/thanthuycung")
	public ModelAndView Vohoc19() {
		ModelAndView mv = new ModelAndView("monphai/thanthuycung");
		return mv;
	}

	@RequestMapping(value = "/truongphongtieucuc")
	public ModelAndView Vohoc20() {
		ModelAndView mv = new ModelAndView("monphai/truongphongtieucuc");
		return mv;
	}

	@RequestMapping(value = "/ngutiengiao")
	public ModelAndView Vohoc21() {
		ModelAndView mv = new ModelAndView("monphai/ngutiengiao");
		return mv;
	}

	@RequestMapping(value = "/niemlaba")
	public ModelAndView Vohoc22() {
		ModelAndView mv = new ModelAndView("monphai/niemlaba");
		return mv;
	}

	@RequestMapping(value = "/luongnghikiemphap")
	public ModelAndView aa() {
		ModelAndView mv = new ModelAndView("vohoc/luongnghikiemphap");
		return mv;
	}

}
