package Resign.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class test {
@RequestMapping(value = {"/", "/download"})
public ModelAndView Download()
{
	ModelAndView cv = new ModelAndView("user/downlad");
	return cv;
}
}
