package project.Etc.P001.D001.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("E_P001_D001Controller")
public class E_P001_D001ControllerImpl implements E_P001_D001Controller{
	private static final Logger Logger = LoggerFactory.getLogger(E_P001_D001ControllerImpl.class);
	
	@Override
	@RequestMapping(value = "/detaildesc.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView detaildesc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView("Etc/p001_d001_detail");
		return mav;
	}
}

