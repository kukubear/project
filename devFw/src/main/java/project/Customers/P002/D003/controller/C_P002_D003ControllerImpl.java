package project.Customers.P002.D003.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller("C_P002_D003Controller")
public class C_P002_D003ControllerImpl implements C_P002_D003Controller{
	private static final Logger Logger = LoggerFactory.getLogger(C_P002_D003ControllerImpl.class);
	

	@Override
	@RequestMapping(value = "/mpSellerOrderList.do", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView mypage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ModelAndView mav = new ModelAndView("Customers/p002_d003_mypageSellerOrderList");
		return mav;
	}
}
